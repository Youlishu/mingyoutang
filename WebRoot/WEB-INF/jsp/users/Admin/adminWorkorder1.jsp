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
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-2.1.3.min.js"></script>
    <script src="../js/jqPaginator.min.js"></script>
    <script src="../js/myPage.js"></script>
    <script src="../js/jquery.raty.min.js"></script>
    <link rel="stylesheet" href="../css/myPage.css">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/admincommon.css">
    <link rel="stylesheet" href="../css/admin-admincommon.css">
    <link rel="stylesheet" href="../css/admin-workorder.css">
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
                <li><a href="admin-workorder.html" class="admin-left-a ">申请讲师工单<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="admin-workorder1.html" class="admin-left-a admin-manage-style-change">申请企业工单<img src="../images/admin/三角形.png" alt="" ></a></li>
                <li><a href="admin-workorder2.html" class="admin-left-a ">提升讲师级别<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="admin-workorder3.html" class="admin-left-a">企业申请讲师<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="admin-workorder4.html" class="admin-left-a ">讲师打分工单<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
            <div class="admin-workorder-form2">
                <div class="admin-workorder-form2-table" style="background: #eee;">
                    <table>
                        <tr >   
                            <td style="width: 118px;">
                                <img src="../images/admin/student/暂无认证.png" alt="">
                            </td>
                            <td style="width: 250px;">
                                <label for="">企业名称</label><span class="admin-workorder-form1-table-name">杭州数空科技有限公司</span><br/>
                                <label for="">企业执照编码</label><span>12315641234574798</span>
                            </td>
                            <td style="width: 175px;">
                                <label for="">企业法人</label><span>王企鹅</span><br/>
                                <label for="">手机号</label><span>131****6115</span>
                            </td>
                            <td style="width: 200px;">
                                <label for="">提交时间</label><span>2016.06.01 15:30</span><br/>
                                <label for="">等待时间</label><span>2天</span>
                            </td>
                            <td style="width: 200px;">
                                <label for="">所属行业</label><span>大数据</span><br/>
                                <label for="">企业人数</label><span>50-100人</span>
                            </td>
                            <td style="width: 45px;" class="change-delete">
                                <a href="javascript:void(0);" class="change-a">通过</a><br/><a href="javascript:void(0);" class="delete-a">拒绝</a>
                            </td>
                        </tr>

                    </table>
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

<script>
    $('#star').raty({
      score: function() {
        return $(this).attr('data-score');
      }
    });
    $('#star1').raty({
      score: function() {
        return $(this).attr('data-score');
      }
    }); 
</script>
</html>