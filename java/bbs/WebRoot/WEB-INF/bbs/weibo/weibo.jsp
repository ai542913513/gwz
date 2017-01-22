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
                    <img src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" class="navbar-avatar-img">
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
                var last_toast_talk_message_time="1483693074";//最后提示会话消息的时间
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
                                            <img src="./weibo_files/default_64_64.jpg" class="avatar-img" style="width: 45px;">
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
        <div class="panel_title"><img id="chat_ico" class="chat_avatar avatar-img" src="./weibo_files/default_64_64.jpg">

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
                var myhead = "http://localhost/bbs_/Uploads/Avatar/2016-12-27/58622000600d7-4d971fd3_128_128.jpg";
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

<a id="goTopBtn" style="display: none;"></a>

	<!-- /头部 -->
	
	<!-- 主体 -->
	
<div id="main-container" class="container" style="min-height: 582px;">
    <div class="row">
        


        
    <div class="col-xs-12">
        <div class="row">
            <div class="col-md-9 col-sm-8 col-xs-12 weibo_main">
                <div class="row">
                    <div class="col-xs-12">
                        <br>

                        <p>记录，就是一种态度！</p>

                        <p><textarea class="form-control" id="weibo_content" style="height: 6em;" placeholder="写点什么吧～～"></textarea></p>
                        <a href="javascript:" onclick="insertFace($(this))"><img src="./weibo_files/bq.png"></a>

                        <script src="./weibo_files/insertImage.js.下载"></script>
<link type="text/css" rel="stylesheet" href="./weibo_files/insertImage.css">

<a href="javascript:" id="insert_image" onclick="insert_image.insertImage($(this))"><img src="./weibo_files/image.png"></a>
<input type="hidden" id="box_url" value="/bbs_/index.php?s=/Home/Addons/execute/_addons/InsertImage/_controller/InsertImage/_action/imageBox.html">

        <!--
<a href="javascript:" onclick="insert_image.insertImage($(this))"><span class="glyphicon glyphicon-picture" ></span></a>-->                        <p class="pull-right"><input type="submit" value="发表 Ctrl+Enter" id="send_weibo_button" class="btn btn-primary" data-url="/bbs_/index.php?s=/Weibo/Index/doSend.html"></p>
                    </div>
                </div>
                <div id="emot_content" class="emot_content"></div>
                <div id="hook_show" class="emot_content"></div>

                <div class="row ad_max">
                    <div class="col-xs-12">
                        <p>
                            <!-- 广告位：微博下方广告位 -->
                            <script>CNZZ_SLOT_RENDER("269575");</script>
                        </p>
                    </div>
                </div>

                <div class="row" style="padding-top: 10px">
                    <div class="col-xs-12">

                        <ul class="nav nav-pills ucenter-tab">
                            <li class="active"><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/index.html">全站动态</a></li>
                            <li><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/myconcerned.html">我关注的</a></li>                        </ul>

                    </div>
                </div>
                <hr>
                <div id="weibo_list">
                    <script type="text/javascript" src="./weibo_files/jquery.magnific-popup.min.js.下载"></script>
<link type="text/css" rel="stylesheet" href="./weibo_files/magnific-popup.css">
<div class="row" style="position: relative">
            </div>

    <div class="row" id="weibo_125">
        <div class="col-xs-12">
            <div class="pull-left">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="8">
                    <img src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" class="avatar-img" style="width: 64px;">
                </a>
            </div>

            <div style="padding-left: 16px; width: 92%;float: left">
                <p>
                    <a ucard="5" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" data-hasqtip="9">123456                    </a>
                    <span class="usercenter-verify-icon-list"></span>                    <img src="./weibo_files/586618cfc553f.jpg" title="白丁" alt="白丁" class="rank_html">                </p>
                <p class="word-wrap">我发表了一个新的帖子【43534534543】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html"></i></a></p>
                <!--                <p class="word-wrap">我发表了一个新的帖子【43534534543】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/33.html"></i></a></p>
                                                            -->

                <p>
                    <!--"/bbs_/index.php?s=/bboard/Index/tmldetail.html"-->
                    <span class="text-primary"><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/weiboDetail/id/125.html">2016-12-29 10:49</a> </span>
                    <span class="pull-right text-primary weibo-comment-link" data-weibo-id="125">
                                                <a title="赞一个" class="support_btn" table="weibo" row="125" uid="5" jump=""><i style="margin-right: 5px" class="glyphicon glyphicon-thumbs-up"></i><span id="support_Weibo_weibo_125_pos"><span id="support_Weibo_weibo_125">0</span> </span></a>
