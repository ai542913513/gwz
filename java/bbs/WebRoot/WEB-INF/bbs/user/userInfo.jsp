<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	




		<title>ThinkOX</title>

		<!-- 为了让html5shiv生效，请将所有的CSS都添加到此处 -->
		<link href="${pageContext.request.contextPath }/css/bbs/bootstrap.css"
			rel="stylesheet" type="text/css" />
		<link
			href="${pageContext.request.contextPath }/css/bbs/jquery.qtip.css"
			rel="stylesheet" type="text/css" />
		<link
			href="${pageContext.request.contextPath }/css/bbs/toastr.min.css"
			rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/bbs/oneplus.css"
			rel="stylesheet" type="text/css" />



		<!-- 增强IE兼容性 -->
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]><!-->
		<script src="${pageContext.request.contextPath }/js/bbs/html5shiv.js"
			type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/js/bbs/respond.js"
			type="text/javascript"></script>
		<!--<!--[endif]-->

		<!-- jQuery -->
		<!--[if lt IE 9]><!-->
		<script
			src="${pageContext.request.contextPath }/js/bbs/jquery-1.10.2.min.js"
			type="text/javascript"></script>
		<!--<!--[endif]-->
		<!--[if gte IE 9]><!-->
		<script
			src="${pageContext.request.contextPath }/js/bbs/jquery-2.0.3.min.js"
			type="text/javascript"></script>
		<!--<![endif]-->

		<!-- Bootstrap -->
		<script
			src="${pageContext.request.contextPath }/js/bbs/bootstrap.min.js"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath }/js/bbs/jquery.qtip.js"
			type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/js/bbs/toastr.min.js"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath }/js/bbs/jquery.slimscroll.min.js"
			type="text/javascript"></script>
		<script
			src="${pageContext.request.contextPath }/js/bbs/jquery.iframe-transport.js"
			type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/js/bbs/core.js"
			type="text/javascript"></script>




		<script>
  var _ROOT_ = "/bbs_";
    var MID = "5";
    var MODULE_NAME="Usercenter";
