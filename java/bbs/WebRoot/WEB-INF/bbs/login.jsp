<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	



<title>bbs</title>
    
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
    <a class="navbar-logo" href="">
        <img src="" style="width: 150px;">
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
        <!--录注册-->
                            <li>
                                <a href="#">登录</a>
            </li>
            <li>
                <a href="#">注册</a>
            </li>    </ul>
</div>

</div>
</div>
<a id="goTopBtn"></a>


	
<div id="main-container" class="container" style="min-height: 582px;">
    <div class="row">
        
        
    <section>
        <div class="login-text"><strong><h1>欢迎登录bbs</h1></strong></div>

        <div class="login-form-inbox">
            <form class="login-form" namespace="/login" action="login_login" method="post">
                <div class="control-group login-input">


                    <div class="controls">
                        <input type="text" id="userAccount" class="form-control" placeholder="请输入用户名"  datatype="*1-16" value="" name="user.userAcount">
                    </div>
                </div>
                <div class="control-group login-input">


                    <div class="controls">
                        <input type="password" id="password" class="form-control" placeholder="请输入密码 "  nullmsg="请输入密码" datatype="*6-20" name="user.passWord">
                    </div>
                </div>
                <div class="control-group login-input">
                        <div class="controls">
                            <input type="text" id="inputPassword" class="form-control" placeholder="请输入验证码 " datatype="*5-5" name="verify">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label"></label>

                        <div class="controls">
                            <img class="verifyimg reloadverify" alt="" src="" style="cursor:pointer;">
                        </div>
                        <div class="controls Validform_checktip text-warning"></div>
                    </div>                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox pull-left">
                            <input type="checkbox" name="remember" style="cursor:pointer"> 记住密码 
                        </label>
                        <button type="submit" class="btn btn-primary pull-right">登录</button>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <a class="btn btn-link pull-right" href="">忘记密码</a>
                    </div>
                </div>
            </form>
        </div>
    </section>

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
<script type="text/javascript">

            var verifyimg = $(".verifyimg").attr("src");
            $(".reloadverify").click(function () {
                if (verifyimg.indexOf('?') > 0) {
                    $(".verifyimg").attr("src", verifyimg + '&random=' + Math.random());
                } else {
                    $(".verifyimg").attr("src", verifyimg.replace(/\?.*$/, '') + '?' + Math.random());
                }
            });
        });
    </script>
 <!-- 用于加载js代码 -->


<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<div class="hidden"><!-- 用于加载统计代码等隐藏元素 -->
    
</div>

	<!-- /底部 -->

</body></html>