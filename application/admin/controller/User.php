<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class User extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public function index(){
        $sonid = $_SESSION['think']['auth_id'];
        $map = '';
        if ($this->request->param("realname")) {
            $map['b.realname'] = ["like", "%" . $this->request->param("realname") . "%"];
        }
        if ($this->request->param("mobile")) {
            $map['a.mobile'] = ["like", "%" . $this->request->param("mobile") . "%"];
        }
        if($_SESSION['think']['auth_id'] != 1 ){
            $map['a.son_id'] = $_SESSION['think']['auth_id'];
        }
        $list = db('user')
            ->alias('a')
            ->join('admin_user b','a.son_id = b.id')
            ->where($map)
            ->field('a.id,a.username,a.mobile,a.age,a.sex,a.money,a.record,a.createtime,b.realname')
            ->paginate(10, false, ['query' => $this->request->get()]);
        $this-> view -> assign('list', $list);
        $this-> view -> assign("page", $list -> render());
        return $this->view->fetch();
    }


    public function edit()
    {

        if ($this->request->isAjax()) {
            // 更新
            $data = $this->request->post();
            db('user')->where('id',$data['id'])->data($data)->update();
            return ajax_return_adv("编辑成功");

        } else {
            // 编辑
            $id = $this->request->param('id');
            $list['sex'] = '0';
            $list = db('user')
                ->alias('a')
                ->join('admin_user b','a.son_id = b.id')
                ->where(array('a.id'=>$id))
                ->field('a.id,a.username,a.mobile,a.age,a.sex,a.money,a.record,a.createtime,b.realname')
                ->find();
            $this->view->assign('vo',$list);
            return $this->view->fetch();
        }
    }

    public function add(){
        if ($this->request->isAjax()) {
            // 更新
            $data = $this->request->post();
            $data['son_id'] = $_SESSION['think']['auth_id'];
            $data['createtime'] = time();
            //判断手机号有没有被注册
            $result = Db::query('call sl_user(:_mobile)',['_mobile'=>$data['mobile']]);
            if($result[0][0]['@id'] != null){
                return ajax_return_adv_error("用户已经存在");
                exit;
            }else{
                db('user')->data($data)->insert();
                return ajax_return_adv("添加成功");
            }
        } else {
            // 编辑
            return $this->view->fetch();
        }
    }

    public function del(){
        $id  = $this->request->get('id');
        $da  =  db('User')->where('id',$id)->delete();
        if($da){
            return json_encode(1);
        }else{
            return json_encode(2);
        }
    }


    public function Recharge(){
        if($this->request->isAjax()){
            $data = $this->request->post();
            $where['type'] = '1';
            $where['state'] = '1';
            $where['consume'] = array('elt',$data['money']);
            $list = db('activ')->where($where)->order('consume desc')->field('discount')->find();
            $money = $data['money']+ $list['discount'];
            db('user')->where('id',$data['id'])->setInc('money',$money);
            return ajax_return_adv("充值成功");
        }else{
            $id = $this->request->param('id');
            $user  =db('user')->where('id',$id)->field('id,username')->find();
            $this->view->assign('vo',$user);
            return $this->view->fetch();
        }
    }


}
