<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	



<title>ThinkOX</title>
    
<!-- 为了让html5shiv生效，请将所有的CSS都添加到此处 -->
<link href="${pageContext.request.contextPath }/css/bbs/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/bbs/jquery.qtip.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/bbs/toastr.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/bbs/oneplus.css" rel="stylesheet" type="text/css" />



<!-- 增强IE兼容性 -->
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]><!-->
<script src="${pageContext.request.contextPath }/js/bbs/html5shiv.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/respond.js" type="text/javascript"></script>
<!--<!--[endif]-->

<!-- jQuery -->
<!--[if lt IE 9]><!-->
<script src="${pageContext.request.contextPath }/js/bbs/jquery-1.10.2.min.js" type="text/javascript"></script>
<!--<!--[endif]-->
<!--[if gte IE 9]><!-->
<script src="${pageContext.request.contextPath }/js/bbs/jquery-2.0.3.min.js" type="text/javascript"></script>
<!--<![endif]-->

<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/js/bbs/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/jquery.qtip.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/toastr.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/jquery.iframe-transport.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/bbs/core.js" type="text/javascript"></script>



<script>
    //全局内容的定义
    var _ROOT_ = "/bbs_";
    var MID = "0";
    var MODULE_NAME="Home";
</script>

</head><body><audio id="music" src="" autoplay="autoplay"></audio>




	<!-- 头部 -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">

<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-logo" href="http://localhost/bbs_/index.php?s=/Home/Index/index.html">
        <img src="./login_files/oneplus-logo.png" style="width: 150px;">
    </a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav" style="font-size: 18px">
         <!--导航栏菜单项-->
        
                <li class="">
                    <a href="#" target="_self">首页</a>
                </li>

                
                <li class="">
                    <a href="#" target="_self">论坛</a>
                </li>

                
                <li class="">
                    <a href="#" target="_self">个人主页</a>
                </li>

                
                <li class="">
                    <a href="#" target="_self">待定</a>
                </li>

                    </ul>
    <ul class="nav navbar-nav navbar-right">
        <!--登录注册-->
                <li class="dropdown op_nav_ico hidden-xs hidden-sm">
                <div></div>
                <a id="nav_info" class="dropdown-toggle text-left" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-bullhorn"></span>
                    <span id="nav_bandage_count" class="badge pull-right">1</span>
                    &nbsp;
                </a>
                <ul class="dropdown-menu extended notification" style="">
                    <li style="padding-left: 15px;padding-right: 15px;">
                        <div class="row nav_info_center">
                            <div class="col-xs-9 nav_align_left"><span id="nav_hint_count">1</span> 条未读
                            </div>
                            <div class="col-xs-3"><i onclick="setAllReaded()" class="set_read glyphicon glyphicon-ok" title="全部标为已读"></i></div>
                        </div>
                    </li>
                    <li>
                        <div style="position: relative;width: auto;overflow: hidden;max-height: 250px ">
                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 150px;"><ul id="nav_message" class="dropdown-menu-list scroller " style="width: auto; overflow: hidden; height: 150px;">
                                                                    <li>
                                            <a data-url="/bbs_/index.php?s=/Usercenter/Message/message.html" onclick="readMessage(this,206)">
                                                <i class="glyphicon glyphicon-bell"></i>
                                                头衔颁发                                            <span class="time">
                                            2016-12-30 16:36                                            </span>
                                            </a>
                                        </li>
                            </ul><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                        </div>

                    </li>
                    <li class="external">
                        <a href="http://localhost/bbs_/index.php?s=/Usercenter/Message/message.html">
                            查看全部 <i class="glyphicon glyphicon-circle-arrow-right" style="background: none;color: rgb(72,184,122)"></i>
                        </a>
                    </li>
                </ul>

            </li>


            <li class="dropdown">
                                <a role="button" class="dropdown-toggle dropdown-toggle-avatar" data-toggle="dropdown">
                    <img src="./帖子详细_files/58622000600d7-4d971fd3_64_64.jpg" class="navbar-avatar-img">
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index.html"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;个人中心</a>
                    </li>
                                        <li><a event-node="logout"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;注销</a>
                    </li>
                </ul>
            </li>
                </ul>
