<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript" src="<%=path%>/js/form.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>
<script type="text/javascript" src="<%=path%>js/forgetpassword.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
</head>
<script type="text/javascript">
/* 用户名校验 */
	$('#userName').focus();
	function checkU(){
		var userName = $('#userName').val();
		if(userName==""){
			
			$('#userName').focus();
			return false;
		}else{
			$.ajax({
				type:'get',
				url:'<%=path%>/users/tocheckU',
				data:{
					'userName':userName
				},
				/* datatype:'json', */
				contentType:'application/json,charset=utf-8',
				success:function(result) {
					if (result==1) {
						 alert("用户名已被注册"); 
						$('#userName').focus();
					} else {
						 alert("用户名可用");
						$('#password').focus();
					}
				},
				error:function() {
						return false;
				}
			})
		}
		
	}
/* 密码校验 */
 function checkp(){
	 var password = $('#password').val();
	 var password1 = $('#password1').val();
	 if(password1==password){
		 /* alert("密码正确"); */
		 $('#phone').focus();
		}else{
			/*  alert("密码错误"); */
		 $('#password').focus();
		}
}
 
/* 手机注册 */
function MobileReg(){
	
		var phone=$('#phone').val();
		$.ajax({
			type:'get',
			url:'<%=path%>/users/toMobileReg',
			data : {
				'phone' : phone
			},
			datatype:'json', 
			contentType : 'application/json,charset=utf-8',
			success : function(data) {
				function checkC(){
					if (data != $('#code').val()) {
						alert("验证码错误");
					} else {
						alert("正确");
					}
				}
			},
			error : function() {
				alert("失败");
				return false;
			}
		})
}

/* 表单提交控制 */
	function sub() {
		var userName = $('#userName').val();
		var password = $('#password').val();
		var password1 = $('#password1').val();
		var phone = $('#phone').val();
		var code = $('#code').val();
		var email = $('#email').val();
		if (userName == "" || password == "" || password1 == "" || phone == ""
				|| code == "" || email == "") {
			alert("信息要填满");
			$('#userName').focus();
			return false;
		} else {
			$('#reg').submit();
		}
	}
</script>
<body>
	<div class="header">
		<div class="top">
			<div class="container">
				<div class="header-nav navbar-fixed-top">
					<div class="logimg">
						<img src="<%=path%>/images/Professiona/mingyoutanglogo2.png" alt="">
					</div>
					<nav class="navbar navbar-default " role="navigation">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="example-navbar-collapse">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="<%=path%>/toMingyoutangHomepage" class="lia"><span>首页</span></a></li>
								<li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
								<li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
								<li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
								<!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
								<li><a href="<%=path%>/tologin" class="logina"
									style="padding-top: 22px;"><span>登录</span></a></li>
								<li><a href="<%=path%>/toReg" class="rega"
									style="padding-top: 22px;"><span>注册</span></a></li>
							</ul>
						</div>
					</div>
					</nav>
				</div>
			</div>
		</div>
		<!--  -->
	</div>
	1<br>
	1<br>
	1<br>
	1<br>
	<div align="center">
		<div>
			<form action="<%=path%>/users/addUser" method="post" id="reg">
				<div>
					<input type="text" name="userName" class="userName" placeholder="userName" autocomplete="off" id="userName" onblur="checkU();return false;" />
					 <a href="javascript:void(0);" class="username-a" style="display: none;"><span class="glyphicon glyphicon-remove" style="top: 38px;"></span></a> 
				</div>
				<div class="regput">
					<input type="password" name="password" class="password" placeholder="password" id="password" />
					 <a href="javascript:void(0);" class="username-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a> 
				</div>
				<div class="regput">
					<input type="password" class="notpass" placeholder="notpass" id="password1" />
					 <a href="javascript:void(0);" class="username-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a> 

				</div>
				<div class="regput">
					<input type="text" id="phone" name="phone" class="phone_number" placeholder="phone" autocomplete="off" />
					  <a href="javascript:void(0);" class="username-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a> 

				</div>
				<div class="regput">
					<input id="code" type="text" placeholder="code" class="form-inline" onblur="checkC();return false;">
					<a href="" onclick="MobileReg();return false;" class="white">发送验证码</a>
				</div>
				<div class="regput">
					<input type="email" name="email" class="email" placeholder="email" id="email" />
					  <a href="javascript:void(0);" class="username-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a> 
				</div>

				<button type="button" onclick="sub();return false;">注册</button>
			</form>
		</div>
	</div>
	<div class="login-fix-footer">

		<div class="main-contact">
			<p>南京办公室：025-58151780</p>
			<p>杭州办公室：0571-81903938</p>
		</div>
		<div class="footer-bg">
			<div class="footer-cont col-sm-1">联系我们</div>
			<div class="footer-cont col-sm-3">邮箱：WUYECAO@5WYC.COM</div>
			<div class="footer-cont col-sm-3">地址：杭州市西湖区云栖小镇中大银座5幢3F</div>
			<div class="footer-cont1 col-sm-5">
				<P>COPY RIGHT©2016 数空科技有限公司 DATAWYC,ALL RIGHTS RESERVED</P>
				<P>
					<a href="">浙ICP备16004637号-1</a>
				</P>
			</div>
		</div>
	</div> 
	<script>
		/* setTimeout(function() {
			document.getElementsByClassName('reg')[0].style.height = window.innerHeight
					+ 'px';
		});
		var Checkregperson = new checkregperson();
		$(function() {
			var reginput = $('.con').parent().find('input');
			var inputa = $(reginput).parent().find('a');

			$(reginput).on('input', function() {
				if ($(this).val() == "") {
					$(this).parent().find('a').css('display', 'none');
				} else {
					$(this).parent().find('a').css('display', 'block');
				}
			});
			$(inputa).click(function() {
				$(this).prev().val("").focus();
				$(this).css('display', 'none');
			});
		}); 
	 */
	
	
	/*************60s倒计时***********/
		$('#btn').on('click', function() {
			var number = 60;
			$('#btn').text(number + 's');
			$('#btn').removeClass('white');
			$('#btn').addClass('gray');
			var timer = setInterval(function() {
				$('#btn').text(number + 's');
				$('#btn').attr("disabled", true);
				number--;
				if (number <= 0) {
					clearInterval(timer);
					$('#btn').removeClass('gray');
					$('#btn').addClass('white');
					$('#btn').text('验证码');
					$('#btn').attr("disabled", false);
					timer = null;
				}
			}, 1000)

		});
	</script>
</body>
</html>