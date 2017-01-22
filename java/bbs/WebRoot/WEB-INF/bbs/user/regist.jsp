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



</head><body><font face="Agency FB"><AUDIO id="music" src="" autoplay="autoplay"></AUDIO></font>

<!-- 页面header钩子，一般用于加载插件CSS文件和代码 -->


	<!-- 头部 -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">

<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
    <font face="Agency FB"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
        <span class="sr-only">Toggle navigation</span> 
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span> 
    </button><a class="navbar-logo" href="#"> 
        <img src="" style="width: 150px;" > 
    </img></a></font>
    
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


	<!-- /头部 -->
	
	<!-- 主体 -->
	
<div id="main-container" class="container" style="min-height: 582px;">
    <div class="row">
        
        

    <font face="Agency FB"><SECTION> 
        <div class="login-text"><strong><h1>欢迎注册bbs账号</h1></strong></div> 
        <div class="login-form-upbox"> 
        <form class="login-form"  method="post" id="form_submit" namespace="regist" action="regist_regist.action"> 
                <div class="control-group login-input"> 
 
 
                    <div class="controls"> 
                        <input type="text" id="account" class="form-control" placeholder="请输入帐号" nullmsg="请填写用户名" datatype="*1-16" value="" name="user.acount" > 
                    </input></div> 
                </div> 
              
                <div class="control-group login-input"> 
 
 
                    <div class="controls"> 
                        <input type="password" id="password" class="form-control" placeholder="请输入密码" errormsg="密码为6-20位" nullmsg="请填写密码" datatype="*6-20" name="user.passWord" > 
                    </input></div> 
                </div> 
                <div class="control-group login-input"> 
 
 
                    <div class="controls"> 
                        <input type="password" id="rePassword" class="form-control" placeholder="请再次输入密码" recheck="password" errormsg="您两次输入的密码不一致" nullmsg="请填确认密码" datatype="*" > 
                    </input></div> 
                </div> 
                <div class="control-group login-input"> 
 
 
                    <div class="controls"> 
                        <input type="text" id="email" class="form-control" placeholder="请输入电子邮件" errormsg="请填写正确格式的邮箱" nullmsg="请填写邮箱" datatype="e" value="" name="user.email" > 
                    </input></div> 
                </div> 
                <div class="control-group"> 
                    <div class="controls"> 
                        <button type="submit" class="btn btn-primary" id="submit">注 册</button> 
                    </div> 
                </div> 
            </form> 
</div> 
    </SECTION></font>


    </div>
</div>

<font face="Agency FB"><script type="text/javascript"><!--
	//帐号格式和重复检测
	$('#account')
			.blur(
					function() {

						var regu = "^[0-9a-zA-Z]{6,12}";
						var re = new RegExp(regu);
						if (!re.test($('#account').val())) {
							alert('帐号为6-12位字母与数字组合');
							$('#account').val('');
							return;
						} 
						var userAccount = $('#account').val();
						$
								.ajax( {
									url : "${pageContext.request.contextPath}/regist/regist_checkUserName.action?time="
											+ new Date().getTime(),
									type : "POST",
									dataType : "json",
									data : {"userAccount" : userAccount},
									success : function(backDate, textStatus,
											ajax) {
										//解析json文本
										var isUsed = backDate.beUsed;
										if (isUsed) {
											alert("该账户已被使用，请重新输入。")
											$('#account').val('');
										}
									},
									error:function(){
										alert
									}
								});
					});
					

	
	$('#password')
			.blur(
					function() {
						var regu = "^[0-9a-zA-Z]{6,12}";
						var re = new RegExp(regu);
						if (!re.test($('#password').val())) {
							alert('帐号为6-12位字母与数字组合');
							$('#password').val('');
							return;
						}
					});
	//检查邮箱格式和检测是否重复
	$('#rePassword').blur(function(){
		if($('#rePassword').val()!=$('#password').val()){
			alert('两次的密码不相同，请重新输入');
			$('#rePassword').val('');
		}
	});
	$('#email')
			.blur(
					function() {

						var regu = "/^[\w]+(\.[\w]+)*@[\w]+(\.[\w]+)/";
						var re = new RegExp(regu);
						if (!re.test($('#email').val())) {
							alert('请输入正确的邮箱');
							$('#email').val('');
							return;
						} 
						var email = $('email').val();
						$
								.ajax( {
									url : "${pageContext.request.contextPath}/regist/regist_checkUserEmail.action?time="
											+ new Date().getTime(),
									type : "POST",
									dataType : "json",
									data : {
										"email" : email
									},
									success : function(backDate, textStatus,
											ajax) {
										//解析json文本
										var isUsed = backDate.beUsed;
										if (isUsed) {
											alert("该账户已被使用，请重新输入。")
											$('#account').val('');
										}
									}
								});
					});
					
</script>
<script type="text/javascript">
    $(function(){
        $(window).resize(function(){
            $("#main-container").css("min-height", $(window).height() - 343);
        }).resize();
    })
</script></font>



<p style="height: 10em;"><font face="Agency FB">&nbsp;</font></p>
<div class="footer-jumbotron text-center">
    <div class="row">
        <div class="col-sm-4 col-xs-12">

        </div>
        <div class="col-sm-4 col-xs-12">
 

                       <p><font face="Agency FB">123<br >456<br >789<br /></br></br></font></p>
        </div>
        <div class="col-sm-4 col-xs-12">

        </div>
    </div>
</div>
</body></html>