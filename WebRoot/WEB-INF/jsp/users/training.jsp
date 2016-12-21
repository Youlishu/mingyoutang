<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
 	<%-- <base href="<%=basePath%>"> --%>
	<meta charset="UTF-8">
	<title>大数据企业内训</title>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/training.css">
</head>

<body>
 <div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
                <div class="logimg">
                <img src="<%=path%>/images/Professiona/mingyoutanglogo2.png" alt="">
                </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
                        <div  class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav navbar-right" >
                                <li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span style="color: #ffdb72;">大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
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
    <div class="pro_contant">
        
            <div class="pro_ms">
                <div class="left">
                    <div class="pro_left">
                        <div class="pro_left_show changestyle" id="js_show1"  style="background-color: #e2e0de;"><img src="images/instructor/icon/triangle1.png" alt=""><a href="javascript:void(0);">项目优势</a></div>   
                    </div>
                    <div class="pro_left">
                        <div class="pro_left_show" id="js_show2" style="background-color: #fafafa;" ><img src="images/instructor/icon/triangle1.png" alt=""  style="display: none;"><a href="javascript:void(0);">合作条件及流程</a></div> 
                    </div>
                    <div class="pro_left">
                        <div class="pro_left_show" id="js_show3" style="background-color: #fafafa;"><img src="images/instructor/icon/triangle1.png" alt=""  style="display: none;"><a href="javascript:void(0);">大数据培训合作</a></div> 
                    </div>
                </div>
                <div class="right">
                    <div class="pro_right pro_right1">
                        <ul class="pro_right_ul">
                            <li>大数据企业内训</li>
                            <li></li>
                            <li class="li2"></li>
                        </ul>
                    </div>
                    
                        <div class="display_show1" >
                            <div class="advantage">
                                <div class="advantage_title">
                                        <h1>项目优势</h1>
                                        <p>advantage</p>
                                        <img src="images/training/tu_03.png" alt="">
                                </div>
                                <div class="advantage_des">
                                    <p>行业人才需求风口</p>
                                    <p>项目支持合作品牌优势</p>
                                    <p>北美和国内的研发团队</p>
                                    <p>国际顶级师资任教</p>
                                    <p>跨行业标准课程体系与认证体系</p>
                                    <p>实战案例教学</p>
                                </div>
                            </div>
                        </div>
                        <div class="display_show2" style="display: none;">
                            <div class="condition">
                                <div class="condition_title">
                                    <h1>合作条件</h1>
                                    <p>condition</p>
                                    <h5>青睐大数据行业、拥有一定的资源</h5>
                                    <img src="images/training/大数据企业内训-合作条件及流程-标注_03.png" alt="">
                                </div>
                                <div class="condition_des">
                                    <div class="condition_des_title">
                                        <h1>合作流程</h1>
                                        <p><span>cooperation</span><span>process</span></p>
                                    </div>
                                    <div class="condition_dess">
                                        <div class="condition_dess_img">
                                            <img src="images/training/大数据企业内训-合作条件及流程-标注_06.png" alt="">
                                        </div>
                                        <div class="condition_dess_des">
                                            <p>提交合作意愿申请</p> 
                                            <img src="images/instructor/icon/triangleDown.png" alt="" class="img1">
                                            <p>合作面谈</p>
                                            <img src="images/instructor/icon/triangleDown.png" alt="" class="img2">
                                            <p>合作签约</p>
                                            <img src="images/instructor/icon/triangleDown.png" alt="" class="img3">
                                            <p>共同实施</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="display_show3" style="display: none;">
                            <div class="tcooperation">
                                <div class="tcooperation_title">
                                    <h1>大数据培训</h1>
                                    <p><span>Training</span><span>cooperation</span></p>
                                </div>
                                <div class="tcooperation_des1">
                                    <div class="tcooperation_des_1">
                                        <img src="images/training/yuanxiao.png" alt="">
                                        <h1>院校合作</h1>
                                        <p><span>专业共建</span><span>课程置换</span></p>
                                        <p><span>实训室建设</span><span>认证考试</span></p>
                                        <div class="tcooperation_des_fo"></div>
                                    </div>
                                    <div class="tcooperation_des_2">
                                        <img src="images/training/peixun_07.png" alt="">
                                        <h1>培训合作</h1>
                                        <p><span>课程体系导入</span><span>认证考试</span></p>
                                        <p>实验室建设</p>
                                         <div class="tcooperation_des_fo"></div>
                                    </div>
                                    <div class="tcooperation_des_3">
                                        <img src="images/training/qiye.png" alt="">
                                        <h1>合作企业</h1>
                                        <p><span>课程合作</span><span>企业内训</span></p>
                                        <p><span>私董会</span><span>实战沙龙</span></p>
                                         <div class="tcooperation_des_fo"></div>
                                    </div>
                                </div>
                                <div class="tcooperation_des2">
                                    <a href="">申请合作</a>
                                </div>
                            </div>
                        </div>                
                   
                </div>
            </div>
    
    </div>
    <!--  -->


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
    var Pulldown=new clickshow;
</script>
</html>