</div>

<div class="friend_panel visible-md visible-lg" style="display: none">
        <a class="btn-pull" onclick="$(&#39;#right_panel_main&#39;).toggle();"><i class="glyphicon glyphicon-chevron-left"></i>&nbsp;
        </a>
        
        <div id="right_panel_main" style="display: none">
            <!--开始会话板-->

            <div id="session_panel_main">
            <h2>会话<!--( 0 )--></h2>

            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 430px;"><div id="scrollArea_session" class="row " style="overflow: hidden; width: auto; height: 430px;">
                <div id="scrollContainer_session">
                    <ul class="friend_list">
                                            </ul>
                </div>
            </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 430px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
            <div class="session_more">
                <a title="会话面板" onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()" class="btn_session_more col-md-6 active"><i class="glyphicon glyphicon-send"></i>
                </a>
                <a title="好友面板" onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()" class="btn_session_more col-md-6"><i class="glyphicon glyphicon-user"></i>
                </a>
            </div>

            <script>
                $('#scrollArea_session').slimScroll({
                    height: '430px',
                    alwaysVisible: true,
                    start: 'bottom'
                });
                var last_toast_talk_message_time="1483694996";//最后提示会话消息的时间
            </script>
            <!--结束会话版-->
        </div>

        <!--开始好友板-->
        <div id="friend_panel_main" style="display: none">
                        <h2>好友( 1 )</h2>

            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 430px;"><div id="scrollArea_friend" class="row " style="overflow: hidden; width: auto; height: 430px;">
                <div id="scrollContainer_friend">
                    <ul class="friend_list">
                                                    <li id="friends_li_">
                                <div class="row">
                                    <div class="col-md-6">
                                        <a target="_blank" title=" a542913513" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html">
                                            <img src="./帖子详细_files/default_64_64.jpg" class="avatar-img" style="width: 45px;">
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div>
                                            <a class="text-center" style="width: 100%" target="_blank" title=" a542913513" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html">
                                                a542913513                                            </a>
                                        </div>
                                        <div>
                                            <a onclick="start_talk(6)"><i title="发起新会话" class="glyphicon glyphicon-send"></i></a>
                                        </div>
                                    </div>
                                </div>

                            </li>                    </ul>
                </div>
            </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 430px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
            <script>
                $('#scrollArea_friend').slimScroll({
                    height: '430px',
                    alwaysVisible: true,
                    start: 'bottom'
                });
            </script>

            <div class="session_more">
                <a title="会话面板" onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()" class="btn_session_more col-md-6"><i class="glyphicon glyphicon-send"></i>
                </a>
                <a title="好友面板" onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()" class="btn_session_more col-md-6 active"><i class="glyphicon glyphicon-user"></i>
                </a>
            </div>
        </div>
        <!--结束会话版-->


    </div>


    </div>


    </div>
    <div id="chat_box" style="display: none" class="chat_panel">
        <div class="panel_title"><img id="chat_ico" class="chat_avatar avatar-img" src="./帖子详细_files/default_64_64.jpg">

            <div id="chat_title" class="title pull-left text-more"></div>
            <div class="control_btns pull-right"><a><i onclick="$(&#39;#chat_box&#39;).hide();" class="glyphicon glyphicon-minus"></i></a><!-- <a
                ><i class="glyphicon glyphicon-off"></i></a>--></div>
        </div>
        <div class="row talk-body ">
            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 320px;"><div id="scrollArea_chat" class="row " style="overflow: hidden; width: auto; height: 320px;">
                <div id="scrollContainer_chat">
                </div>
            </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 320px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>

        </div>

        <div class="send_box">
            <input id="chat_id" type="hidden" value="0">
            <script>
                var myhead = "";
            </script>
            <textarea id="chat_content" class="form-control"></textarea>
        </div>
        <div class="row">
            <div class="col-md-6">
                <button class=" btn btn-danger" onclick="chat_exit()" style="margin: 10px 10px" title="退出会话"><i class="glyphicon glyphicon-off"></i>
                </button>
              <!--  <button class=" btn btn-success" onclick="chat_exit()"
                        style="margin: 10px 10px" title="邀请好友"><i class="glyphicon glyphicon-plus"></i>
                </button>-->

            </div>
            <div class="col-md-6">
                <button class="pull-right btn btn-primary" onclick="chat_postMessage()" style="margin: 10px 10px"> 发送 Ctrl+Enter
                </button>
            </div>
        </div>
    </div></div>

