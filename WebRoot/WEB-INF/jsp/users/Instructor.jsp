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
    <title>大数据讲师认证</title>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
	<script type="text/javascript" src="<%=path%>/js/index_lunbo.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/instructor.css">
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
                                <li><a href="<%=path%>/toInstructor" class="lia"><span style="color: #ffdb72;">大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
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
                        <div class="pro_left_show" id="js_show1" style="background-color: #e2e0de;"><img src="<%=path%>/images/instructor/icon/triangle1.png" alt=""><a href="javascript:void(0);">专家介绍</a></div>   
                    </div>
                    <div class="pro_left">
                        <div class="pro_left_show" id="js_show2" style="background-color: #fafafa;"><img src="<%=path%>/images/instructor/icon/triangle1.png" alt="" style="display: none;"><a href="javascript:void(0);">师资认证级别</a></div> 
                    </div>
                    <div class="pro_left">
                        <div class="pro_left_show" id="js_show3" style="background-color: #fafafa;"><img src="<%=path%>/images/instructor/icon/triangle1.png" alt="" style="display: none;"><a href="javascript:void(0);">考核流程</a></div> 
                    </div>
                </div>
                <div class="right">
                    <div class="pro_right pro_right1">
                        <ul class="pro_right_ul">
                            <li>大数据讲师认证</li>
                            <li></li>
                            <li class="li2"></li>
                        </ul>
                    </div>
                    <div class="display_show1" >
                        <div class="experts" >
                            <div class="experts_img">
                                <img src="<%=path%>/images/instructor/1_qiangzh02.jpg" alt="赵教授">
                            </div>
                            <div class="experts_des">
                                <h1>赵强教授明优堂CEO</h1>
                                <p>加拿大约克大学舒立克Schulich商学院大数据教授</p>
                                <p>加拿大ARC数据集团创始人</p>
                                <p>多伦多大学、圭尔夫大学生物统计和人工智能双硕士学位</p>
                                <p>研发的直复营销绩效统计数学模型Uplift Model为北美多家企业使用</p>
                                <p>研发的基于顾客爱好和行为的个性化产品推荐引擎，每年为北美用户创造上百万美金额外利润</p>
                                <p>研发的创新型忠诚顾客双向反馈系统为多家企业的顾客战略提供决策和监控系统</p>
                                <p>为中国企业提供北美网络营销咨询服务并在北美获得众筹第二名</p>
                                <p>研发的全球首创的大数据营销实训平台，向北美大学提供基于大数据实训服务</p>
                            </div>
                        </div>
                        <div class="experts_fo">
                            <div class="experts_fo_title">
                                <h1>大 数 据 职 业 认 证 师 资 认 证 体 系</h1>
                                <p>Authentication</p>
                            </div>
                            <div class="experts_fo_img">
                                <img src="<%=path%>/images/instructor/peixn.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="display_show2" style="display: none;">
                        <div class="level">
                            <div class="level_title">
                                <h1>师资认证资格</h1>
                                <p>Qualificaions</p>
                            </div>
                            <div class="leve_img">
                                <img src="<%=path%>/images/instructor/99.jpg" alt="">
                            </div>
                        </div>
                        <div class="level_fo">
                            <div class="level_fo_des1">
                                <div class="level_fo_des1_title">
                                    <img src="<%=path%>/images/instructor/icon/triangleDown1.png" alt="园">
                                    <h5>Ⅰ级：认证绿带讲师</h5>
                                </div>
                                <div class="level_fo_des1_des"></div>
                            </div>
                            <div class="level_fo_des2">
                                 <div class="level_fo_des2_title">
                                    <img src="<%=path%>/images/instructor/icon/triangleDown1.png" alt="园">
                                    <h5>Ⅱ级：认证黑带讲师</h5>
                                </div>
                                <div class="level_fo_des2_des"></div>
                            </div>
                            <div class="level_fo_des3">
                                 <div class="level_fo_des3_title">
                                    <img src="<%=path%>/images/instructor/icon/triangleDown1.png" alt="园">
                                    <h5>Ⅲ级：认证黑带讲师</h5>
                                </div>
                                <div class="level_fo_des3_des"></div>
                            </div>
                        </div>
                        <div class="level_fo_fo">
                            <h4>认证黑带讲师可享受以下权利</h4>
                            <p>有权参与案例开发</p>
                            <p>成为官方外聘讲师</p>
                            <h5>认证黑带大师可享受以下权利</h5>
                            <p>成为培养大数据讲师的专家</p>
                        </div>
                    </div>
                    <div class="display_show3" style="display: none;">
                        <div class="flow">
                            <div class="flow_title">
                                <h1>认证讲师培训及考试流程</h1>
                                <p><span>Technological</span><span>process</span></p>
                            </div>
                            <div class="flow_img">
                                <img src="<%=path%>/images/instructor/77.jpg" alt="">
                            </div>
                        </div>
                        <div class="flow_fo">
                            <div class="flow_fo_des1">
                                <div class="flow_fo_des1_1"><a href="">讲师申请</a></div>
                                <div class="des1_right"><img src="<%=path%>/images/instructor/icon/triangleRight.png" alt=""></div>
                                <div class="flow_fo_des1_2"><a href="">讲师培训</a></div>
                            </div>
                            <div class="flow_fo_des2">
                                <div class="flow_fo_des2_1"><a href="">官网公告</a></div>
                                <div class="flow_fo_des2_img"><img src="<%=path%>/images/login/mingyoutanglogo-01.png" alt=""></div>
                                <div class="des2_down"><img src="<%=path%>/images/instructor/icon/triangleDown.png" alt=""></div>
                                <div class="flow_fo_des2_2"><a href="">讲师培训</a></div>
                            </div>
                            <div class="flow_fo_des3">
                                <div class="flow_fo_des3_1"><a href="">颁发认证</a></div>
                                <div class="flow_fo_des3_2"><a href="">专家评审</a></div>
                                <div class="des3_down"><img src="<%=path%>/images/instructor/icon/triangleDown.png" alt=""></div>
                                <div class="flow_fo_des3_3"><a href="">理论考试课程试讲</a></div>
                                
                                <div class="des3_left"><img src="<%=path%>/images/instructor/icon/triangleLeft.png" alt=""></div>
                                <div class="des3_left1"><img src="<%=path%>/images/instructor/icon/triangleLeft.png" alt=""></div>
                                <div class="des3_up"><img src="<%=path%>/images/instructor/icon/triangleUp.png" alt=""></div>
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