</script>

	</head>
	<body>
		<audio id="music" src="" autoplay="autoplay"></audio>




		<!-- 头部 -->
		<div class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">

				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-logo"
						href="http://localhost/bbs_/index.php?s=/Home/Index/index.html">
						<img src="./login_files/oneplus-logo.png" style="width: 150px;">
					</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
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
							<a id="nav_info" class="dropdown-toggle text-left"
								data-toggle="dropdown"> <span
								class="glyphicon glyphicon-bullhorn"></span> <span
								id="nav_bandage_count" class="badge pull-right">1</span> &nbsp;
							</a>
							<ul class="dropdown-menu extended notification" style="">
								<li style="padding-left: 15px; padding-right: 15px;">
									<div class="row nav_info_center">
										<div class="col-xs-9 nav_align_left">
											<span id="nav_hint_count">1</span> 条未读
										</div>
										<div class="col-xs-3">
											<i onclick="setAllReaded()"
												class="set_read glyphicon glyphicon-ok" title="全部标为已读"></i>
										</div>
									</div>
								</li>
								<li>
									<div
										style="position: relative; width: auto; overflow: hidden; max-height: 250px">
										<div class="slimScrollDiv"
											style="position: relative; overflow: hidden; width: auto; height: 150px;">
											<ul id="nav_message" class="dropdown-menu-list scroller "
												style="width: auto; overflow: hidden; height: 150px;">
												<li>
													<a data-url="#" onclick="readMessage(this,206)"> <i
														class="glyphicon glyphicon-bell"></i> 头衔颁发<span
														class="time"> 2016-12-30 16:36 </span> </a>
												</li>
											</ul>
											<div class="slimScrollBar"
												style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
											<div class="slimScrollRail"
												style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
										</div>
									</div>

								</li>
								<li class="external">
									<a href="#">查看全部 <i
										class="glyphicon glyphicon-circle-arrow-right"
										style="background: none; color: rgb(72, 184, 122)"></i> </a>
								</li>
							</ul>

						</li>


						<li class="dropdown">
							<a role="button" class="dropdown-toggle dropdown-toggle-avatar"
								data-toggle="dropdown"> <img
									src="./TuserIfo_files/58622000600d7-4d971fd3_64_64.jpg"
									class="navbar-avatar-img"> </a>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;个人中心</a>
								</li>
								<li>
									<a event-node="logout"><span
										class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;注销</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>

				<div class="friend_panel visible-md visible-lg"
					style="display: none">
					<a class="btn-pull"
						onclick="$(&#39;#right_panel_main&#39;).toggle();"><i
						class="glyphicon glyphicon-chevron-left"></i>&nbsp; </a>

					<div id="right_panel_main" style="display: none;">
						<!--开始会话板-->

						<div id="session_panel_main">
							<h2>
								会话
								<!--( 1 )-->
							</h2>

							<div class="slimScrollDiv"
								style="position: relative; overflow: hidden; width: auto; height: 430px;">
								<div id="scrollArea_session" class="row "
									style="overflow: hidden; width: auto; height: 430px;">
									<div id="scrollContainer_session">
										<ul class="friend_list">
										</ul>
									</div>
								</div>
								<div class="slimScrollBar"
									style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 430px;"></div>
								<div class="slimScrollRail"
									style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
							</div>
							<div class="session_more">
								<a title="会话面板"
									onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()"
									class="btn_session_more col-md-6 active"><i
									class="glyphicon glyphicon-send"></i> </a>
								<a title="好友面板"
									onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()"
									class="btn_session_more col-md-6"><i
									class="glyphicon glyphicon-user"></i> </a>
							</div>

							<script>
                $('#scrollArea_session').slimScroll({
                    height: '430px',
                    alwaysVisible: true,
                    start: 'bottom'
                });
                var last_toast_talk_message_time="1483689955";//最后提示会话消息的时间
            </script>
							<!--结束会话版-->
						</div>

						<!--开始好友板-->
						<div id="friend_panel_main" style="display: none">
							<h2>
								好友( 1 )
							</h2>

							<div class="slimScrollDiv"
								style="position: relative; overflow: hidden; width: auto; height: 430px;">
								<div id="scrollArea_friend" class="row "
									style="overflow: hidden; width: auto; height: 430px;">
									<div id="scrollContainer_friend">
										<ul class="friend_list">
											<li id="friends_li_">
												<div class="row">
													<div class="col-md-6">
														<a target="_blank" title=" a542913513" href="#"> <img
																src="./TuserIfo_files/default_64_64.jpg"
																class="avatar-img" style="width: 45px;"> </a>
													</div>
													<div class="col-md-6">
														<div>
															<a class="text-center" style="width: 100%"
																target="_blank" title=" a542913513" href="#">
																a542913513 </a>
														</div>
														<div>
															<a onclick="start_talk(6)"><i title="发起新会话"
																class="glyphicon glyphicon-send"></i>
															</a>
														</div>
													</div>
												</div>

											</li>
										</ul>
									</div>
								</div>
								<div class="slimScrollBar"
									style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 430px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
								<div class="slimScrollRail"
									style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
							</div>
							<script>
                $('#scrollArea_friend').slimScroll({
                    height: '430px',
                    alwaysVisible: true,
                    start: 'bottom'
                });
            </script>

							<div class="session_more">
								<a title="会话面板"
									onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()"
									class="btn_session_more col-md-6"><i
									class="glyphicon glyphicon-send"></i> </a>
								<a title="好友面板"
									onclick="$(&#39;#friend_panel_main&#39;).toggle();$(&#39;#session_panel_main&#39;).toggle()"
									class="btn_session_more col-md-6 active"><i
									class="glyphicon glyphicon-user"></i> </a>
							</div>
						</div>
						<!--结束会话版-->


					</div>


				</div>


			</div>
			<div id="chat_box" style="display: none" class="chat_panel">
				<div class="panel_title">
					<img id="chat_ico" class="chat_avatar avatar-img"
						src="./TuserIfo_files/default_64_64.jpg">

						<div id="chat_title" class="title pull-left text-more"></div>
						<div class="control_btns pull-right">
							<a><i onclick="$(&#39;#chat_box&#39;).hide();"
								class="glyphicon glyphicon-minus"></i>
							</a>
							<!-- <a
                ><i class="glyphicon glyphicon-off"></i></a>-->
						</div>
				</div>
				<div class="row talk-body ">
					<div class="slimScrollDiv"
						style="position: relative; overflow: hidden; width: auto; height: 320px;">
						<div id="scrollArea_chat" class="row "
							style="overflow: hidden; width: auto; height: 320px;">
							<div id="scrollContainer_chat">
							</div>
						</div>
						<div class="slimScrollBar"
							style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 320px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
						<div class="slimScrollRail"
							style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
					</div>

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
						<button class=" btn btn-danger" onclick="chat_exit()"
							style="margin: 10px 10px" title="退出会话">
							<i class="glyphicon glyphicon-off"></i>
						</button>
						<!--  <button class=" btn btn-success" onclick="chat_exit()"
                        style="margin: 10px 10px" title="閭€璇峰ソ鍙?><i class="glyphicon glyphicon-plus"></i>
                </button>-->

					</div>
					<div class="col-md-6">
						<button class="pull-right btn btn-primary"
							onclick="chat_postMessage()" style="margin: 10px 10px">
							发送 Ctrl+Enter
						</button>
					</div>
				</div>
			</div>
		</div>

		<a id="goTopBtn" style="display: block; right: 50px;"></a>

		<!-- /头部 -->

		<!-- 主体 -->

		<div id="main-container" class="container" style="min-height: 582px;">
			<table style="width: 100%; table-layout: fixed;">
				<tbody>
					<tr id="usercenter-sidebar-xs" class="visible-xs">

					</tr>
					<tr id="usercenter-sidebar-sm">
						<td
							style="width: 20%; vertical-align: top; background-color: #ededed;"
							id="usercenter-sidebar-td">

							<div class="row">
								<div class="col-xs-12">
									<div>
										<p>
											&nbsp;
										</p>
										<!--头像-->
										<p class="text-center">
											<a href="#"> <img style="width: 55%;" class="avatar-img"
													src="./TuserIfo_files/58622000600d7-4d971fd3_128_128.jpg">
											</a>
										</p>

										<!--用户名-->
										<p class="text-center">
											123456 &nbsp;
										</p>

										<!--积分 等级-->
										<p class="text-center text-muted">
											积分：59 &nbsp;&nbsp;&nbsp;&nbsp; 等级：Lv2 试用
										</p>
										<!--关注按钮，在登录状态-->

										<p>
											&nbsp;
										</p>

										<!--导航栏-->
										<ul class="nav nav-pills nav-stacked">
											<li class="nav-title">
												<a>个人资料</a>
											</li>
											<li class="">
												<a
													href="#">
													基本资料 <span class="glyphicon glyphicon-list-alt pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#l">
													扩展资料 <span class="glyphicon glyphicon-expand pull-right"></span>
												</a>
											</li>
											<li class="active">
												<a
													href="#">
													修改头像 <span class="glyphicon glyphicon-user pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#">
													修改邮箱 <span class="glyphicon glyphicon-envelope pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#">
													修改个性签名 <span class="glyphicon glyphicon-edit pull-right"></span>
												</a>
											</li>
											<li class="nav-title">
												<a>系统相关</a>
											</li>
											<li class="">
												<a
													href="#">
													我的会话 <span class="glyphicon glyphicon-send pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#ml">
													消息中心 <span class="glyphicon glyphicon-bullhorn pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#">
													修改密码 <span class="glyphicon glyphicon-lock pull-right"></span>
												</a>
											</li>
											<li class="nav-title">
												<a>讨论区</a>
											</li>
											<li class="">
												<a
													href="#">
													我的主题 <span class="glyphicon glyphicon-book pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#">
													我的参与 <span class="glyphicon glyphicon-comment pull-right"></span>
												</a>
											</li>
											<li class="">
												<a
													href="#">
													我的收藏 <span class="glyphicon glyphicon-bookmark pull-right"></span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</td>

						<td id="usercenter-content-td"
							style="width: 80%; background-color: #fff; vertical-align: top; padding-left: 50px; padding-right: 50px;">
							<div class="container-fluid">


								<div class="row">
									<div class="col-xs-12">
										<p>
											&nbsp;
										</p>
										<h4>
											修改头像
										</h4>
										<hr class="oneuser-title-hr">
									</div>
								</div>

 <div class="row">
        <div class="col-xs-3">
            <p class="text-warning">当前头像</p>

            <p>&nbsp;</p>

            <div class="thumbnail">
                <img src="./TuserIfo_files/58622000600d7-4d971fd3_128_128.jpg" class="avatar-img">
            </div>
        </div>
        <div class="col-xs-3">
            &nbsp;
        </div>
        <div class="col-xs-6">
            <p class="text-warning">设置新头像</p>

            <p class="text-muted">支持jpg，png，gif，bmp等格式，可以在大照片中裁剪比较满意的部分</p>

            <form action="http://localhost/bbs_/index.php?s=/UserCenter/Index/doUploadAvatar.html" id="avatar_form" method="post" enctype="multipart/form-data">
                                    <p class="hide">
                        <input type="file" name="image">
                    </p>

                    <div class="btn btn-primary" id="select_file_button">选择文件</div>                <p class="text-error" id="submitTip"></p>
            </form>
            <p id="upload_tip" class="text-danger"></p>

            <div id="uploaded_image_div" style="display: none;">
                <div class="thumbnail">
                    <img id="uploaded_image" style="width: 100%;" class="thumbnails">
                </div>
                <p class="text-danger" id="save_avatar_tip"></p>
                <p>
                    <a class="btn btn-primary" id="save_avatar_button" data-url="/bbs_/index.php?s=/UserCenter/Index/doCropAvatar.html">选区裁剪后保存头像</a>
                </p>
            </div>
        </div>
    </div>

                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <script type="text/javascript">
        $(function () {
            $(window).resize(function () {
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
<script type="text/javascript" src="./TuserIfo_files/placeholder.js.下载"></script>
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

    <link rel="stylesheet" type="text/css" href="./TuserIfo_files/jquery.Jcrop.css">
    <script src="./TuserIfo_files/jquery.Jcrop.js.下载"></script>
    <script src="./TuserIfo_files/jquery.browser.js.下载"></script>
    <script>
        var temp;

        $(function () {
            var crop;

            //选择图片文件之后立即上传表单
            $('[name=image]').change(function () {
                $('#avatar_form').submit();
            });

            $('#avatar_form').submit(function (e) {
                e.preventDefault();

                $.ajax(this.action, {
                    files: $(":file", this),
                    iframe: true,
                    processData: false
                }).complete(function (data) {
                    var json = data.responseJSON;

                    $('#avatar_form').trigger('onJson', [json])
                });
            });

            //头像上传后显示图片内容
            $('#avatar_form').bind('onJson', function (e, json) {
                //如果发生错误，则显示错误信息
                if (!json.success) {
                    $('#upload_tip').text(json.message);
                }

                //隐藏图片上传表单
                $('#avatar_form').hide();

                //显示图片内容
                $('#uploaded_image').attr('src', json.image);
                $('#uploaded_image_div').show();

                //图片加载完之后 开启图片切割
                $('#uploaded_image').load(function () {
                    $('#uploaded_image').Jcrop({
                        aspectRatio: 1,
                        onSelect: updateCoordinate
                    });
                })
            });
            function updateCoordinate(c) {
                crop = c;
            }

            //点击选择文件按钮之后显示选择文件对话框
            $('#select_file_button').click(function () {
                $('[name=image]').trigger('click');
            });

            //点击保存头像后
            function showAvatarTip(text) {
                $('#save_avatar_tip').text(text);
            }

            $('#save_avatar_button').click(function () {
                //检查是否已经裁剪过
                if (crop.w == undefined || crop.w == 0) {
                    showAvatarTip('请先选出图片中需要的部分');
                    return;
                }

                //显示正在保存
                $(this).text('正在保存');
                $(this).addClass('disabled');

                //隐藏错误消息
                showAvatarTip('');

                //提交到服务器
                var url = $(this).attr('data-url');
                var imageWidth = $('.jcrop-holder img').width();
                var imageHeight = $('.jcrop-holder img').height();
                var crop2 = crop.x / imageWidth + ',' + crop.y / imageHeight + ',' + crop.w / imageWidth + ',' + crop.h / imageHeight;
                $.post(url, {crop: crop2}, function (a) {
                    if (a.status) {
                        location.href = location.href;
                        location.reload();
                    } else {
                        showAvatarTip(a.info);

                        //恢复按钮
                        $('#save_avatar_button').text('保存头像');
                        $('#save_avatar_button').removeClass('disabled');
                    }
                });
            })
        })
    </script>
 <!-- 用于加载js代码 -->


<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<div class="hidden"><!-- 用于加载统计代码等隐藏元素 -->
    
</div>

<!-- /底部 -->

<script>
    $(function () {
        var $sidebar = $('#usercenter-sidebar-td');
        var $sidebar_xs = $('#usercenter-sidebar-xs');
        var $sidebar_sm = $('#usercenter-sidebar-sm');
        var $content = $('#usercenter-content-td');

        function trigger_resp() {
            var width = $(window).width();
            if (width < 768) {
                on_xs();
            } else {
                on_sm();
            }
        }

        function on_xs() {
            $sidebar_xs.append($sidebar);
            $content.css({'padding-left': 0, 'padding-right': 0});
        }

        function on_sm() {
            $sidebar_sm.prepend($sidebar);
            $content.css({'padding-left': '50px', 'padding-right': '50px'});
        }

        trigger_resp();

        $(window).resize(function () {
            trigger_resp();
        })
    })
</script>


</body></html>