<a id="goTopBtn"></a>

<!-- /头部 -->

<!-- 主体 -->
<div id="main-container" style="min-height: 582px;">
    <header>
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-2">
                <img class="hidden-xs" src="./帖子详细_files/header-rabbit.png">
                <img class="visible-xs" style="width: 100px;padding-top: 32px;" src="./帖子详细_files/header-rabbit.png">
            </div>
            <div class="col-xs-8 col-sm-10">
                <p style="height: 5em;">&nbsp;</p>

                <h3 class="text-success">讨论区</h3>

                <p class="text-muted">一晃眼，我们都将垂垂老去，所以勇敢去做自己想做的事。</p>
            </div>
        </div>
        <div class="row">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                        <ul class="nav navbar-nav">
                            

                            <li class=" "><a href="http://localhost/bbs_/index.php?s=/Forum/Index/forum.html">全部帖子</a>
                            </li>
                                                            <li class="active"><a href="http://localhost/bbs_/index.php?s=/Forum/Index/forum/id/6.html">板块2</a>
                                </li>                                <li class=""><a href="http://localhost/bbs_/index.php?s=/Forum/Index/forum/id/1.html">板块1</a>
                                </li>                        </ul>
                        <form id="frm_search" class="navbar-form navbar-left pull-right" role="search" method="post" action="http://localhost/bbs_/index.php?s=/Forum/Index/search.html">
                            <div class="form-group form-control" style="border-radius: 2em;padding-right: 0;margin-top: 5px;padding-top: 5px;">
                                <input id="search_keywords" type="text" name="keywords" class="" style="border: none;width: 82%;outline: none;" placeholder="输入帖子标题或内容">
                                <i id="sbt_search" style="color: rgb(72,184,122)" class="glyphicon glyphicon-search"></i>
                            </div>
                        </form>
                        <script>
                            $(function () {
                                $('#sbt_search').click(function () {
                                    var d = $('#frm_search').serialize();
                                    $.get("/bbs_/index.php?s=/Forum/Index/search.html", d, function (msg) {

                                    }, 'json');
                                })
                            })
                        </script>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </div>
    </div>
</header>
    
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-xs-12">
                <div class="container-fluid">
                    
