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
<title>提交工单</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-porder.css" >
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
                    <a href="<%=path%>/Poder/tofindTeaOrder">订单管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherPorder" style="color: #ffc92a;">工单申请</a>
                </div>
            </div>
        
        </div>
        <div class="student-set-right">
            <div class="porder-change-msg">
                 <a href="javascript:void(0);" class="student-porder-title-style">讲师提升</a><a href="javascript:void(0);">工单信息</a>
            </div>
            <div class="porder-change-msg-form1" >
                <div class="porder-cont">
                    <form action="<%=path%>/Poder/toaddpo" method="post" enctype="multipart/form-data" >
                        
                        <div><label >姓名</label><input name="username" value="${sessionScope.user.trueName}" readonly="true"/></div>
                        <div><label for="">学历</label><input type="text" name="edt" value="${sessionScope.user.diploma}" readonly="true"/></div>
                        <div>
                            <label for="">手机号</label>
                            <input type="text" name="tel" value="${sessionScope.user.phone}" readonly="true"/>
                            <span class="warning"><img src="../images/admin/student/icon/警告.png" alt="">请您填写正确的信息，审核处理会更快哦！</span>
                        </div>
                        <div>讲师级别：
                        <input type="text" name="poderrank" value="${sessionScope.user.userRank}" readonly="true"/></div>
                        <div>
                            <label for="">申请讲师级别</label>
                            <select name="level" id="" class="select1" id="level" >
                                <option value="">-- 请选择 --</option>
                                <option value="Ⅰ级绿带大师">Ⅰ级绿带大师</option>
                                <option value="Ⅱ级黑带大师">Ⅱ级黑带大师</option>
                                <option value="Ⅲ级黑带宗师">Ⅲ级黑带宗师</option>
                            </select>
                        </div>
                        <div>
                        <label for="" name="city">所在地区</label>
                         <input type="text" name="city" value="${sessionScope.user.area}" readonly="true"/>
                        </div>
                        <div class="porder-upload">
                            <label for="">上传证书</label>
                            <div name="cert" class="porder-img">
                              
                                <span>
                                    请上传您的相关证书<br/>
                                    要求证书信息、个人面目清晰可见.
                                </span>
                                    
                                <span>
                                    格式支持jpg、gif、png、jpeg、bmp，
                                    文件大小不超过2MB
                                </span>
                                <input type="file" class="file" name="file" id="file">
                                <button type="button" class="button">上传照片</button>
                            </div>
                        </div >
                        <div class="porder-sub"><input type="submit" value="完 成" class="sub"><input type="reset" value="取消" class="reset"></div>
                    </form>
                </div>
            </div>
            <c:forEach items="${list}" var="co">
            <div class="porder-change-msg-form3" style="display: none;">
            
                <div class="porder-change-msg-form3-msg">
                    <h2 style="background: #e1e1e1;">讲师申请<img src="../images/admin/student/icon/清空删除.png" alt=""></h2>
                    <p><label for="">讲师</label><span>${co.poderName}</span></p>
                    <p><label for="">学历</label><span>${co.poderlit}</span></p>
                    <p><label for="">手机号</label><span>${co.poderphone}</span></p>
                    <p><label for="">讲师原段位</label><span>${co.poderrank}</span></p>
                    <p><label for="">申请段位</label><span>${co.poderGrade}</span></p>
                </div>
               
                <div class="porder-change-msg-form3-msg">
                    <h2>审核详情</h2>
                    <ul>
                        <li class="check-title">
                            <span>提交时间</span>
                            <span>等待时间</span>
                            <span>审核状态</span>
                        </li>
                        <li class="check-cont">
                            <span>${co.poderTime}</span>
                            <span>2天</span>
                            <span class="check-cont-state">审核中</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="porder-change-msg-form4" style="display: none;">
                <img src="../images/admin/student/完成.png" alt="">
                <p>提交成功</p>
                <p>请等待审核</p>
            </div>
  			</c:forEach>
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
		<%-- function topoder(){
			alert("aaaa");
			var username=$('#username').val();
			var edt=$('#edt').val();
			var tel=$('#tel').val();
			var poderrank=$('#poderrank').val();
			var level=$('#level').val();
			var city=$('#city').val();
			var file=$('#file').val();
			$.ajax({
				type:'get',
				url:'<%=path%>/Poder/toaddpo',
				enctype="multipart/form-data",
				data:{
					'username':username,
					'edt':edt,
					'tel':tel,
					'poderrank':poderrank,
					'level':level,
					'city':city,
					'file':file		
				},
				/* datatype:'json', */
				
				contentType:'application/json,charset=utf-8',
				success:function(data) {
					alert(data);
					
				},
				error:function() {
					alert("shibai");
						return false;
				}
			})
			
		} --%>
</script>
<script>
    $('.button').click(function(){
        $('.file').click();
    });
    var atitle=$('.porder-change-msg').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-porder-title-style');
        $(this).addClass('student-porder-title-style');
        if($(this).text()=='讲师提升'){
            $('.porder-change-msg-form1').css('display','block');
            $('.porder-change-msg-form2').css('display','none');
            $('.porder-change-msg-form3').css('display','none');
        }
        if($(this).text()=='工单信息'){
            $('.porder-change-msg-form1').css('display','none');
            $('.porder-change-msg-form2').css('display','none');
            $('.porder-change-msg-form3').css('display','block');
        }
    });
</script>
</html>