<script>
    bindSupport();
</script>
&nbsp;&nbsp;&nbsp;
<span class="text-primary weibo-comment-del cpointer" data-weibo-id="125">
        <i class="glyphicon glyphicon-trash"></i>
    </span>

&nbsp;&nbsp;&nbsp;

<span class="text-primary weibo-comment-link cpointer" data-weibo-id="125">
    <i class="glyphicon glyphicon-comment" style="margin-right: 5px"></i></span>
                    </span>
                </p>
                <div class="row weibo-comment-list" style="display: none;" data-weibo-id="125">
                    <div class="col-xs-12">
                        <div class="light-jumbotron" style="padding: 1em 2em;">
                            <div class="weibo-comment-container">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr><div class="row" style="position: relative">
            </div>

    <div class="row" id="weibo_124">
        <div class="col-xs-12">
            <div class="pull-left">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="10">
                    <img src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" class="avatar-img" style="width: 64px;">
                </a>
            </div>

            <div style="padding-left: 16px; width: 92%;float: left">
                <p>
                    <a ucard="5" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" data-hasqtip="11">123456                    </a>
                    <span class="usercenter-verify-icon-list"></span>                    <img src="./weibo_files/586618cfc553f.jpg" title="白丁" alt="白丁" class="rank_html">                </p>
                <p class="word-wrap">我发表了一个新的帖子【533452】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/32.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/32.html"></i></a></p>
                <!--                <p class="word-wrap">我发表了一个新的帖子【533452】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/32.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/32.html"></i></a></p>
                                                            -->

                <p>
                    <!--"/bbs_/index.php?s=/bboard/Index/tmldetail.html"-->
                    <span class="text-primary"><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/weiboDetail/id/124.html">2016-12-29 10:48</a> </span>
                    <span class="pull-right text-primary weibo-comment-link" data-weibo-id="124">
                                                <a title="赞一个" class="support_btn" table="weibo" row="124" uid="5" jump=""><i style="margin-right: 5px" class="glyphicon glyphicon-thumbs-up"></i><span id="support_Weibo_weibo_124_pos"><span id="support_Weibo_weibo_124">0</span> </span></a>
<script>
    bindSupport();
</script>
&nbsp;&nbsp;&nbsp;
<span class="text-primary weibo-comment-del cpointer" data-weibo-id="124">
        <i class="glyphicon glyphicon-trash"></i>
    </span>

&nbsp;&nbsp;&nbsp;

<span class="text-primary weibo-comment-link cpointer" data-weibo-id="124">
    <i class="glyphicon glyphicon-comment" style="margin-right: 5px"></i></span>
                    </span>
                </p>
                <div class="row weibo-comment-list" style="display: none;" data-weibo-id="124">
                    <div class="col-xs-12">
                        <div class="light-jumbotron" style="padding: 1em 2em;">
                            <div class="weibo-comment-container">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr><div class="row" style="position: relative">
            </div>

    <div class="row" id="weibo_123">
        <div class="col-xs-12">
            <div class="pull-left">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="12">
                    <img src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" class="avatar-img" style="width: 64px;">
                </a>
            </div>

            <div style="padding-left: 16px; width: 92%;float: left">
                <p>
                    <a ucard="5" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" data-hasqtip="13">123456                    </a>
                    <span class="usercenter-verify-icon-list"></span>                    <img src="./weibo_files/586618cfc553f.jpg" title="白丁" alt="白丁" class="rank_html">                </p>
                <p class="word-wrap">我发表了一个新的帖子【33333】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/31.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/31.html"></i></a></p>
                <!--                <p class="word-wrap">我发表了一个新的帖子【33333】：<a href="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/31.html" target="_blank"><i class="glyphicon glyphicon-link" title="http://localhost/bbs_/index.php?s=/Forum/Index/detail/id/31.html"></i></a></p>
                                                            -->

                <p>
                    <!--"/bbs_/index.php?s=/bboard/Index/tmldetail.html"-->
                    <span class="text-primary"><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/weiboDetail/id/123.html">2016-12-28 17:15</a> </span>
                    <span class="pull-right text-primary weibo-comment-link" data-weibo-id="123">
                                                <a title="赞一个" class="support_btn" table="weibo" row="123" uid="5" jump=""><i style="margin-right: 5px" class="glyphicon glyphicon-thumbs-up"></i><span id="support_Weibo_weibo_123_pos"><span id="support_Weibo_weibo_123">0</span> </span></a>
