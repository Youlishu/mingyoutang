function pulldown(){
	$(function(){
		// $('.show_list li').hide();
		var arr=[];
		$('.pro_left_show').click(function() {
			$('.pro_left_show').parent().find('img').css('display','none');
			$(this).parent().find('img').css('display','block');
			arr=$(this).attr("class").split(" ");
			if(arr[1]!='changestyle'){
				$('.pro_left_show').removeClass('changestyle');
				$(this).addClass('changestyle');
			}
			
			$(this).parent().find('li').slideToggle();
			if($('.pro_right').parent().find('li').eq(1).text()==""){
				$('.pro_right').parent().find('li').eq(1).html('>'+$(this).text());
			}
			else{
				$('.pro_right').parent().find('li').eq(1).html('>'+$(this).text());
				$('.pro_right').parent().find('li').eq(2).html('');
			}
		});	
		$('.show_list').parent().find('li').click(function(){
			var Getid=$(this).parent().parent().prev().attr('id');
			var Getext=$('#'+Getid).text();
			if($('.pro_right').parent().find('li').eq(1).text()!=""){
				$('.pro_right').parent().find('li').eq(2).html('>'+$(this).text());
			}
			else{
				$('.pro_right').parent().find('li').eq(1).html(Getext);
				$('.pro_right').parent().find('li').eq(2).html('>'+$(this).text());
			}
		});
	});
}
function clickshow(){
	$(function(){
		var arr=[];
		$('.pro_left_show').click(function() {
			$('.pro_left_show').css('background','#fafafa');
			$(this).css('background','#e2e0de');
			$('.pro_left_show').parent().find('img').css('display','none');
			$(this).parent().find('img').css('display','block');
			if($('.pro_right').parent().find('li').eq(1).text()==""){
				$('.pro_right').parent().find('li').eq(1).html('>'+$(this).text());
			}
			else{
				$('.pro_right').parent().find('li').eq(1).html('>'+$(this).text());
				$('.pro_right').parent().find('li').eq(2).html('');
			}
			var Prolength=$('.pro_left_show').length;
			for( var i=1;i<=Prolength;i++){
				$('.display_show'+i).css('display','none');
				if('js_show'+i==$(this).attr('id')){
					$('.display_show'+i).css('display','block');
				}

			}
		});	
	});
}