<script type="text/javascript" src="./帖子详细_files/jquery.magnific-popup.min.js.下载"></script>
<link type="text/css" rel="stylesheet" href="./帖子详细_files/magnific-popup.css">
    <div class="row">
    <div class="col-xs-12 boxShadow" style="background: white">
                <div class="row">
            <div class="col-xs-6 col-md-8">
                <h4>43534534543</h4>
            </div>
            <div class="col-xs-6 col-md-4">
                <p class="pull-right text-right" style="margin-top: 10px;margin-bottom: 0">

                    <a class="btn btn-default" href="http://localhost/bbs_/index.php?s=/Forum/Index/edit/post_id/33.html">编辑</a>&nbsp;                    <a class="btn btn-default" href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#reply_form">回复</a>&nbsp;
                                    <span style="display: none;" id="unbookmark_button">
                    <a class="btn btn-default" href="http://localhost/bbs_/index.php?s=/Forum/Index/doBookmark/add/0/post_id/33.html">取消收藏</a>&nbsp;
                </span>
                <span style="" id="bookmark_button">
                    <a class="btn btn-default" href="http://localhost/bbs_/index.php?s=/Forum/Index/doBookmark/post_id/33.html">收藏</a>&nbsp;
                </span>
                </p>
            </div>
        </div>

        <hr>

        <div class="row" style="position: relative">

                <div class="ribbion-green">
                    <a>楼主</a></div>
                <div class="col-xs-2">
                    <p>
                        <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="0"><img src="./帖子详细_files/58622000600d7-4d971fd3_128_128.jpg" class="avatar-img"></a>
                    </p>

                    <p class="text-center">
                        <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="1">123456</a>
                        <span class="usercenter-verify-icon-list"></span>                    </p>
                    <p class="text-center">
                        <img src="./帖子详细_files/586618cfc553f.jpg" title="白丁" alt="白丁" class="rank_html">                       </p>
                </div>
                <div class="col-xs-10 post_content">
                    <div style="min-height: 10em;overflow: hidden">

          
                          <div class="popup-gallery"><p>453423v52vbcfc5v32vcv25vc252v</p></div>                        <br>
                                            </div>
                    <p>

                    </p><div class="bdsharebuttonbox bdshare-button-style1-16" data-bd-bind="1483694996701"><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_more" data-cmd="more"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html#" class="bds_copy" data-cmd="copy" title="分享到复制网址"></a></div>
                    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script><p></p><a title="赞一个" class="support_btn" table="post" row="33" uid="5" jump="no"><i style="margin-right: 5px" class="glyphicon glyphicon-thumbs-up"></i><span id="support_Forum_post_33_pos"><span id="support_Forum_post_33">0</span> </span></a>
<script>
    bindSupport();
</script>                     <p class="pull-right text-muted">
                        发表于 2016-12-29 10:49                    </p>

                </div>
            </div>

            <hr>
        
        <div class="row">
            <div class="col-xs-12">
                <pull class="pull-right">
                                    </pull>
            </div>
        </div>

        <br>

        <!--发表回复-->
                    <div class="row">
                <div class="col-xs-2">
                    <p>
                        <a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html" ucard="" data-hasqtip="2"><img src="./帖子详细_files/58622000600d7-4d971fd3_128_128.jpg" class="avatar-img"></a>
                    </p>
                </div>
                <div class="col-xs-10">
                    <div id="reply_block">
                        <form id="reply_form" action="http://localhost/bbs_/index.php?s=/Forum/Index/doReply/post_id/33.html" method="post" class="ajax-form">
                            <h4>发表回复</h4>

                            <p>

                                <link href="./帖子详细_files/umeditor.min.css" type="text/css" rel="stylesheet">

<script type="text/javascript" charset="utf-8" src="./帖子详细_files/umeditor.config.js.下载"></script>

