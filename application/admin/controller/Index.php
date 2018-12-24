<?php
/**
 * tpAdmin [a web admin based ThinkPHP5]
 *
 * @author yuan1994 <tianpian0805@gmail.com>
 * @link http://tpadmin.yuan1994.com/
 * @copyright 2016 yuan1994 all rights reserved.
 * @license http://www.apache.org/licenses/LICENSE-2.0
 */

//------------------------
// 管理后台首页
//-------------------------

namespace app\admin\controller;

use app\admin\Controller;
use think\Loader;
use think\Session;
use think\Db;

class Index extends Controller
{

    public function index()
    {
        // 读取数据库模块列表生成菜单项
        $nodes = Loader::model('AdminNode', 'logic')->getMenu();

        // 节点转为树
        $tree_node = list_to_tree($nodes);

        // 显示菜单项
        $menu = [];
        $groups_id = [];
        foreach ($tree_node as $module) {
            if ($module['pid'] == 0 && strtoupper($module['name']) == strtoupper($this->request->module())) {
                if (isset($module['_child'])) {
                    foreach ($module['_child'] as $controller) {
                        $group_id = $controller['group_id'];
                        array_push($groups_id, $group_id);
                        $menu[$group_id][] = $controller;
                    }
                }
            }
        }

        // 获取授权节点分组信息
        $groups_id = array_unique($groups_id);
        if (!$groups_id) {
            exception("没有权限");
        }
        $groups = Db::name("AdminGroup")->where(['id' => ['in', $groups_id], 'status' => "1"])->order("sort asc,id asc")->field('id,name,icon')->select();

        $this->view->assign('groups', $groups);
        $this->view->assign('menu', $menu);

        return $this->view->fetch();
    }

    /**
     * 欢迎页
     * @return mixed
     */
    public function welcome()
    {

        return $this->view->fetch();
    }

    public function getData(){
        for($i=7;$i>=1;$i--){
            $time[$i]['start'] = mktime(0,0,0,date('m'),date('d')-$i,date('Y'));
            $time[$i]['end'] = mktime(0,0,0,date('m'),date('d')-$i,date('Y'));
        }

        $data = array();
        foreach($time as $k=>$v){
            $data[$k]= db('user')->where(array('createtime'=>array('gt'=>$v['start']),'createtime'=>array('lt',
                $v['end'])))->group('id')->count();
            $date[$k] = date('Y-m-d',$v['start']);
        }
        $data_num = array();
        foreach($data as $k=>$v ){
            array_push($data_num,(int)$v);
        }
        $data_name = array();
        foreach($date as $k=>$v ){
            array_push($data_name,$v);
        }
        echo  json_encode(array('num' => $data_num,'name' => $data_name,'utime' => date('Y-h-d H:i:s',time())));
    }

}