<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Activ extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public function index(){
        $list = db('activ')->paginate(10, false, ['query' => $this->request->get()]);
        $this-> view -> assign('list', $list);
        $this-> view -> assign("page", $list -> render());
        return $this->view->fetch();

    }
    //添加
    public function add()
    {
        $controller = $this->request->controller();

        if ($this->request->isAjax()) {
            $po = $this->request->post();
            db('activ')->data($po)->insert();
            return ajax_return_adv('添加成功');
        } else {
            // 添加
            return $this->view->fetch();
        }
    }

    //xiugai


}