<script>
    bindSupport();
</script>
&nbsp;&nbsp;&nbsp;
<span class="text-primary weibo-comment-del cpointer" data-weibo-id="123">
        <i class="glyphicon glyphicon-trash"></i>
    </span>

&nbsp;&nbsp;&nbsp;

<span class="text-primary weibo-comment-link cpointer" data-weibo-id="123">
    <i class="glyphicon glyphicon-comment" style="margin-right: 5px"></i></span>
                    </span>
                </p>
                <div class="row weibo-comment-list" style="display: none;" data-weibo-id="123">
                    <div class="col-xs-12">
                        <div class="light-jumbotron" style="padding: 1em 2em;">
                            <div class="weibo-comment-container">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr><div class="row" style="position: relative">
            </div>

    <div class="row" id="weibo_122">
        <div class="col-xs-12">
            <div class="pull-left">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" ucard="5" data-hasqtip="14">
                    <img src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" class="avatar-img" style="width: 64px;">
                </a>
            </div>

            <div style="padding-left: 16px; width: 92%;float: left">
                <p>
                    <a ucard="5" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" data-hasqtip="15">123456                    </a>
                    <span class="usercenter-verify-icon-list"></span>                    <img src="./weibo_files/586618cfc553f.jpg" title="白丁" alt="白丁" class="rank_html">                </p>
                <p class="word-wrap">312312123312</p>
                <!--                <p class="word-wrap">312312123312</p>
                                                            -->

                <p>
                    <!--"/bbs_/index.php?s=/bboard/Index/tmldetail.html"-->
                    <span class="text-primary"><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/weiboDetail/id/122.html">2016-12-27 16:01</a> </span>
                    <span class="pull-right text-primary weibo-comment-link" data-weibo-id="122">
                                                <a title="赞一个" class="support_btn" table="weibo" row="122" uid="5" jump=""><i style="margin-right: 5px" class="glyphicon glyphicon-thumbs-up"></i><span id="support_Weibo_weibo_122_pos"><span id="support_Weibo_weibo_122">0</span> </span></a>
<script>
    bindSupport();
</script>
&nbsp;&nbsp;&nbsp;
<span class="text-primary weibo-comment-del cpointer" data-weibo-id="122">
        <i class="glyphicon glyphicon-trash"></i>
    </span>

&nbsp;&nbsp;&nbsp;

<span class="text-primary weibo-comment-link cpointer" data-weibo-id="122">
    <i class="glyphicon glyphicon-comment" style="margin-right: 5px"></i>1</span>
                    </span>
                </p>
                <div class="row weibo-comment-list" style="display: none;" data-weibo-id="122">
                    <div class="col-xs-12">
                        <div class="light-jumbotron" style="padding: 1em 2em;">
                            <div class="weibo-comment-container">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr>
