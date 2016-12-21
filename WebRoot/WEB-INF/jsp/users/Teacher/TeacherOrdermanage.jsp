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
<title>订单管理</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
    <script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-orderman.css" >
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
                    <a href="<%=path%>/toTeacherCenter"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTea" >基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaph">安全设置</a>
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
                    <a href="<%=path%>/Poder/tofindTeaOrder" style="color: #ffc92a;">订单管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherPorder">工单申请</a>
                </div>
            </div>
        </div>
        <div class="student-set-right">
            <div class="manage-orderman-msg">
                <a href="javascript:void(0);" class="student-orderman-title-style">全部订单</a><a href="javascript:void(0);">已付款</a><a href="javascript:void(0);">未付款</a><a href="javascript:void(0);">我的优惠券</a><a href="javascript:void(0);">申请发票</a>
            </div>
            <div class="manage-orderman-form1" >
                
                <div class="manage-orderman-con">
                 <c:forEach items="${orList}" var="ac">
                    <div class="manage-orderman-con-list">
                        <ul>
                       	 <li class="manage-orderman-con-list-title">
                                <span>${ac.classOrderName}</span>
                                <span>价格</span>
                                <span>交易状态</span>
                            </li >
                            <li class="manage-orderman-con-list-cont">
                                <span>
                                    <img src="../images/admin/student/kechengbg.png" alt="">
                                    <h5>${ac.classOrderTime}-${ac.classOrderoverTime}</h5>
                                    <h5>${ac.classOrderPlace}</h5>
                                    <p>${ac.classcoursedetail}</p>
                                </span>
                                <span>${ac.classOrderFee}</span>
                                <span>已完成</span>
                            </li>
                        </ul>
                    </div>
                   </c:forEach> 
                </div>
                
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
    var atitle=$('.manage-orderman-msg').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-orderman-title-style');
        $(this).addClass('student-orderman-title-style');
        if($(this).text()=='全部订单'){
            $('.manage-orderman-form1').css('display','block');
            $('.manage-orderman-form2').css('display','none');
        }
        if($(this).text()=='申请发票'){
            $('.manage-orderman-form1').css('display','none');
            $('.manage-orderman-form2').css('display','block');
        }
    });

    $('.get-invoice').click(function() {
        layer.open({
            type: 1,
            skin: $(this), 
            title:[$(this).text(),'background:#ffc92a;font-size:20px;font-weight:bold;height:76px;padding-top:16px;padding-left:60px;'],
            area: ['852px', '600px'], 
            content: '<div class="orderman-layer"><div class="manage-orderman-con" style="background: #f6f6f6;"><div class="manage-orderman-con-list" style="border: 0;"><ul><li class="manage-orderman-con-list-title"><span>这是一个课程</span><span>价格</span><span>交易状态</span></li><li class="manage-orderman-con-list-cont"><span><img src="../images/admin/student/kechengbg.png" alt=""><h5>2017.2.1开课</h5><h5>文一西路创意园C栋3楼501</h5><p>课程内容课程内容课程内容课程内容.....</p></span><span>￥1200</span><span>已完成</span></li></ul></div></div><div class="orderman-layer-form"><form action="" method="">    <div><label for="">收货人</label><input type="text" name="username"></div><div><label for="">电话号码</label><input type="text" name="tel"></div><div><label for="">企业名称</label><input type="text" name="compant-name"></div><div><label for="">收货地址</label><input type="text" name="address"></div><div><input type="submit" class="orderman-layer-sub" value="确认申请"></div></form></div></div>'
        });
    });

    $('.all').click(function() {
         $("input[name='a']").prop("checked",$(this).prop("checked"));
    });
</script>
</html>