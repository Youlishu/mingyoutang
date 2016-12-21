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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>安全设置</title>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-2.1.3.min.js"></script>
    <script src="../js/pulldown.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/student-safe.css" >
    <link rel="stylesheet" href="../css/admincommon.css">
</head>
<script type="text/javascript">
//修改绑定手机
	function Modify(){
		alert("aaa");
		var phone=$('#newtel').val();
		$.ajax({
			type:'get',
			url:'<%=path%>/users/toMobileReg',
			data:{
				'phone':phone
			},
			/* datatype:'json', */
			contentType:'application/json,charset=utf-8',
			success:function(data) {
				alert(data);
				$('#telcode1').val(data);
			},
			error:function() {
				alert("系统当当了");
					return false;
			}
		})
	}
	function checkCo(){
		var a=$('#telcode').val()
		var b=$('#telcode1').val()
		if(a==b){
			alert("验证码正确")
		}else{
			alert("验证码不正确")
		}
	}
	function checkF(){
		alert("bbbb");
		var a=$('#telcode').val()
		var b=$('#telcode1').val()
		if(a==""||a!=b){
			alert("失败了")
			return false;
		}else{
			alert("ccccc");
			$('#formid').submit();
		}
	}
//修改密码
function checkP(){
	var newpassword=$('#newpassword').val();
	var newpassword1=$('#newpassword1').val();
	if(newpassword!=newpassword1){
		alert("确认密码不正确");
	}
}
function checksub(){
	alert("aaaa");
	var password=$('#password').val();
	var newpassword=$('#newpassword').val();
	var newpassword1=$('#newpassword1').val();
	if(password=="" || newpassword=="" || newpassword1=="" || newpassword!=newpassword1){
		alert("cccc")
		return false;
	}else{
		alert("bbbb");
		$('#changep').submit();
		
	}
}
</script>
<body>
 <div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
                <div class="logimg">
                <img src="../images/Professiona/mingyoutanglogo2.png" alt="">
                </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
                        <div  class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav navbar-right" >
                                <li><a href="index.html" class="lia" ><span>首页</span></a></li>
                                <li><a href="Professiona.html" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="Instructor.html" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="training.html" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="login.html" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="reg.html" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
                                <li class="loginname-li" style="display: none;">
                                    <a href="javascript:void(0);" class="loginname">贝子<span class="glyphicon glyphicon-chevron-down" style="padding-left: 5px;"></span></a>
                                    <div class="loginname-list" style="display: none;">
                                        <a href="">个人中心</a>
                                        <a href="">账号设置</a>
                                        <a href="">退出</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
  <!--  -->
</div>

<div class="banner">
    <div class="banner_main">
            
    </div>
</div>