<script type="text/javascript" charset="utf-8" src="./帖子详细_files/umeditor.min.js.下载"></script>
<script type="text/javascript" charset="utf-8" src="./帖子详细_files/zh-cn.js.下载"></script>
<div class="edui-container" style="width: 674px; z-index: 1;"><div class="edui-toolbar"><div class="edui-btn-toolbar" unselectable="on" onmousedown="return false"><div class="edui-btn edui-btn-source" unselectable="on" onmousedown="return false" data-original-title="源代码"> <div unselectable="on" class="edui-icon-source edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn-bold" unselectable="on" onmousedown="return false" data-original-title="加粗"> <div unselectable="on" class="edui-icon-bold edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-italic" unselectable="on" onmousedown="return false" data-original-title="斜体"> <div unselectable="on" class="edui-icon-italic edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-underline" unselectable="on" onmousedown="return false" data-original-title="下划线"> <div unselectable="on" class="edui-icon-underline edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-splitbutton edui-splitbutton-forecolor" unselectable="on" data-original-title="字体颜色"><div class="edui-btn" unselectable="on"><div unselectable="on" class="edui-icon-forecolor edui-icon"></div><div class="edui-splitbutton-color-label"></div></div><div unselectable="on" class="edui-btn edui-dropdown-toggle"><div unselectable="on" class="edui-caret"></div></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-splitbutton edui-splitbutton-backcolor" unselectable="on" data-original-title="背景色"><div class="edui-btn" unselectable="on"><div unselectable="on" class="edui-icon-backcolor edui-icon"></div><div class="edui-splitbutton-color-label"></div></div><div unselectable="on" class="edui-btn edui-dropdown-toggle"><div unselectable="on" class="edui-caret"></div></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn-insertorderedlist" unselectable="on" onmousedown="return false" data-original-title="有序列表"> <div unselectable="on" class="edui-icon-insertorderedlist edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn- edui-btn-name-fontsize edui-combobox" unselectable="on" onmousedown="return false" data-original-title="字号"> <span unselectable="on" onmousedown="return false" class="edui-button-label">16</span><span class="edui-button-spacing"></span><span unselectable="on" onmousedown="return false" class="edui-caret"></span><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn-justifyleft edui-active" unselectable="on" onmousedown="return false" data-original-title="居左对齐"> <div unselectable="on" class="edui-icon-justifyleft edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-justifycenter" unselectable="on" onmousedown="return false" data-original-title="居中对齐"> <div unselectable="on" class="edui-icon-justifycenter edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-justifyright" unselectable="on" onmousedown="return false" data-original-title="居右对齐"> <div unselectable="on" class="edui-icon-justifyright edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn-link" unselectable="on" onmousedown="return false" data-original-title="超链接"> <div unselectable="on" class="edui-icon-link edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-emotion" unselectable="on" onmousedown="return false" data-original-title="表情"> <div unselectable="on" class="edui-icon-emotion edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-image" unselectable="on" onmousedown="return false" data-original-title="图片"> <div unselectable="on" class="edui-icon-image edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-btn edui-btn-video" unselectable="on" onmousedown="return false" data-original-title="视频"> <div unselectable="on" class="edui-icon-video edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div><div class="edui-separator" unselectable="on" onmousedown="return false"></div><div class="edui-btn edui-btn-map" unselectable="on" onmousedown="return false" data-original-title="百度地图"> <div unselectable="on" class="edui-icon-map edui-icon"></div><div class="edui-tooltip" unselectable="on" onmousedown="return false" style="z-index: 2;"><div class="edui-tooltip-arrow" unselectable="on" onmousedown="return false"></div><div class="edui-tooltip-inner" unselectable="on" onmousedown="return false"></div></div></div></div><div class="edui-dialog-container"></div></div><div class="edui-editor-body"><div id="contentEditor" class=" edui-body-container" contenteditable="true" style="width: 654px; min-height: 250px; z-index: 1;"><p><br></p></div></div></div>
<script>
    $(function(){
        var config={};
        var um = UM.getEditor('contentEditor',config);

    })


