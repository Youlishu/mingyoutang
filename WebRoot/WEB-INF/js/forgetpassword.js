function forgetpassword(){
 	$('.abtn').click(function(){
            $('.abtn').css({
                'color': '#fff',
                'background-color': 'transparent'
            });
            $(this).css({
                'color': '#000',
                'background-color': '#ffdb72'
            });
            if($(this).attr("id")=='tel-find'){
                $('.fg-tel').css('display','block');
                $('.fg-email').css('display','none');
                $('.fg-encrypted').css('display','none');
            }
            else if($(this).attr("id")=='email-find'){
                $('.fg-tel').css('display','none');
                $('.fg-email').css('display','block');
                $('.fg-encrypted').css('display','none');
            }
            else if($(this).attr("id")=='encrypted-find'){
                $('.fg-tel').css('display','none');
                $('.fg-email').css('display','none');
                $('.fg-encrypted').css('display','block');
            }
        });
 	//验证码60秒倒计时 
 	var wait=60;
    var ztel=/^1[\d]{10}$/g;
 	$('.sbtn').click(function(){
 		var telnum=$('.tel').val();
 		//判断、传数据
        if(telnum==''){
            layer.tips('电话不能为空！', '#tel', {
                          tips: [2, 'red'],
                          time: 2000
                        });
            return false;
        }
        if(!ztel.test($(this).val())){
            layer.tips('电话格式不对！', '#tel', {
                          tips: [2, 'red'],
                          time: 2000
                        });
            return false;
        }
        else{
 		     time($(this));
            
        }

 	});
		function time(o) {
		  if (wait == 0) {
		   o.attr('disabled','false');
            $('.tel').attr('disabled','false');
		   o.html('发送');
		   wait = 60;
		  } else { 
            $('.tel').attr('disabled','true');
		   o.attr('disabled','true');
		   o.html(wait+'秒');
		   wait--;
		   setTimeout(function() {
		    time(o)
		   },
		   1000)
		  }
		 }


}