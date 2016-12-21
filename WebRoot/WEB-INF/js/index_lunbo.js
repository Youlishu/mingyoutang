function downCarousel(){
	 var Dlength=$('.carousecont').children('div').length;
    // function AutoScroll(){
    //   var offset=[];
    //    if($('.animation-bg').children(':first').offset().top==-130*Dlength+130){
    //           for(var i=1;i<=Dlength;i++){
    //           // $('.animation-img'+i).css('top',i*130+'px');
    //           $('.animation-img'+i).animate({top:i*130-130+'px'});
    //           }
    //         }

    //  else{for(var i=1;i<=Dlength;i++){
    //     offset.push($('.animation-img'+i).offset().top);
    //     // $('.animation-img'+i).css('top',offset[i-1]-130+'px');
    //     $('.animation-img'+i).animate({top:offset[i-1]-130+'px'});
    //   }
    //  }
      
    // }
      
    var myar = setInterval('AutoScroll1()',8000);
      // for(var i=1;i<=Dlength;i++){
      //   $('.carouselimg-'+i).hover(function() {
      //     clearInterval(myar);
      //   }, function() {
      //     myar = setInterval('AutoScroll1()',5000)
      //   });
      // }
      var ismoveing=false;
      $('.upbutton').click(function(){
        if(!ismoveing){
          AutoScroll1();
          ismoveing=true;
        }
        setTimeout(function(){
          ismoveing=false; 
        },1000);
    });  
      $('.downbutton').click(function(){
        if(!ismoveing){
          DownScroll();
          ismoveing=true;
        }
        setTimeout(function(){
          ismoveing=false; 
        },1000);
      });
}
    
function AutoScroll1(){
  var Hdiv=$('.carouselimg').height();
  var h=$('.carousecont').offset().top;
	var Dlength=$('.carousecont').children('div').length;
      var offset=[];
      var offset1=[];
     for(var i=1;i<=Dlength;i++){
        if($('.carouselimg-'+i).offset().top-h==-Hdiv*Dlength+Hdiv){
          $('.carouselimg-'+i).css('top',Hdiv+'px');
          for(var i=1;i<=Dlength;i++){
            
          offset1.push($('.carouselimg-'+i).offset().top-h);
          $('.carouselimg-'+i).animate({top:offset1[i-1]-Hdiv+'px'});
          }
          
        }
        else{
        offset.push($('.carouselimg-'+i).offset().top-h);
        $('.carouselimg-'+i).animate({top:offset[i-1]-Hdiv+'px'});
          
        }
      }
     }
function DownScroll(){
    var Hdiv=$('.carouselimg').height();
    var h=$('.carousecont').offset().top;
    var Dlength=$('.carousecont').children('div').length;
    var offset=[];
    var offset1=[];
    for(var i=1;i<=Dlength;i++){
        if($('.carouselimg-'+i).offset().top-h==Hdiv*Dlength-Hdiv){
          $('.carouselimg-'+i).css('top',-Hdiv+'px');
          for(var i=1;i<=Dlength;i++){
            
          offset1.push($('.carouselimg-'+i).offset().top-h);
          $('.carouselimg-'+i).animate({top:offset1[i-1]+Hdiv+'px'});
          }
          
        }
        else{
        offset.push($('.carouselimg-'+i).offset().top-h);
        $('.carouselimg-'+i).animate({top:offset[i-1]+Hdiv+'px'});
          
        }
      }
}