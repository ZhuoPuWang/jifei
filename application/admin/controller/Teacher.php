<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Teacher extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public function index(){
        $sonid = $_SESSION['think']['auth_id'];
        $map = '';
        //技师名称
        if ($this->request->param("name")) {
            $map['b.realname'] = ["like", "%" . $this->request->param("realname") . "%"];
        }
        if ($this->request->param("name")) {
            $map['a.name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if($_SESSION['think']['auth_id'] != 1 ){
            $map['a.son_id'] = $_SESSION['think']['auth_id'];
        }
        $list = db('teacher')
            ->alias('a')
            ->join('admin_user b','a.son_id = b.id')
            ->where($map)
            ->field('a.id,a.name,a.age,a.sex,a.createtime,b.realname')
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
            db('teacher')->where('id',$data['id'])->data($data)->update();
            return ajax_return_adv("编辑成功");

            return ajax_return_adv("编辑成功");
        } else {
            // 编辑
            $id = $this->request->param('id');
            $list['sex'] = '0';
            $list = db('teacher')
                ->alias('a')
                ->join('admin_user b','a.son_id = b.id')
				->where('a.id',$id)
                ->field('a.id,a.name,a.age,a.sex,a.createtime,b.realname')
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
                db('teacher')->data($data)->insert();
                return ajax_return_adv("添加成功");
        } else {
            // 编辑
            return $this->view->fetch();
        }
    }

    public function del(){
        $id  = $this->request->get('id');
        $da  =  db('teacher')->where('id',$id)->delete();
        if($da){
            return json_encode(1);
        }else{
            return json_encode(2);
        }
    }
}
