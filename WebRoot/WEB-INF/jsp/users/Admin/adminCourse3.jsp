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
<meta http-equiv="charset" content="UTF-8">
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-allocation.css">
	<title>课程管理</title>
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
                               <li><a href="<%=path%>/toadminStatistic" class="lia" ><span style="color: #ffdb72;font-size: 24px;">统计分析</span></a></li>
                                <li><a class="lia" href="<%=path%>/Admi/tofindallStu"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindOrd" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminCourse" class="lia"><span>课程管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofenCo" class="lia"><span>分配管理</span></a></li>
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
                <li><a href="<%=path%>/toadminCourse" class="admin-left-a admin-manage-style-change">创建新课程<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="<%=path%>/Course/tofindallCo" class="admin-left-a">已创建的课程<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="<%=path%>/Course/tochoseCo" class="admin-left-a">发布课程<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="<%=path%>/Course/tofindCourse" class="admin-left-a">已发布课程信息<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
           <div class="admin-allocation-form4">
                <div class="admin-allocation-form3-table">
                    <table id="coursea">
                        <tr class="admin-allocation-form3-title">
                        	<td style="width: 98px;">课程代码</td>
                            <td style="width: 221px;" id="coursea">已发布课程名称</td>
                            <td style="width: 98px;">课程模式</td>
                            <td style="width: 186px;">报名人数/课程人数容量</td>
                            <td style="width: 95px;">上课时间</td>
                            <td style="width: 218px;">上课地点</td>
                            <td style="width: 122px;">修改/删除</td>
                        </tr>
                        <c:forEach items="${courseList}" var="co">
                        <tr>
                     		<td>${co.courseId}</td>
                            <td>${co.courseName}</td>
                       
                            <td>${co.courseStyle}</td>
                     
                       
                            <td>${co.courseNum}</td>
                        
                         
                            <td>${co.courseTime}-${co.courseoverTime}</td>
                         
                            <td>${co.coursePlace}</td>
                          
                            <td class="change-delete">
                                <a href="javascript:void(0);" class="change-a">修改</a>
                                <a href="javascript:void(0);" class="delete-a">删除</a>
                            </td>
                            
                        </tr> 
                        </c:forEach>
                        <%-- <tr>
                        <c:forEach items="${courseList}" var="course">
                            <td>${course.courseName}</td>
                        </c:forEach>
                        <c:forEach items="${courseList}" var="course">
                            <td>${course.courseStyle}</td>
                        </c:forEach>
                        <c:forEach items="${courseList}" var="course">
                            <td>${course.courseNum}</td>
                         </c:forEach>
                         <c:forEach items="${courseList}" var="course">
                            <td>${course.courseTime}-${course.courseoverTime}</td>
                         </c:forEach>
                         <c:forEach items="${courseList}" var="course">
                            <td>${course.coursePlace}</td>
                         </c:forEach>
                            <td class="change-delete">
                                <a href="javascript:void(0);" class="change-a">修改</a>
                                <a href="javascript:void(0);" class="delete-a">删除</a>
                            </td>
                        </tr> 
                         --%>
                    </table>
                    <a href="javascript:void(0);" class="add-class" style="width: 941px;"><img src="../images/admin/+.png" alt="">新增课程信息</a>
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
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
            <a href="http://www.miitbeian.gov.cn/">
                <p>浙ICP备16004637号 -1</p>
            </a>

        </div>
    </div>

</footer>
</body>
<%-- <script type="text/javascript">
        function loadData(num) {
            $("#PageCount").val("89");
        }
</script>

<script>
    $('.admin-left-a').click(function() {
       $('.admin-left-a').removeClass('admin-manage-style-change');
       $('.admin-left-a').children('img').css('display','none');
       $(this).addClass('admin-manage-style-change');
       $(this).children('img').css('display','block');
       if($(this).text()=='创建新课程'){
        $('.admin-allocation-form1').css('display','block');
        $('.admin-allocation-form2').css('display','none');
        $('.admin-allocation-form3').css('display','none');
        $('.admin-allocation-form4').css('display','none');
       }
       if($(this).text()=='发布课程'){
        $('.admin-allocation-form1').css('display','none');
        $('.admin-allocation-form2').css('display','block');
        $('.admin-allocation-form3').css('display','none');
        $('.admin-allocation-form4').css('display','none');
       }
       if($(this).text()=='课程信息'){
        $('.admin-allocation-form1').css('display','none');
        $('.admin-allocation-form2').css('display','none');
        $('.admin-allocation-form3').css('display','block');
        $('.admin-allocation-form4').css('display','none');
       }
       if($(this).text()=='发布课程信息'){
        $('.admin-allocation-form1').css('display','none');
        $('.admin-allocation-form2').css('display','none');
        $('.admin-allocation-form3').css('display','none');
        $('.admin-allocation-form4').css('display','block');
         alert("哈哈");
        
		$.ajax({
			type:'get',
			url:'<%=path%>/Course/tofindCourse',
			data:{
				
			},
			/* datatype:'json',  */
			contentType:'application/json,charset=utf-8',
			success:function(data) {
				
				alert(data);
				var data= eval( '(' + data + ')' ); 
				alert(data); 
				
			for (var i = 0; i < data.length; i++) {
				var obj=data[i];
					alert(obj.coursePlace);
					
					if(document.getElementById('coursea').rows.length<(data.length+1)){
						$('#coursea').append('<tr>'+'<td>'+obj.courseName+'</td>'+'<td>'+obj.courseStyle+'</td>'+'<td>'+obj.courseNum+'</td>'+'<td>'+obj.courseTime+'</td>'+'<td>'+obj.coursePlace+'</td>'+'<td>'+'<a href="">'+'修改'+'</a>'+'<a href="">'+'删除'+'</a>'+'</td>'+'</tr>');
					}
				} 
			},
			error:function() {
				alert("失败了");
					return false;
			}
		})
        
       }
    });

</script> --%>
</html>