<div class="student-set">
    <div class="position">
        <div class="student-set-left">
             <div>
                <div class="student-set-left-list student-list-class">
                    <a href="<%=path%>/Poder/tofindTea"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTea" >基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaph" style="color: #ffc92a;">安全设置</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherInform">我的通知</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherBehavior">教学行为</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindStu">学生管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaCourse">上课安排</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaco">我的课程</a>
                </div>
            </div>
            <div>
                <div class="student-set-left-list student-list-class">
                    <img src="../images/admin/student/icon/课程.png" alt=""><span>课程信息</span>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherManage">学习管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherIssuetask">学生任务</a> 
                </div>
                <div class="student-set-left-list">
                    <a href="javascript:void(0);">我的认证</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaOrder">订单管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherPorder">工单申请</a>
                </div>
            </div>
        </div>
        <div class="student-set-right">
            <div class="student-safe-title">
                <a href="javascript:void(0);" class="student-safe-title-style">手机绑定</a><a href="javascript:void(0);">邮箱绑定</a><a href="javascript:void(0);">密保问题</a><a href="javascript:void(0);">修改密码</a>
            </div>
            <div class="student-safe-form-tel" >
               <form action="<%=path%>/Poder/toupdateTeaphone" method="post" id="formid">
                
                    <div>
                        <label for="oldtel">当前手机：</label>${user1.phone}
                    </div>
                    <div>
                        <label for="newtel"><span>*</span>新手机号码：</label><input type="text" name="phone" id="newtel" value="">
                        <p>请输入您正在使用手机号码，以通过验证完成手机修改</p>
                    </div>
                    <div>
                    <input type="button" class="telbtn"  onclick="Modify();return false;" value="发送验证码">
                    </div>
                    <div>
                        <label for="telcode"><span>*</span>手机验证码：</label><input type="text" name="" onblur="checkCo();return false;"  id="telcode"><input type="hidden" name="" id="telcode1">
                    </div>
                    <div>
                        <input type="button" class="telsub" onclick="checkF();return false;" value="完成">
                        <input type="reset" class="telreset" value="取消">
                    </div>
                </form>
            </div>
            <div class="student-safe-form-email" style="display: none;">
                <form action="" method="">
                    <div>
                        <label for="newtel"><span>*</span>我的邮箱：</label><input type="text" name="newemail" id="newemail" value="">
                        <p>请输入您的邮箱号码，以通过验证完成密码找回</p>
                    </div>
                    <div>
                        <input type="submit"  class="emailsub" value="完成">
                        <input type="reset" class="emailreset" value="取消">
                    </div>
                </form>
            </div>
            <div class="student-encrypted" style="display: none;">
                <div class="student-safe-form-encrypted encrypted1" >
                    <div class="student-safe-form-encrypted-title">
                        <span>填写密保问题</span>
                        <span>验证密保问题</span>
                        <span>完成</span>
                    </div>
                    <div class="student-safe-form-encrypted-con">
                        <form action="">
                            <div>
                                <label for="">问题一：</label>
                                <select name="" id="">
                                    <option value="">请选择密保问题</option>
                                    <option value="">问题一</option>
                                    <option value="">问题二</option>
                                    <option value="">问题三</option>
                                    <option value="">问题四</option>
                                </select>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted1-answer1"></div>
                            <div>
                                <label for="">问题二：</label>
                                <select name="" id="">
                                    <option value="">请选择密保问题</option>
                                    <option value="">问题一</option>
                                    <option value="">问题二</option>
                                    <option value="">问题三</option>
                                    <option value="">问题四</option>
                                </select>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted1-answer2"></div>
                            <div>
                                <label for="">问题三：</label>
                                <select name="" id="">
                                    <option value="">请选择密保问题</option>
                                    <option value="">问题一</option>
                                    <option value="">问题二</option>
                                    <option value="">问题三</option>
                                    <option value="">问题四</option>
                                </select>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted1-answer3"></div>
                            <div>
                                <input type="button"  class="encrypted-btn" value="下一步">
                                <input type="reset" class="encrypted-reset" value="取消">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="student-safe-form-encrypted encrypted2" style="display: none;">
                    <div class="student-safe-form-encrypted-title">
                        <span>填写密保问题</span>
                        <span>验证密保问题</span>
                        <span>完成</span>
                        <p>以下是您刚刚设置的密保问题，请再一次回答，以便进行确认</p>
                    </div>
                    <div class="student-safe-form-encrypted-con">
                        <form action="">
                            <div>
                                <label for="">问题一：</label>
                                <span>第一个问题！</span>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted2-answer1"></div>
                            <div>
                                <label for="">问题二：</label>
                                <span>第二个问题！</span>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted2-answer2"></div>
                            <div>
                                <label for="">问题三：</label>
                                <span>第三个问题！</span>
                            </div>
                            <div><label for="">答案：</label><input type="text" name="encrypted2-answer3"></div>
                            <div>
                                <input type="button"  class="encrypted2-btn" value="完成">
                                <input type="reset" class="encrypted2-reset" value="取消">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="student-safe-form-encrypted encrypted3" style="display: none;">
                    <div class="student-safe-form-encrypted-title">
                        <span>填写密保问题</span>
                        <span>验证密保问题</span>
                        <span>完成</span>
                    </div>
                    <div class="student-safe-form-encrypted3-con">
                        <h5>完成密保设置</h5>
                        <p><span>10</span>秒后自动返回</p>
                        <a href="javascript:void(0);">返回</a>
                    </div>
                </div>
            </div>
            <div class="student-safe-changepass" style="display: none;">
               <form action="<%=path%>/Poder/toupdateTeap" method="post" id="changep">
                    <div><label for="">旧密码：</label><input type="text" name="password" id="password"></div>
                    <div><label for="">新密码：</label><input type="text" name="newpassword" id="newpassword"></div>
                    <div><label for="">确认新密码：</label><input type="text" name="newpassword1" id="newpassword1" onblur="checkP();return false;"></div>
                    <div>
                        <input type="button"  class="changepass-btn" onclick="checksub();return false;" value="完成">
                        <input type="reset" class="changepass-reset" value="取消">
                    </div>
                   
                </form>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="footer-nav container">
        <div>联系我们</div>
        <div><p>杭州办公室：0571-81903938</p><p>南京办公室：025-58151780</p></div>
        <div><p>邮箱：WUYECAO@5WYC.COM</p>
            <p>地址：杭州市西湖区云栖小镇中大银座5幢3F</p></div>
        <div>
            <a href="http://www.miitbeian.gov.cn/">
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
                <p>浙ICP备16004637号 -1</p>
            </a>

        </div>
    </div>

</footer>
</body>
<script>
    var atitle=$('.student-safe-title').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-safe-title-style');
        $(this).addClass('student-safe-title-style');
        if($(this).text()=='手机绑定'){
            $('.student-safe-form-tel').css('display','block');
            $('.student-safe-form-email').css('display','none');
            $('.student-encrypted').css('display','none');
            $('.student-safe-changepass').css('display','none');
        }
        if($(this).text()=='邮箱绑定'){
            $('.student-safe-form-tel').css('display','none');
            $('.student-safe-form-email').css('display','block');
            $('.student-encrypted').css('display','none');
            $('.student-safe-changepass').css('display','none');
        }
        if($(this).text()=='密保问题'){
            $('.student-safe-form-tel').css('display','none');
            $('.student-safe-form-email').css('display','none');
            $('.student-encrypted').css('display','block');
            $('.student-safe-changepass').css('display','none');
        }
        if($(this).text()=='修改密码'){
            $('.student-safe-form-tel').css('display','none');
            $('.student-safe-form-email').css('display','none');
            $('.student-encrypted').css('display','none');
            $('.student-safe-changepass').css('display','block');
        }
    });
</script>
</html>