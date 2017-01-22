<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
<title>登录</title>
    
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

</head><body>
	<audio id="music" src="" autoplay="autoplay"></audio>

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
        <img src="${pageContext.request.contextPath }/images/logo.jpg" style="width: 150px;">
    </a>
</div>

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
            <form class="login-form" action="#" method="post">
                <div class="control-group login-input">


                    <div class="controls">
                        <input type="text" id="inputEmail" class="form-control" placeholder="请输入用户名" ajaxurl="/member/checkUserNameUnique.html" errormsg="请填写用户名" nullmsg="è¯·å¡«åç¨æ·å" datatype="*1-16" value="" name="username">
                    </div>
                </div>
                <div class="control-group login-input">


                    <div class="controls">
                        <input type="password" id="inputPassword" class="form-control" placeholder="请输入密码 " errormsg="å¯ç ä¸º6-20ä½" nullmsg="è¯·å¡«åå¯ç " datatype="*6-20" name="password">
                    </div>
                </div>
                <div class="control-group login-input">
                        <div class="controls">
                            <input type="text" id="inputPassword" class="form-control" placeholder="请输入验证码 " errormsg="è¯·å¡«å5ä½éªè¯ç " nullmsg="è¯·å¡«åéªè¯ç " datatype="*5-5" name="verify">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label"></label>

                        <div class="controls">
                            <img class="verifyimg reloadverify" alt="验证码" src="${pageContext.request.contextPath }/PictureCheckCode?date="+new Date() style="cursor:pointer; " onclick="changeImg()">
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
                        <a class="btn btn-link pull-right" href="http://localhost/bbs_/index.php?s=/Home/User/mi.html">忘记密码</a>
                    </div>
                </div>
            </form>
        </div>
    </section>

    </div>
</div>

<script type="text/javascript">
	
</script>

<script type="text/javascript">
    $(function(){
        $(window).resize(function(){
            $("#main-container").css("min-height", $(window).height() - 343);
        }).resize();
    })
</script>
	<!-- /ä¸»ä½ -->

	<!-- åºé¨ -->
	<!-- åºé¨
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
<script type="text/javascript" src="./login_files/placeholder.js.ä¸è½½"></script>
        <script>
            $(function(){
                $('input,area').placeholder();
            })
        </script>
<script type="text/javascript">
(function(){
	var ThinkPHP = window.Think = {
		"ROOT"   : "/bbs_", //å½åç½ç«å°å
		"APP"    : "/bbs_/index.php?s=", //å½åé¡¹ç®å°å
		"PUBLIC" : "/bbs_/Public", //é¡¹ç®å¬å±ç®å½å°å
		"DEEP"   : "/", //PATHINFOåå²ç¬¦
		"MODEL"  : ["3", "", "html"],
		"VAR"    : ["m", "c", "a"]
	}
})();
</script>

    <script type="text/javascript">

        $(document)
                .ajaxStart(function () {
                    $("button:submit").addClass("log-in").attr("disabled", true);
                })
                .ajaxStop(function () {
                    $("button:submit").removeClass("log-in").attr("disabled", false);
                });


        $(function () {
            $("form").submit(function () {
                var self = $(this);
                $.post(self.attr("action"), self.serialize(), success, "json");
                return false;


                function success(data) {
                    if (data.status) {
                        op_success('æ¬¢è¿åæ¥ï¼1.5ç§åè·³è½¬å°ç»éåé¡µé¢ã', 'æ¸©é¦¨æç¤º');
                        setTimeout(function () {
                            window.location.href = "";
                        }, 1500);
                    } else {
                        op_error(data.info, 'æ¸©é¦¨æç¤º');
                        //self.find(".Validform_checktip").text(data.info);
                        //å·æ°éªè¯ç 
                        $(".reloadverify").click();
                    }
                }
            });


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
 <!-- ç¨äºå è½½jsä»£ç  -->


<!-- é¡µé¢footeré©å­ï¼ä¸è¬ç¨äºå è½½æä»¶JSæä»¶åJSä»£ç  -->
<div class="hidden"><!-- ç¨äºå è½½ç»è®¡ä»£ç ç­éèåç´  -->
    
</div>

	<!-- /åºé¨ -->

</body></html>