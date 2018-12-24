<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:88:"D:\phpStudy\PHPTutorial\WWW\jifei\public/../application/admin\view\bells\order_list.html";i:1540617865;s:85:"D:\phpStudy\PHPTutorial\WWW\jifei\public/../application/admin\view\template\base.html";i:1540375638;s:96:"D:\phpStudy\PHPTutorial\WWW\jifei\public/../application/admin\view\template\javascript_vars.html";i:1488957233;}*/ ?>
﻿<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title>计费管理系统</title>
    <link rel="Bookmark" href="__ROOT__/favicon.ico" >
    <link rel="Shortcut Icon" href="__ROOT__/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="__LIB__/html5.js"></script>
    <script type="text/javascript" src="__LIB__/respond.min.js"></script>
    <script type="text/javascript" src="__LIB__/PIE_IE678.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/Hui-iconfont/1.0.7/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/icheck/icheck.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/css/app.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/icheck/icheck.css"/>
    
    <!--[if IE 6]>
    <script type="text/javascript" src="__LIB__/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--定义JavaScript常量-->
<script>
    window.THINK_ROOT = '<?php echo \think\Request::instance()->root(); ?>';
    window.THINK_MODULE = '<?php echo \think\Url::build("/" . \think\Request::instance()->module(), "", false); ?>';
    window.THINK_CONTROLLER = '<?php echo \think\Url::build("___", "", false); ?>'.replace('/___', '');
</script>
</head>
<body>

<nav class="breadcrumb">
    <div id="nav-title"></div>
    <a class="btn btn-success radius r btn-refresh" style="line-height:1.6em;margin-top:3px" href="javascript:;" title="刷新"><i class="Hui-iconfont"></i></a>
</nav>


<div class="page-container">
    <table class="table table-border table-bordered table-hover table-bg mt-20">
        <thead>
        <tr class="text-c">
            <th width="">用户姓名</th>
            <th width="">手机号</th>
            <th width="">技师</th>
            <th width="">套餐</th>
            <th width="">上钟时间</th>
            <th width="">套餐时长(分)</th>
            <th width="">价格(元)</th>
            <th width="">状态</th>
            <th width="70">操作</th>
        </tr>
        </thead>
        <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        <tr class="text-c">
            <td><?php echo isset($vo['username']) ? $vo['username'] :  '散户订单'; ?></td>
            <td><?php echo isset($vo['mobile']) ? $vo['mobile'] :  '散户订单'; ?></td>
            <td><?php echo $vo['teachername']; ?></td>
            <td><?php echo $vo['mailname']; ?></td>
            <td><?php echo date('Y-m-d H:i:s',$vo['starttime']); ?></td>
            <td><?php echo $vo['lengthtime']; ?></td>
            <td>￥<?php echo $vo['money']; ?></td>
            <td><?php if($vo['state'] == 0): ?><i style="color: green">已完成</i><?php else: ?><i style="color: red">未完成</i><?php endif; ?></td>
            <td class="f-14" style="width: 10%">
                <a href="javascript:;" onclick="layer_open('修改订单','<?php echo url('lockedit',array('id'=>$vo['id'])); ?>');" class="btn btn-success radius"> 修改</a>
                <a href="javascript:;" onclick="jie(this)" name="<?php echo $vo['id']; ?>" data="<?php echo $vo['user_id']; ?>" dd ="<?php echo $vo['money']; ?>" class="btn btn-success radius"> 结账</a>
                <a href="javascript:;" onclick="fjie(this)" name="<?php echo $vo['id']; ?>" data="<?php echo $vo['user_id']; ?>" dd ="<?php echo $vo['money']; ?>" class="btn btn-success radius"> 非会员结账</a>
            </td>
        </tr>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
    <div class="page-bootstrap"><?php echo isset($page) ? $page :  ''; ?></div>
</div>

<script type="text/javascript" src="__LIB__/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="__LIB__/layer/2.4/layer.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="__STATIC__/js/app.js"></script>
<script type="text/javascript" src="__LIB__/icheck/jquery.icheck.min.js"></script>

<script>
    function jie(even){
        var id = $(even).attr('name');
        var uid = $(even).attr('data');
        var money = $(even).attr('dd');
        var loading = layer.load(3, {shade: [0.8, '#393D49']});
        layer.confirm('确定结款？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $.ajax({
                url:"<?php echo url('jie'); ?>",
                type:'get',
                dataType:'json',
                data:{
                    id:id,
                    uid:uid,
                    money:money
                },
                success:function(msg){
                    console.log(msg);
                    if(msg ==1){
                        layer.close(loading);
                        layer.msg('结款成功', {icon: 1,time:2000});
                        window.location.reload();
                    }else{
                        layer.close(loading);
                        layer.msg('结款失败', {icon: 2,time:2000});
                    }
                },
                error:function(err){
                    alert('网络连接错误');
                    window.location.reload();
                }
            });
        }, function(){
            layer.close(loading);
        });
    }
    function fjie(even){
        var id = $(even).attr('name');
        var uid = $(even).attr('data');
        var money = $(even).attr('dd');
        var loading = layer.load(3, {shade: [0.8, '#393D49']});
        layer.confirm('确定结款？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $.ajax({
                url:"<?php echo url('fjie'); ?>",
                type:'get',
                dataType:'json',
                data:{
                    id:id,
                    uid:uid,
                    money:money
                },
                success:function(msg){
                    console.log(msg);
                    if(msg ==1){
                        layer.close(loading);
                        layer.msg('结款成功', {icon: 1,time:2000});
                        window.location.reload();
                    }else{
                        layer.close(loading);
                        layer.msg('结款失败', {icon: 2,time:2000});
                    }
                },
                error:function(err){
                    alert('网络连接错误');
                    window.location.reload();
                }
            });
        }, function(){
            layer.close(loading);
        });
    }

</script>

</body>
</html>