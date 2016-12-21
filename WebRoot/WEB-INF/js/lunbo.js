function Carousel(){
	 var Dlength=$('.animation-bg').children('div').length/2;
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
      
    var myar = setInterval('AutoScroll()', 2000);
      for(var i=1;i<=Dlength;i++){
        $('.animation-img'+i).hover(function() {
          clearInterval(myar);
        }, function() {
          myar = setInterval('AutoScroll()', 2000)
        });
      }
}
    
function AutoScroll(){
  var Hdiv=$('.animation-img').height();
  var h=$('.animation-bg').offset().top;
	var Dlength=$('.animation-bg').children('div').length/2;
      var offset=[];
      var offset1=[];
     for(var i=1;i<=Dlength;i++){
        if($('.animation-img'+i).offset().top-h==-Hdiv*Dlength+Hdiv){
          $('.animation-img'+i).css('top','130px');
          for(var i=1;i<=Dlength;i++){
            
          offset1.push($('.animation-img'+i).offset().top-h);
          $('.animation-img'+i).animate({top:offset1[i-1]-Hdiv+'px'});
          }
          
        }
        else{
        offset.push($('.animation-img'+i).offset().top-h);
        $('.animation-img'+i).animate({top:offset[i-1]-Hdiv+'px'});
          
        }
      }
     }