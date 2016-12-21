/**
 * Created by Administrator on 2016/11/15 0015.
 */
(function () {
    // setbg();
    //
    // function setbg() {
    //     var bg = document.getElementsByClassName('top');
    //     var btn_t = document.getElementsByClassName('btn_t');
    //     var btn_m = document.getElementsByClassName('btn_m');
    //     var con = document.getElementById('con');
    //     var timer = null;
    //     var next = settext();
    //     console.log(btn_m);
    //     var index=1;
    //     btn_t[0].addEventListener('click', function () {
    //         if(index>=4){
    //             index=1;
    //         }else {
    //             index++
    //         }
    //         next(1);
    //         bg[0].style.background='url("./img/0'+index+'.jpg")';
    //     });
    //     btn_m[0].addEventListener('click',function () {
    //         if(index<=1){
    //             index=4;
    //         }else {
    //             index--;
    //         }
    //         next(-1);
    //         console.log(next(-1));
    //         bg[0].style.background='url("./img/0'+index+'.jpg")';
    //     });
    //
    //     timer=setInterval(function(){  //打开定时器
    //               //让图片的索引值次序加1，这样就可以实现顺序轮播图片
    //         if(index>5){ //当到达最后一张图的时候，让iNow赋值为第一张图的索引值，轮播效果跳转到第一张图重新开始
    //             index--;
    //         }else if (index<=1){
    //             index=4;
    //         }
    //         next(-1);
    //         bg[0].style.background='url("./img/0'+index+'.jpg")';//模拟触发数字按钮的click
    //         index++;
    //     },2000);//2000为轮播的时间
    //     con.onmouseover=function () {
    //         clearInterval( timer );
    //     };
    //     con.onmouseout=function () {
    //         timer=setInterval(function(){  //打开定时器
    //             index++;       //让图片的索引值次序加1，这样就可以实现顺序轮播图片
    //             if(index>=4){ //当到达最后一张图的时候，让iNow赋值为第一张图的索引值，轮播效果跳转到第一张图重新开始
    //                 index=1;
    //             }
    //             next(0);
    //             bg[0].style.background='url("./img/0'+index+'.jpg")';//模拟触发数字按钮的click
    //         },2000);
    //     }
    //
    //
    // }
    // function settext() {
    //     this.index = 0;
    //     var self = this;
    //     var title = document.getElementById('title');
    //     var    art = document.getElementById('art');
    //     // var arts = document.querySelectorAll(art>p);
    //     // console.log(arts);
    //     var article = [
    //         {
    //         title:'大数据培训合作方式',
    //         art:'<p>院校合作：专业共建 课程置换 实训室建设 认证考试</p>' +
    //         ' <p>培训合作：课程体系导入 认证考试 实训室建设</p>' +
    //         '<p>企业合作：课程合作 企业内训 私董会 实战沙龙</p> ' +
    //         '<p><a href="">申请合作</a></p>'
    //     },{
    //             title:'大数据讲师资质培训',
    //             art:'<p>讲师分级</p> ' +
    //             ' <p>I级：认证绿带讲师<br>CDSF认证绿带讲师<br> CDPA认证绿带讲师 <br>CDPE认证绿带讲师 <br>CDEA认证绿带讲师 <br>CDAE认证绿带讲师</p>' +
    //             ' <p>II级：认证黑带讲师<br>CDSF认证黑带讲师<br> CDPA认证黑带讲师<br> CDPE认证黑带讲师<br> CDEA认证黑带讲师<br> CDAE认证黑带讲师</p>' +
    //                 '<p>III级：认证黑带大师</p>'+
    //             ' <p><a href="">申请讲师</a></p>'
    //
    //         },{
    //         title:'大数据私董会',
    //         art:'<p>主办单位：<img src="../img/主办单位/数空科技logo-01.png" alt=""> ' +
    //         '<img src="../img/主办单位/明优堂-01.png" alt="">' +
    //         ' <img src="../img/主办单位/五叶草logo····-01.png" alt=""></p>' +
    //         '<p>支持单位:阿里云数加 云栖联盟 CEIBS中欧众创平台</p>' +
    //         '<p>大数据导师：阿里云大牛 各界大咖</p> ' +
    //         '<p>企业家会员：CEO、CTO、企业高管</p>' +
    //         '<p>小组学习：20人小组 10天次学习</p>' +
    //         '<p>学习形式:<br>身份共鸣 坦诚开放<br>案例讲座 圆桌讨论<br>群策群力 标杆游学 </p>'
    //     },{
    //         title:'大数据职业认证',
    //         art:'<p>着眼大数据职业人才培养标准、就业能力标准</p> ' +
    //         ' <p>建立大数据行业跨平台统一职业认证标准</p> ' +
    //         ' <p>北美和国内大数据理论和实战专家组成课程编委会</p> ' +
    //         ' <p>前瞻性与实战性结合的大数据职业认证培训体系</p>' +
    //         ' <p>面向院校、企业、园区、培训机构、大数据开发者</p><p><a href="">申请报名</a></p>'
    //     }
    //     ];
    //     var nextArt=function () {
    //         title.innerHTML= article[self.index].title;
    //         art.innerHTML= article[self.index].art;
    //         if(self.index>=3){
    //             self.index=0;
    //         }else {
    //             self.index++;
    //         }
    //     };
    //     var prv =function () {
    //         if(self.index<=0){
    //             self.index=3;
    //         }else {
    //             self.index--;
    //         }
    //     };
    //     return function (dir) {
    //         if(dir>0){
    //             nextArt();
    //             console.log(self.index);
    //
    //         }else {
    //             prv();
    //             console.log(self.index);
    //
    //
    //
    //         }
    //     }
    //
    // }
    /*轮播*/
    $(function(){
        var i=0;
        var len=$("#scroll ul li").length-1;
        timer=setInterval(function(){  //打开定时器
            //让图片的索引值次序加1，这样就可以实现顺序轮播图片
            if(i==len){
                i=-1;
            }
            i++;
            $("#scroll ul li").eq(i).show();
            $("#scroll ul li").eq(i).siblings().hide();
        },2000);//2000为轮播的时间
        $("#scroll").hover(function () {
            clearInterval( timer );
        },function () {
            timer=setInterval(function(){  //打开定时器
                //让图片的索引值次序加1，这样就可以实现顺序轮播图片
                if(i==len){
                    i=-1;
                }
                i++;
                $("#scroll ul li").eq(i).show();
                $("#scroll ul li").eq(i).siblings().hide();
            },2000);//2000为轮播的时间
        });
//        $('.scr').onmouseout=function () {
//            timer=setInterval(function(){  //打开定时器
//                //让图片的索引值次序加1，这样就可以实现顺序轮播图片
//                if(i==len){
//                    i=-1;
//                }
//                i++;
//                $("#scroll ul li").eq(i).fadeIn().siblings().hide();
//            },2000);//2000为轮播的时间
//        }
        $(".subl").click(function(){
            if(i==len){
                i=-1;
            }
            i++;
            $("#scroll ul li").eq(i).show();
            $("#scroll ul li").eq(i).siblings().hide();
        });
//到这里分开！上面的是上一张点击的效果代码，下面的是下一张点击的效果代码．
        $(".subr").click(function(){//获取类名的点击事件．
            if(i==0){
                i=len+1;
            }
            i--;
            $("#scroll ul li").eq(i).show();
            $("#scroll ul li").eq(i).siblings().hide();
        });
    });
    /*轮播*/
    var nav = document.getElementById('header-nav');
    var navs = nav.getElementsByTagName('div');
    var div = document.getElementById('header-div');
    var divs = div.getElementsByTagName('div');
    for(i=0;i<navs.length;i++)//循环每个按钮
    {
        navs[i].index=i;
//btn[i]是指定button的第i个按钮;为该按钮添加一个index属性，并将index的值设置为i
        navs[i].onmouseover=function()//按钮的第i个点击事件
        {
            for(i=0;i<navs.length;i++)//循环去掉button的样式，把div隐藏
            {
                navs[i].className='' //清空按钮的样式
                divs[i].style.display='none'//隐藏div
            }
            this.className='active'//自身添加active
            divs[this.index].style.display='block'//this.index是当前div
        }
    }


})();