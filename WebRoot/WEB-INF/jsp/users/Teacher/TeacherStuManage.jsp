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
<title>学生管理</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/teacher-stu-manage.css" >
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
                    <a href="<%=path%>/Poder/tofindTea"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherBasics" >基本资料</a>
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
                    <a href="<%=path%>/Poder/tofindStu" style="color: #ffc92a;">学生管理</a>
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
           <div class="teacher-stumanage-search">
               <form action="" method="">
                   <img src="../images/admin/teacher/搜索框搜索.png" alt="">
                   <input type="text" name="search" class="search" value="">
                   <button type="button" class="search-btn">搜 索</button>
               </form>
           </div>
           <div class="teacher-stumanage-con">
               <table>
                   <tr style="background: #f6f6f6;">
                       <td >姓名</td>
                       <td >手机号</td>
                       <td >课程名称</td>
                       <td >课程地点</td>
                       <td >课程时间</td>
                       <td >学生成绩</td>
                       <td >操作</td>
                   </tr>
                  <c:forEach items="${us}" var="uc">
                   <tr >
                       <td class="t-num">${uc.userName}</td>
                       <td class="t-name">${uc.phone}</td>
                       <%-- <c:forEach items="${uc.course1}" var="co"> --%>
                       <td class="t-class">${uc.course1.courseName}</td>
                    <%--    </c:forEach>
                      <c:forEach items="${uc.course1}" var="co"> --%>
                       <td class="t-coursename">${uc.course1.coursePlace}</td>
                      <%--  </c:forEach>
                       <c:forEach items="${uc.course1}" var="co"> --%>
                       <td class="t-coursesite">
                       		<h5>${uc.course1.courseTime}</h5>-<h5>${uc.course1.courseoverTime}
                       </td>
                       <%--  </c:forEach> --%>
                       <td class="t-coursetime">暂无</td>
                       <td class="t-coursegrade">修改/删除</td>
                   </tr>
                   </c:forEach>
                  
               </table>
           </div>
            
            <form id="form1" runat="server">
                <div>
                    <ul class="pagination" id="pagination">
                    </ul>
                    <input type="hidden" id="PageCount" runat="server" />
                    <input type="hidden" id="PageSize" runat="server" value="8" />
                    <input type="hidden" id="countindex" runat="server" value="10"/>
                    <!--设置最多显示的页码数 可以手动设置 默认为7-->
                    <input type="hidden" id="visiblePages" runat="server" value="7" />
                </div>
                    <script src="../js/myPage.js" type="text/javascript"></script>
              
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
</html>