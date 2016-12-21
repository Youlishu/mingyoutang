<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
 	<%-- <base href="<%=basePath%>"> --%>
	<meta charset="UTF-8">
	<title>LOGIN IN</title>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>
	<script type="text/javascript" src="<%=path%>/js/form.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/login.css">
	
	
</head>
<script type="text/javascript">
	$('#userName').focus();


</script>

<body>
<div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
                <div class="logimg">
                <img src="<%=path%>/images/Professiona/mingyoutanglogo2.png" alt="">
                </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
                        <div  class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav navbar-right" >
                                <li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
  <!--  -->
</div>
	<div class="login-background">
		<div class="login-main">
			<div class="main-img">
				<img src="<%=path%>/images/login/mingyoutanglogo-01.png" alt="明优堂">
			</div>
			<div class="main-form">
				<div class="from-msg">
					<form action="<%=path%>/users/tolog" method="post">
						<div class="loginput"><input type="text" placeholder="账号" value="" name="userName" id="userName"><a href="javascript:void(0);" class="userName-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a></div>
						<div class="loginput"><input type="password" placeholder="密码" value="" name="password" id="password"><a href="javascript:void(0)" class="password-a" style="display: none;"><span class="glyphicon glyphicon-remove"></span></a></div>
						<div class="login-forgot"><a href="javascript:void(0);">忘记密码</a></div>
						<div class="loginsub"><input type="submit" value="登录" id="sub"></div>
						<div class="login-reg"><a href="reg.html">立即注册</a></div>
					</form>
				</div>

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
					<P>COPY RIGHT©2016  数空科技有限公司  DATAWYC,ALL RIGHTS RESERVED</P>
					<P><a href="">浙ICP备16004637号-1</a></P>
				</div>
			</div>
	</div>
	</div>
<script>  
		// login-background根据游览器的高度而变
        setTimeout(function(){  
            document.getElementsByClassName('login-background')[0].style.height = window.innerHeight+'px';  
        });  
        //清除input信息
        $(function(){
  				var userNamea=$('.userName-a');
  				var passworda=$('.password-a');
        	$('#userName').on('input',function(){
        		if($(this).val()==""){
        			$(userNamea).css('display','none');
        		}
        		else{
        			$(userNamea).css('display','block');

        		}
        	});	
        	$(userNamea).click(function(){
        				$('#userName').val("").focus();
        				$(userNamea).css('display','none');
        			});
        	$('#password').on('input',function(){
        		if($(this).val()==""){
        			$(passworda).css('display','none');
        		}
        		else{
        			$(passworda).css('display','block');
        		}
        	});
        	$(passworda).click(function(){
        				$('#password').val("").focus();
        				$(passworda).css('display','none');
        			});

        });
                // 登录验证
           var checklogin=new checklogin();   

</script>
<!-- <script type="text/javascript">
	$('#sub').on('click',function(){
		var entity={
			"userAccount": $('#userName').val(),
			"userPassword": $('#password').val(),
//			"appKey": "WEB#12134"
		};
		$.ajax({
			type:'post',
			url:link.userLogin[0].login,
			cache:false,
			async:false,
			data:JSON.stringify(entity),
			datatype:'json',
			contentType:'application/json',
			success:function(data){
				console.log(data);

			},
			error:function(){
				$.ligerDialog.error('登录失败!');
				return false;
			}
		});
	}); -->
</script>
</body>	
</html>