<script>
    ucard();
    bindSupport();


    $(document).ready(function () {


        $('.popup-gallery').each(function () { // the containers for all your galleries
            $(this).magnificPopup({
                delegate: 'a',
                type: 'image',
                tLoading: 'Loading image #%curr%...',
                mainClass: 'mfp-img-mobile',
                gallery: {
                    enabled: true,
                    navigateByImgClick: true,
                    preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
                },
                image: {
                    tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
                    titleSrc: function (item) {
                        /*           return item.el.attr('title') + '<small>by Marsel Van Oosten</small>';*/
                        return '';
                    }
                }
            });
        });
    });
</script>
                </div>

                <div id="load_more" class="text-center text-muted">
                    <p id="load_more_text">没有了</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-12">
                <p class="visible-xs">
                    <br><br><br>
                </p>

                <div class="hot_post" style="margin-top: 0;padding-bottom: 10px">
                        <div class="row">
                            <div class="col-xs-5">
                                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/changeavatar.html"><img src="./weibo_files/58622000600d7-4d971fd3_128_128.jpg" class="avatar-img"></a>
                            </div>
                            <div class="col-xs-7">
                                <a style="font-size: 1.2em;width: 100%" title="123456" class="text-more" href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html">123456</a>
                                头衔：<span class="usercenter-verify-icon-list"></span>                                <img src="./weibo_files/586618cfc553f.jpg" title="白丁" alt="白丁" style="width: 18px;height: 18px;vertical-align: middle;margin-left: 2px;">                                                                    <br>积分：59                                <br>等级：Lv2 试用                            </div>
                        </div>

                        <div class="row" style="margin: 10px;text-align: center">
                            <div class="col-xs-4">
                                微博<br><a href="http://localhost/bbs_/index.php?s=/Weibo/Index/index/uid/5.html">4</a>
                            </div>
                            <div class="col-xs-4">
                                粉丝<br><a href="http://localhost/bbs_/index.php?s=/Usercenter/Index/fans.html">1</a>
                            </div>
                            <div class="col-xs-4">
                                关注<br><a href="http://localhost/bbs_/index.php?s=/Usercenter/Index/following.html">2</a>
                            </div>
                        </div>
                    </div>                <div>
                    
<link rel="stylesheet" type="text/css" href="./weibo_files/check.css">

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
                    
<link rel="stylesheet" type="text/css" href="./weibo_files/rank.css">
<div class="box" style="margin-top: 10px">
    <div class="titlerank">签到牛人榜</div>
    <div class="default">虚位以待，赶紧签到。</div>
        </div>
<div style="height: 10px"></div>                    <div class="hot_post" style="margin-top: 0">
    <h2>活跃用户</h2>
    <ul class="userList clearfix">
        <li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html"><img ucard="5" class="avatar-img" src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" data-hasqtip="16"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" title="123456" class="text-more" style="width: 100%">123456</a>
            </li><li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/1.html"><img ucard="1" class="avatar-img" src="./weibo_files/default_64_64.jpg" data-hasqtip="17"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/1.html" title="admin" class="text-more" style="width: 100%">admin</a>
            </li><li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html"><img ucard="6" class="avatar-img" src="./weibo_files/default_64_64.jpg" data-hasqtip="18"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html" title="a542913513" class="text-more" style="width: 100%">a542913513</a>
            </li>    </ul>
</div>                    <div class="hot_post" style="margin-top: 0">
    <h2>最新加入</h2>
    <ul class="userList clearfix">
        <li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html"><img ucard="6" class="avatar-img" src="./weibo_files/default_64_64.jpg" data-hasqtip="19"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/6.html" title="a542913513" class="text-more" style="width: 100%">a542913513</a>
            </li><li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html"><img ucard="5" class="avatar-img" src="./weibo_files/58622000600d7-4d971fd3_64_64.jpg" data-hasqtip="20"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/5.html" title="123456" class="text-more" style="width: 100%">123456</a>
            </li><li style="text-align: center">
                <a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/1.html"><img ucard="1" class="avatar-img" src="./weibo_files/default_64_64.jpg" data-hasqtip="21"></a>
                <br><a href="http://localhost/bbs_/index.php?s=/UserCenter/Index/index/uid/1.html" title="admin" class="text-more" style="width: 100%">admin</a>
            </li>    </ul>
</div>
                </div>
            </div>

        </div>
    </div>

    </div>
