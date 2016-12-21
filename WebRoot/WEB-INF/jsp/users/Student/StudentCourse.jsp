<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的课程</title>
      <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
    <script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
   	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-course.css" >
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
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
                    <a href="<%=path%>/Stu/tofindStuCourse" style="color: #ffc92a;">我的课程</a>
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
                    <a href="<%=path%>/toStudentManage">学习管理</a>
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
            <div class="student-course-title">
                <a href="javascript:void(0);" class="student-course-title-style">全部课程</a><a href="javascript:void(0);">未进行</a><a href="javascript:void(0);">正在进行</a><a href="javascript:void(0);">已结束</a>
            </div>
            	<form id="form1" runat="server">
            <div>
            <c:forEach items="${cList}" var="co">
            <div class="student-course-cont">
                <div class="student-course-cont-msg">
                    <div class="student-course-cont-msg-img" >
                        <h5>${co.courseName}</h5>
                    </div>
                    <div class="student-course-cont-msg-cont"  style="display: none;">
                        <h5>${co.courseName}</h5>
                        <h5><label for="">地点：</label><span>${co.coursePlace}</span></h5>
                        <h5><label for="">时间：</label><span>${co.courseTime}</span>-<span></span><span>${co.courseoverTime}</span></h5>
                        <h5><label for="">内容：</label><span>${co.coursedetail}</span></h5>
                    </div>
                </div>
            </div>
            </c:forEach>
            <!-- <div class="student-course-cont">
                <div class="student-course-cont-msg">
                    <div class="student-course-cont-msg-img" >
                        <h5>掌握大数据计算服务</h5>
                    </div>
                    <div class="student-course-cont-msg-cont"  style="display: none;">
                        <h5>掌握大数据计算服务</h5>
                        <h5><label for="">地点：</label><span>xx路xx楼xx号</span></h5>
                        <h5><label for="">时间：</label><span>2017.01.01</span>-<span></span><span>2017.01.03</span></h5>
                        <h5><label for="">内容：</label><span>了解大数据主流挖掘算丰富的数据挖掘海外项目经验为多家客户提供大数据.........</span></h5>
                    </div>
                </div>
            </div>
            <div class="student-course-cont">
                <div class="student-course-cont-msg">
                    <div class="student-course-cont-msg-img" >
                        <h5>掌握大数据计算服务</h5>
                    </div>
                    <div class="student-course-cont-msg-cont"  style="display: none;">
                        <h5>掌握大数据计算服务</h5>
                        <h5><label for="">地点：</label><span>xx路xx楼xx号</span></h5>
                        <h5><label for="">时间：</label><span>2017.01.01</span>-<span></span><span>2017.01.03</span></h5>
                        <h5><label for="">内容：</label><span>了解大数据主流挖掘算丰富的数据挖掘海外项目经验为多家客户提供大数据.........</span></h5>
                    </div>
                </div>
            </div>
            <div class="student-course-cont">
                <div class="student-course-cont-msg">
                    <div class="student-course-cont-msg-img" >
                        <h5>掌握大数据计算服务</h5>
                    </div>
                    <div class="student-course-cont-msg-cont"  style="display: none;">
                        <h5>掌握大数据计算服务</h5>
                        <h5><label for="">地点：</label><span>xx路xx楼xx号</span></h5>
                        <h5><label for="">时间：</label><span>2017.01.01</span>-<span></span><span>2017.01.03</span></h5>
                        <h5><label for="">内容：</label><span>了解大数据主流挖掘算丰富的数据挖掘海外项目经验为多家客户提供大数据.........</span></h5>
                    </div>
                </div>
            </div>
            <div class="student-course-cont">
                <div class="student-course-cont-msg">
                    <div class="student-course-cont-msg-img" >
                        <h5>掌握大数据计算服务</h5>
                    </div>
                    <div class="student-course-cont-msg-cont"  style="display: none;">
                        <h5>掌握大数据计算服务</h5>
                        <h5><label for="">地点：</label><span>xx路xx楼xx号</span></h5>
                        <h5><label for="">时间：</label><span>2017.01.01</span>-<span></span><span>2017.01.03</span></h5>
                        <h5><label for="">内容：</label><span>了解大数据主流挖掘算丰富的数据挖掘海外项目经验为多家客户提供大数据.........</span></h5>
                    </div>
                </div>
            </div> -->
                </div>
                <div>
                    <ul class="pagination" id="pagination">
                    </ul>
                    <input type="hidden" id="PageCount" runat="server" />
                    <input type="hidden" id="PageSize" runat="server" value="8" />
                    <input type="hidden" id="countindex" runat="server" value="10"/>
                    <!--设置最多显示的页码数 可以手动设置 默认为7-->
                    <input type="hidden" id="visiblePages" runat="server" value="7" />
                </div>
                </form>
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
<script type="text/javascript">
        function loadData(num) {
            $("#PageCount").val("89");
        }
</script>
<script>
    var atitle=$('.student-course-title').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-course-title-style');
        $(this).addClass('student-course-title-style');
        // if($(this).text()=='手机绑定'){
        //     $('.student-course-form-tel').css('display','block');
        //     $('.student-course-form-email').css('display','none');
        //     $('.student-encrypted').css('display','none');
        //     $('.student-course-changepass').css('display','none');
        // }
        // if($(this).text()=='邮箱绑定'){
        //     $('.student-course-form-tel').css('display','none');
        //     $('.student-course-form-email').css('display','block');
        //     $('.student-encrypted').css('display','none');
        //     $('.student-course-changepass').css('display','none');
        // }
        // if($(this).text()=='密保问题'){
        //     $('.student-course-form-tel').css('display','none');
        //     $('.student-course-form-email').css('display','none');
        //     $('.student-encrypted').css('display','block');
        //     $('.student-course-changepass').css('display','none');
        // }
    });

    $('.student-course-cont-msg').hover(function() {
        $(this).children('div:eq(0)').css('display','none');
        $(this).children('div:eq(1)').css('display','block');
    }, function() {
        $(this).children('div:eq(0)').css('display','block');
        $(this).children('div:eq(1)').css('display','none');
    });
</script>
</html>