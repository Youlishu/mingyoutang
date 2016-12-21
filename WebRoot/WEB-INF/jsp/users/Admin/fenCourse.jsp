<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>

	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>;
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-allocation.css">
	<title>分配管理</title>
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
                                <li><a href="<%=path%>/toadminStatistic" class="lia" ><span>统计分析</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindallStu" class="lia"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindOrd" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminCourse" class="lia"><span>课程管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofenCo" class="lia"><span style="color: #ffdb72;font-size: 24px;">分配管理</span></a></li>
                                <li><a href="<%=path%>/toadminExam" class="lia"><span>考试信息</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindporder" class="lia"><span>工单管理</span></a></li>
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
<div class="admin-statistic-con">
    <div class="admin-manage">
        <div class="admin-manage-left">
            <ul>
                <li><a href="<%=path%>/Admi/tofindfenCo" class="admin-left-a admin-manage-style-change">分配讲师课程<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">分配企业讲师<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
            <div class="admin-allocation-form1">
                <div class="admin-people-classify">
                    <div class="admin-people-classify-title-input">
                        <img src="../images/admin/搜索.png" alt="">
                        <input type="text" class="admin-people-search" value="">
                        <button type="button" class="admin-people-search-btn">搜 索</button>
                        <button type="button" class="admin-people-add-btn admin-people-add-stu-btn">分配课程</button>
                        
                    </div>
                    
                    <div class="admin-people-classify-list">
                     <div class="admin-manage-layer-stu-msg">
                     <form action="<%=path%>/Admi/toaddfenco" method="post">
                     <div><label for="">分 配 的 讲师</label><select  name="userTea" id="" class="course-name">
                     <c:forEach items="${teaList}" var="tea">
                     <option value="${tea.userId},${tea.trueName},${tea.userRank}">
                     					${tea.trueName},${tea.userRank}
                     </option>
                     </c:forEach>
                     </select></div>
                     <div><label for="">分 配 的 课 程 </label><select   name="fencourse" id="" class="course-name">
                     <c:forEach items="${couList}" var="cou">
                     <option value="${cou.courseId},${cou.courseName},${cou.courseGrade},${cou.courseStyle},${cou.coursePlace},${tea.courseTime},${tea.courseoverTime}">
                    	 课程名称：${cou.courseName}
                  	  	 课程等级：${cou.courseGrade}
       	            	 课程模式：${cou.courseStyle}
                   	 	 课程场地：${cou.coursePlace}
                  	  	 课程时间：${cou.courseTime}至${cou.courseoverTime}
                     </option>
                     </c:forEach>
                     </select></div>
                     <div><input type="submit" class="layer-sub" value="确 认 分 陪"></div>
                     </form>
                     </div>
                        
                        <div class="classify-list-right">
                            <span class="area-span">多选</span>
                            <a href="javascript:void(0);" class="show-msg">更多<img src="../images/admin/下三角.png" alt=""></a>
                            <a href="javascript:void(0);" class="hidden-msg" style="display:none;">收起<img src="../images/admin/上三角.png" alt=""></a>
                        </div>
                    </div>

                </div> 
                <div class="admin-allocation-form1-table">
               		<table>
                        <tr class="admin-allocation-form1-table-list">
                            <td style="width: 221px;">分配的教师</td>
                            <td style="width: 190px;">教师段位</td>
                            <td style="width: 156px;">教师手机号</td>
                            <td style="width: 155px;">分配的课程名称</td>
                            <td style="width: 155px;">课程模式</td>
                            <td style="width: 218px;">课程场地</td>
                            <td style="width: 218px;">课程时间</td>
                            <td style="width: 218px;">操作</td>
                        </tr>
                        <c:forEach items="${usList}" var="ul">
                        <tr>
                            <td>${ul.trueName}</td>
                            <td>${ul.userRank}</td>
                            <td>${ul.phone}</td>
                            <td>
                            <c:forEach items="${ul.course}" var="uc">
                            <h5>${uc.courseName}</h5>
                            </c:forEach>
                            </td>
                            <td>
                            <c:forEach items="${ul.course}" var="uc">
                            <h5>${uc.courseStyle}</h5>
                             </c:forEach>
                             </td>
                              <td>
                             <c:forEach items="${ul.course}" var="uc">
                            <h5>${uc.coursePlace}</h5>
                            </c:forEach>
                            </td>
                             <td>
                             <c:forEach items="${ul.course}" var="uc">
                          ${uc.courseTime}-${uc.courseoverTime}
                            </c:forEach>
                            </td>
                            <td>删除/修改</td>
                        </tr>
                       </c:forEach>
                    </table>
                </div>
            </div>
          
            <div class="admin-allocation-form2"></div>
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
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
            <a href="http://www.miitbeian.gov.cn/">
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
   /*  $('.admin-left-a').click(function() {
       $('.admin-left-a').removeClass('admin-manage-style-change');
       $('.admin-left-a').children('img').css('display','none');
       $(this).addClass('admin-manage-style-change');
       $(this).children('img').css('display','block');
       if($(this).text()=='分配课程'){
        $('.admin-allocation-form1').css('display','block');
        $('.admin-allocation-form2').css('display','none');
       }
       if($(this).text()=='分配讲师'){
        $('.admin-allocation-form1').css('display','none');
        $('.admin-allocation-form2').css('display','block');
       }
    }); */

 <%--    $('.admin-people-add-stu-btn').click(function() {
        layer.open({
            type: 1,
            skin: $(this), 
            title:['分配课程','background:#ffc92a;font-size:20px;font-weight:bold;height:76px;padding-top:16px;padding-left:60px;'],
            area: ['822px', '400px'], 
            content: '<div class="admin-manage-layer-stu-msg"><form action="<%=path%>/Admi/tofindfen" method="post"><div><label for="">分 配 的 讲师</label><select type="text" name="company-name" class="layer-input"><c:forEach items="${teaList}" var="tea"><option value="${tea.trueName},${tea.userRank}">${tea.trueName}${tea.userRank}</option></c:forEach></select></div><div><label for="">分 配 的 课 程 </label><select type="text" name="course" class="layer-input"><c:forEach items="${couList}" var="cou"><option value="${cou.courseName},${cou.courseGrade},${cou.courseStyle},${cou.coursePlace},${tea.courseTime},${tea.courseoverTime}">${cou.courseName}${cou.courseGrade}${cou.courseStyle}${cou.coursePlace}${tea.courseTime}至${tea.courseoverTime}</option></c:forEach></select></div><div><input type="submit" class="layer-sub" value="确 认 分 陪"></div></form></div>'
        });
    }); --%>
</script>
</html>