</script>                            </p>

                            <p class="pull-right">
                                <input type="submit" id="reply_button" class="btn btn-primary" value="发表 Ctrl+Enter">
                            </p>
                        <textarea name="content" id="umeditor_textarea_content" style="display: none;"></textarea></form>
                    </div>
                </div>
            </div>
                </div>
    </div>
    <script type="text/javascript" src="./帖子详细_files/atwho.js.下载"></script>
    <link type="text/css" rel="stylesheet" href="./帖子详细_files/atwho.css">
    <script>
        var SUPPORT_URL="/bbs_/index.php?s=/Home/Addons/execute/_addons/Support/_controller/Support/_action/doSupport.html";
        //点击收藏/取消收藏按钮
        $(function () {

            $('#reply_form').keypress(function (e) {
                if (e.ctrlKey && e.which == 13 || e.which == 10) {
                    $('#reply_button').focus();
                    $("#reply_form").submit();
                }
            });


            atwho_config = {
                at: "@",
                alias:"at",
                data: U('Weibo/Index/atWhoJson'),
                tpl: "<li data-value='@${username}'><img class='avatar-img' style='width:2em;margin-right: 0.6em' src='${avatar32}'/>${username}</li>",
                show_the_at: true,
                search_key: 'search_key',
                start_with_space: false,
                insert_tpl:'${atwho-data-value} '
            };
            var $inputor = $('#contentEditor').atwho(atwho_config);

            bindSupport();
            $('#bookmark_button a, #unbookmark_button a').click(function (e) {
                //取消默认操作
                e.preventDefault();

                //发送AJAX请求
                var button = $(this);
                var href = button.attr('href');
                var originalClass = $(this).attr('class');
                button.attr('class', 'btn btn-default disabled');
                $.post(href, {}, function (a) {
                    button.attr('class', originalClass);
                    if (a.status) {
                        switchButtonVisibility();
                    }
                });

                return false;
            });

            function switchButtonVisibility() {
                switchVisibility('#bookmark_button');
                switchVisibility('#unbookmark_button');
            }

            function switchVisibility(css) {
                var element = $(css);
                if (element.is(':visible')) {
                    element.hide();
                } else {
                    element.show();
                }
            }

            if("" != ""){
                $('#lzl_reply_list_').load(U('Forum/LZL/lzllist&to_f_reply_id=&page=1', '', true), function () {
                    ucard();
                });
            }
        })




        $(document).ready(function() {


            $('.popup-gallery').each(function() { // the containers for all your galleries
                $(this).magnificPopup({
                    delegate: '.popup',
                    type: 'image',
                    tLoading: 'Loading image #%curr%...',
                    mainClass: 'mfp-img-mobile',
                    gallery: {
                        enabled: true,
                        navigateByImgClick: true,
                        preload: [0,1] // Will preload 0 - before current, and 1 after the current image
                    },
                    image: {
                        tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
                        titleSrc: function(item) {
                            /*           return item.el.attr('title') + '<small>by Marsel Van Oosten</small>';*/
                            return '';
                        }
                    }
                });
            });
        });
    </script>
    <style>
        .forum-first-block {
            background: white;
            box-shadow: 0 0 5px rgb(204, 204, 204);
            -moz-box-shadow: 0 0 5px #CCCCCC;
            -khtml-box-shadow: 0 0 5px #CCCCCC;
            margin-top: 15px;
        }
    </style>

                </div>
            </div>
            <div class="col-sm-3 col-xs-12">
                
                
                    <div style="margin-bottom: 20px">
        <a type="button" class="btn btn-large btn-primary btn-block" href="http://localhost/bbs_/index.php?s=/Forum/Index/edit/forum_id/6.html">
            <span class="glyphicon glyphicon-edit"></span>
            发表新帖
        </a>
    </div>
    
<link rel="stylesheet" type="text/css" href="./帖子详细_files/check.css">

<div class=" box1 " id="checkdiv">
    <div class="row">
        <div class="col-xs-3 col-sm-4 col-md-3 col-lg-4 text-center">
            <span style="font-size: 48px;padding: 10px 0 0 10px;" class="glyphicon glyphicon-calendar"></span>
        </div>

        <div class="col-xs-2 hidden-sm hidden-md hidden-lg text-center" style="color: #fff; padding-top: 14px;">
            <div>周五</div>
            <div>01.06</div>
        </div>

        <div class="col-xs-2 col-md-4 col-lg-3 hidden-sm text-center" style="color: #fff; padding-top: 14px;background: transparent">
            <div>DAYS</div>
            <div>5</div>
        </div>

        <div class="col-xs-5 col-sm-8 col-md-5 col-lg-5">
            <br>


            
            <a href="javascript:void(0)" id="checkin" onclick="checkin()" class="btn-sign">签到</a>

                    </div>

    </div>
