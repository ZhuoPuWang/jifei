<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Combination extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];


    public function index(){
        $list = db('Combination') ->paginate(10, false, ['query' => $this->request->get()]);
        $this-> view -> assign('list', $list);
        $this-> view -> assign("page", $list -> render());
        return $this->view->fetch();
    }

    public function del(){
        $id  = $this->request->get('id');
        $da  =  db('Combination')->where('id',$id)->delete();
        if($da){
            return json_encode(1);
        }else{
            return json_encode(2);
        }
    }
}
