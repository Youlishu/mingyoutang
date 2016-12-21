<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="charset" content="UTF-8">
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.raty.min.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
   <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-workorder.css">
	<title>工单管理</title>
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
                                <li><a href="<%=path%>/Admi/tofindporder" class="lia"><span style="color: #ffdb72;font-size: 24px;">工单管理</span></a></li>
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
                <li><a href="javascript:void(0);" class="admin-left-a admin-manage-style-change">申请讲师工单<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">申请企业工单<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">提升讲师级别<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">企业申请讲师<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">讲师打分工单<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
            <div class="admin-workorder-form1" >
                <div class="admin-workorder-form1-table" style="background: #eee;">
                    <c:forEach items="${porder}" var="po">
                    <table>
                    	<tr>
                           <td style="width: 114px;">
                                <img src="<%=path%>/${po.poderpath}" alt="">
                            </td>
                            <td style="width: 128px;">
                                <label for="">姓名</label><span class="admin-workorder-form1-table-name">${po.poderName}</span><br/>
                                <label for="">学历</label><span>${po.poderlit}</span>
                            </td>
                            <td style="width: 175px;">
                                <label for="">手机号</label><span>${po.poderphone}</span><br/>
                                <label for="">所在地区</label><span>${po.poderarea}</span>
                            </td>
                            <td style="width: 285px;">
                                <label for="">学生级别</label><span>${po.poderrank}</span><br/>
                                <label for="">申请讲师级别</label><span>${po.poderGrade}</span>
                            </td>
                            <td style="width: 200px;">
                                <label for="">提交时间</label><span>${po.poderTime}</span><br/>
                                <label for="">等待时间</label><span>2天</span>
                            </td>
                            
                            <td style="width: 45px;" class="change-delete">
                                <a href="javascript:void(0);" class="change-a">通过</a><br/><a href="javascript:void(0);" class="delete-a">拒绝</a>
                            </td>
                        </tr>
						</table>
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

</html>