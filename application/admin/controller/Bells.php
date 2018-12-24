<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
class Bells extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public function index(){
        $map = '';
        if($_SESSION['think']['auth_id'] != 1 ){
            $map['a.son_id'] = $_SESSION['think']['auth_id'];
        }
        $list = db('bells')
            ->alias('a')
            ->join('admin_user b','a.son_id = b.id','left')
            ->join('bells_list c','a.id = c.bells_id','left')
            ->join('set_mail d','c.mail_id = d.id','left')
            ->where($map)
            ->field('a.id,a.son_id,a.createtime,b.realname,count(c.id) as num,sum(c.money) as money')
            ->group('a.id')
            ->order('a.createtime desc')
            -> paginate(10, false, ['query' => $this->request->get()]);

        $this-> view -> assign('list', $list);
        $this-> view -> assign("page", $list -> render());
        return $this->view->fetch();
    }

    public function order_list(){
        $map = '';
        $map['a.bells_id'] = $this->request->param('id');

        $list = db('bells_list')
            ->alias('a')
            ->join('user b','a.user_id = b.id','left')
            ->join('teacher c','a.teacher_id = c.id','left')
            ->join('set_mail d','a.mail_id = d.id','left')
            ->field('a.id,a.son_id,a.user_id,a.teacher_id,a.mail_id,a.state,b.username,b.mobile,c.name as
            teachername,d.name as mailname,d.price,d.lengthtime,a.record,a.starttime,a.money')
            ->where($map)
            ->order('id desc')
            -> paginate(10, false, ['query' => $this->request->get()]);

        $this-> view -> assign('list', $list);
        $this-> view -> assign("page", $list -> render());
        return $this->view->fetch();
    }

    public function jie(){
        $id  = $this->request->get('id');
        $uid =  $this->request->get('uid');
        $money =  $this->request->get('money');

        $data = $this->request->post();
        $where['type'] = '2';
        $where['state'] = '1';
        $where['consume'] = array('elt',$money);
        $list = db('activ')->where($where)->order('consume desc')->field('discount')->find();

        $money = $money - $list['discount'];

        if($money < 0 ){
            $money = 0;
        }else{
            $money = (int)$money;
        }

        //比较能否扣款
        $result = Db::query('call amount(:_id,:_money,:_uid)',['_id'=>$id,'_money'=>$money,'_uid'=>$uid]);

        if($result[0][0]['@state'] == 1){
            echo '1';
        }else{
           echo '2';
        }
    }
    //非会员结账直接修改订单状态
    public function fjie(){
        $id  = $this->request->get('id');
        $uid =  $this->request->get('uid');
        $money =  $this->request->get('money');
        $data['state'] = '0';
        db('bells_list')->where('id',$id)->update($data);
        echo '1';
    }

    public function add(){

        if ($this->request->isAjax()) {
            $po = $this->request->post();
            $money = 0;
            $result = Db::query('call sl_user(:_mobile)',['_mobile'=>$po['mobile']]);
            if($result[0][0]['@id'] == null){
                if($po['type'] == 1){
                    return ajax_return_adv_error("会员不存在");
                    exit;
                }else{
                    $data['user_id'] = '';
                }
            }else{
                $data['user_id'] = $result[0][0]['@id'];
            }
                $data['teacher_id']  = $po['teacher_id'];

               //拆分套餐id和套餐价格
                if($po['mail_id']){
                    $mail_id = explode("/",$po['mail_id']);
                    $money = $money +  $mail_id[1];
                    $data['mail_id']  = $mail_id[0];
                }else{
                    $data['mail_id']  = '';
                }
                $data['starttime']  = time();

                if(isset($po['com_id'])){
                    $com_id = '';
                    foreach($po['com_id'] as $k=>$v){
                        $com = explode('/',$v);
                        $money = $money +  $com[1];
                        $com_id =  $com_id.','.$com[0];
                    }
                    $data['com_id'] = $com_id;
                }else{
                    $data['com_id']  = ',';
                }
                $data['money']  =  $money;
                $time = strtotime($po['date']);
                //获取当天的0点和24点
                $dateStr = date('Y-m-d', $time);
                $starttime = strtotime($dateStr);
                $endtime = strtotime($dateStr) + 86400;
                //判断当天有没有创建订单
            $bellsid = Db::query('call sl_bells_id(:_starttime,:_endtime,:_son_id)',['_starttime'=>$starttime,
                '_endtime'=>$endtime,'_son_id'=>$_SESSION['think']['auth_id']]);

                //选择列表的id
                if($bellsid[0][0]['@id'] == null){
                    //没有则插入
                    $da['createtime'] = $time;
                    $da['son_id'] = $_SESSION['think']['auth_id'];
                    $bid = db('bells')->insertGetId($da);
                    $data['bells_id'] =  $bid;
                }else{
                    $data['bells_id'] =  $bellsid[0][0]['@id'];
                }
                db('bells_list')->data($data)->insert();
            return ajax_return_adv("添加成功");
        }else{
            //载入技师
            $teacher = db('teacher')->where('son_id',$_SESSION['think']['auth_id'])->select();
            //载入套餐
            $mail = db('set_mail')->select();
            //载入其他服务
            $com = db('combination')->select();
            $this->view->assign('teacher',$teacher);
            $this->view->assign('mail',$mail);
            $this->view->assign('com',$com);
            return $this->view->fetch();
        }
    }


    public function addclock(){
        if ($this->request->isAjax()) {
            $po = $this->request->post();
            $money = 0;
            $result = Db::query('call sl_user(:_mobile)',['_mobile'=>$po['mobile']]);
            if($result[0][0]['@id'] == null){
                if($po['type'] == 1){
                    return ajax_return_adv_error("会员不存在");
                    exit;
                }else{
                    $data['user_id'] = '';
                }
            }else{
                $data['user_id'] = $result[0][0]['@id'];
            }
            $data['teacher_id']  = $po['teacher_id'];
            //拆分套餐id和套餐价格
            if($po['mail_id']){
                $mail_id = explode("/",$po['mail_id']);
                $money = $money +  $mail_id[1];
                $data['mail_id']  = $mail_id[0];
            }else{
                $data['mail_id']  = '';
            }
            $data['starttime']  = time();

            if(isset($po['com_id'])){
                $com_id = '';
                foreach($po['com_id'] as $k=>$v){
                    $com = explode('/',$v);
                    $money = $money +  $com[1];
                    $com_id =  $com_id.','.$com[0];
                }
                $data['com_id'] = $com_id;
            }else{
                $data['com_id']  = ',';
            }
            $data['money']  =  $money;
            $time = strtotime($po['date']);
            //获取当天的0点和24点
            $dateStr = date('Y-m-d', time());
            $starttime = strtotime($dateStr);
            $endtime = strtotime($dateStr) + 86400;
            if($time < $starttime || $time > $endtime){
                return ajax_return_adv_error("只能选择今天的时间");
                exit;
            }
            //判断当天有没有创建订单
            $bellsid = Db::query('call sl_bells_id(:_starttime,:_endtime,:_son_id)',['_starttime'=>$starttime,
                '_endtime'=>$endtime,'_son_id'=>$_SESSION['think']['auth_id']]);

            //选择列表的id
            if($bellsid[0][0]['@id'] == null){
                //没有则插入
                $da['createtime'] = $time;
                $da['son_id'] = $_SESSION['think']['auth_id'];
                $bid = db('bells')->insertGetId($da);
                $data['bells_id'] =  $bid;
            }else{
                $data['bells_id'] =  $bellsid[0][0]['@id'];
            }
            db('bells_list')->insert($data);
            return ajax_return_adv("添加成功");
        }else{
            //载入技师
            $teacher = db('teacher')->where('son_id',$_SESSION['think']['auth_id'])->select();
            //载入套餐
            $mail = db('set_mail')->select();
            $com = db('combination')->select();
            $this->view->assign('teacher',$teacher);
            $this->view->assign('mail',$mail);
            $this->view->assign('com',$com);
            return $this->view->fetch();
        }
    }

    public function lockedit(){
        if ($this->request->isAjax()) {
            $po = $this->request->post();
            $money = 0;
            $data['teacher_id']  = $po['teacher_id'];
            //拆分套餐id和套餐价格
            if($po['mail_id']){
                $mail_id = explode("/",$po['mail_id']);
                $money = $money +  $mail_id[1];
                $data['mail_id']  = $mail_id[0];
            }else{
                $data['mail_id']  = '';
            }
            $data['starttime']  = time();

            if(isset($po['com_id'])){
                $com_id = '';
                foreach($po['com_id'] as $k=>$v){
                    $com = explode('/',$v);
                    $money = $money +  $com[1];
                    $com_id =  $com_id.','.$com[0];
                }
                $data['com_id'] = $com_id;
            }else{
                $data['com_id']  = ',';
            }
            $data['money']  =  $money;
            //判断当天有没有创建订单

            db('bells_list')->where('id',$this->request->param('id'))->data($data)->update();
            return ajax_return_adv("添加成功");

        }else{
            $id = $this->request->param('id');
            $data = db('bells_list')->where('id',$id)->find();
            //载入技师
            $teacher = db('teacher')->where('son_id',$_SESSION['think']['auth_id'])->select();
            //载入套餐
            $mail = db('set_mail')->select();
            $com = db('combination')->select();
            $this->view->assign('teacher',$teacher);
            $this->view->assign('mail',$mail);
            $this->view->assign('com',$com);
            $this->view->assign('data',$data);
            return $this->view->fetch();
        }
    }
    
}