</div>
<div class="row" style="margin-right: 15px">
    <div class="col-xs-12 col-md-12">
        <div class="sign-wrap" style="display:none" id="checkdetail">

            <i class="arrow-y"></i>

            <div class="sign-box" style="text-align: center">

                <h3 id="checkinfo" style="font-size: 20px">
                                        未签到
                                    </h3>

                <p>
                    连签<span id="con_num">5</span>天，累签<span id="total_num">5</span>天，超100%用户
                </p>

            </div>
        </div>
    </div>
</div>


<script>
    var isshow = 1;
    $(function () {
        var ischeck = "";
        if (ischeck == "1") {
            $('#checkdetail').hover(function () {
                isshow = 2;
            }, function () {
                setTimeout(function () {
                    if (isshow == 1) {
                        $('#checkdetail').hide();
                    }
                    isshow = 1;
                }, 100);
            });

            $('#checkin').hover(function () {
                $('#checkdetail').show();
            }, function () {
                setTimeout(function () {
                    if (isshow == 1) {
                        $('#checkdetail').hide();
                    }
                    isshow = 1;
                }, 100);
            });
        }
    });

    function checkin() {
        $('#checkin').text('已签到');
        $('#checkin').attr('onclick', '');
        $('#checkin').attr('class', 'btn-sign-h');
        $('#checkinfo').text('签到成功');

        $.post("/bbs_/index.php?s=/Home/Addons/execute/_addons/Checkin/_controller/Checkin/_action/check_in.html", {}, function (res) {

                    if (res) {
                        var connum = res;
                        $('#con_num').text(connum);
                        $('#con_num_day').text(connum);
                        //$('#total_num').text(totalnum);
                        $('#checkdetail').hover(function () {
                            isshow = 2;
                        }, function () {
                            setTimeout(function () {
                                if (isshow == 1) {
                                    $('#checkdetail').hide();
                                }
                                isshow = 1;
                            }, 100);
                        });
                        $('#checkin').hover(function () {
                            $('#checkdetail').show();
                        }, function () {
                            setTimeout(function () {
                                if (isshow == 1) {
                                    $('#checkdetail').hide();
                                }
                                isshow = 1;
                            }, 100);
                        });
                    }
                    location.reload();
                }
        )
        ;

    }
</script>

    


                
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(window).resize(function () {
            $("#main-container").css("min-height", $(window).height() - 343);
        }).resize();
    });
</script>
<!-- /主体 -->

<!-- 底部 -->
<!-- 底部
================================================== -->
<p style="height: 10em;">&nbsp;</p>
<div class="footer-jumbotron text-center">
    <div class="row">
        <div class="col-sm-4 col-xs-12">

        </div>
        <div class="col-sm-4 col-xs-12">
 

                       <p>123<br>456<br>789<br></p>
        </div>
        <div class="col-sm-4 col-xs-12">

        </div>
    </div>
</div>
<script type="text/javascript" src="./帖子详细_files/placeholder.js.下载"></script>
        <script>
            $(function(){
                $('input,area').placeholder();
            })
        </script>
<script type="text/javascript">
(function(){
	var ThinkPHP = window.Think = {
		"ROOT"   : "/bbs_", //当前网站地址
		"APP"    : "/bbs_/index.php?s=", //当前项目地址
		"PUBLIC" : "/bbs_/Public", //项目公共目录地址
		"DEEP"   : "/", //PATHINFO分割符
		"MODEL"  : ["3", "", "html"],
		"VAR"    : ["m", "c", "a"]
	}
})();
</script>

 <!-- 用于加载js代码 -->


<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<div class="hidden"><!-- 用于加载统计代码等隐藏元素 -->
    
</div>

<!-- /底部 -->

<div id="atwho-container"><div id="atwho-ground-contentEditor"><div class="atwho-view" id="at-view-at"><ul class="atwho-view-ul"></ul></div></div></div></body></html>