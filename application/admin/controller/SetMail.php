<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class SetMail extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public function del(){
        $id  = $this->request->get('id');
        $da  =  db('set_mail')->where('id',$id)->delete();
        if($da){
            return json_encode(1);
        }else{
            return json_encode(2);
        }
    }
}
