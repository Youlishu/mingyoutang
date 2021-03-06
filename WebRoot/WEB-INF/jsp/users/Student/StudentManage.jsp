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
  <title>学习管理</title>
  	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-manage.css" >
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
</head>
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
                                <li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
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
                    <a href="<%=path%>/toStudentCenter"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentBasic">基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/users/tofindph">安全设置</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentInform">我的通知</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Stu/tofindStuCourse">我的课程</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentPorder">提交工单</a>
                </div>
            </div>
            <div>
                <div class="student-set-left-list student-list-class">
                    <img src="../images/admin/student/icon/课程.png" alt=""><span>课程信息</span>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentManage" style="color: #ffc92a;">学习管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentTask">我的任务</a>
                </div>
                <div class="student-set-left-list">
                    <a href="">我的认证</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Stu/tofindStuOrder">订单管理</a>
                </div>
            </div>
        </div>
        <div class="student-set-right">
            <div class="manage-change-msg" >
                <a href="javascript:void(0);" class="student-manage-title-style">我的考试</a><a href="javascript:void(0);">我的成绩</a>
            </div>
            <div class="manage-change-msg-form1">
                <ul>
                    <li class="manage-change-msg-form-title">
                        <span>考试课程名称</span>
                        <span>考试时间</span>
                        <span>时长</span>
                        <span>考试地点</span>
                        <span>考试状态</span>
                    </li>
                    <li class="manage-change-msg-form-con">
                        <span>大数据培训</span>
                        <span>2017年2月1日9:00考试</span>
                        <span>2小时</span>
                        <span>中大银座3幢301教室</span>
                        <span class="manage-change-msg-form-title-state">未考</span>
                    </li>
                     <li class="manage-change-msg-form-con">
                        <span>大数据培训</span>
                        <span>2017年2月1日9:00考试</span>
                        <span>2小时</span>
                        <span>中大银座3幢301教室</span>
                        <span class="manage-change-msg-form-title-state">未考</span>
                    </li>
                </ul>
            </div>  
            <div class="manage-change-msg-form2" style="display: none;">
                <ul>
                    <li class="manage-change-msg-form-title">
                        <span>考试课程名称</span>
                        <span>考试结束时间</span>
                        <span>考试成绩</span>
                    </li>
                    <li class="manage-change-msg-form-con">
                        <span>大数据培训</span>
                        <span>2017年2月1日9:00考试</span>
                        <span class="manage-change-msg-form-con-state1">通过</span>
                    </li>
                     <li class="manage-change-msg-form-con">
                        <span>大数据培训</span>
                        <span>2017年2月1日9:00考试</span>
                        <span class="manage-change-msg-form-con-state2">未通过</span>
                    </li>
                </ul>
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
    $('.button').click(function(){
        $('.file').click();
    });
    var atitle=$('.manage-change-msg').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-manage-title-style');
        $(this).addClass('student-manage-title-style');
        if($(this).text()=='我的考试'){
            $('.manage-change-msg-form1').css('display','block');
            $('.manage-change-msg-form2').css('display','none');
        }
        if($(this).text()=='我的成绩'){
            $('.manage-change-msg-form1').css('display','none');
            $('.manage-change-msg-form2').css('display','block');
        }
    });
</script>
</html>