</div>

<script type="text/javascript">
    $(function(){
        $(window).resize(function(){
            $("#main-container").css("min-height", $(window).height() - 343);
        }).resize();
    })
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
<script type="text/javascript" src="./weibo_files/placeholder.js.下载"></script>
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

    <script type="text/javascript" src="./weibo_files/atwho.js.下载"></script>
    <link type="text/css" rel="stylesheet" href="./weibo_files/atwho.css">
    <script src="./weibo_files/weibo.js.下载"></script>
    <script src="./weibo_files/insertFace.js.下载"></script>
    <script>
        var SUPPORT_URL="/bbs_/index.php?s=/Home/Addons/execute/_addons/Support/_controller/Support/_action/doSupport.html"
        $(function () {

            var $inputor = $('#weibo_content').atwho(atwho_config);
            var noMoreNextPage = false;
            var isLoadingWeibo = false;
            var currentPage = 1;

            $('#weibo_content').keypress(function (e) {
                if (e.ctrlKey && e.which == 13 || e.which == 10) {
                    $("#send_weibo_button").click();
                }
            });


            //点击发表微博按钮之后
            $('#send_weibo_button').click(function () {
                //获取参数
                var url = $(this).attr('data-url');
                var content = $('#weibo_content').val();
                var button = $(this);
                var originalButtonText = button.val();
                var feedType = 'feed';
                var  attach_ids = '';
            if( typeof $('#attach_ids').val() != 'undefined' && $('#attach_ids').val().length >0){
                var feedType = 'image';
                var attach_ids = $('#attach_ids').val();
            }

                //发送到服务器
                $.post(url, {content: content,type:feedType,attach_ids:attach_ids}, function (a) {
                    handleAjax(a);
                    if (a.status) {
                        button.attr('class', 'btn btn-primary');
                        button.val(originalButtonText);
                        reloadWeiboList();
                        clearWeibo();
                        $('.XT_face').remove();
                        insert_image.close();
                    }
                });
            });

            //当屏幕滚动到底部时
            $(window).on('scroll', function () {
                if (noMoreNextPage) {
                    return;
                }
                if (isLoadingWeibo) {
                    return;
                }
                if (isLoadMoreVisible()) {
                    loadNextPage();
                }
            });
            $(window).trigger('scroll');

            function isLoadMoreVisible() {
                var visibleHeight = $(window.top).height();
                var loadMoreOffset = $('#load_more').offset();
                return visibleHeight + $(window).scrollTop() > loadMoreOffset.top;
            }

            function loadNextPage() {
                currentPage = currentPage + 1;
                loadWeiboList(currentPage);
            }

            function reloadWeiboList() {
                loadWeiboList(1, function () {
                    clearWeiboList();
                    currentPage = 1;
                });
            }

            function clearWeibo() {
                $('#weibo_content').val('');
            }

            function loadWeiboList(page, onBeforePrepend) {
                //默认载入第1页
                if (page == undefined) {
                    page = 1;
                }

                //通过服务器载入微博列表
                var url = "/bbs_/index.php?s=/Weibo/Index/loadWeibo/uid/0.html";
                isLoadingWeibo = true;
                $('#load_more_text').text('正在载入...');
                $.post(url, {page: page}, function (a) {
                    if (a.status == 0) {
                        noMoreNextPage = true;
                        $('#load_more_text').text('没有了');
                    }
                    if (onBeforePrepend != undefined) {
                        onBeforePrepend();
                    }
                    $('#weibo_list').append(a);
                    isLoadingWeibo = false;
                });
            }

            function clearWeiboList() {
                currentPage = 0;
                $('#weibo_list').html('');
            }
        })
    </script>
 <!-- 用于加载js代码 -->


<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<div class="hidden"><!-- 用于加载统计代码等隐藏元素 -->
    
</div>

	<!-- /底部 -->

<div id="atwho-container"><div id="atwho-ground-weibo_content"><div class="atwho-view" id="at-view-64"><ul class="atwho-view-ul"></ul></div></div></div></body></html>