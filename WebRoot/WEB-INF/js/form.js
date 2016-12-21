//验证个人用户注册
function checkregperson(){
	document.getElementsByTagName('form')[0].onkeydown = function(e){
        var e = e || event;
        var keyNum = e.which || e.keyCode;
        return keyNum==13 ? false : true;
};
	$(function(){
		var zuser=/^[a-zA-Z\u4e00-\u9fa5]+$/; 
		var zpass=/^(\w){6,20}$/;
		var ztel=/^1[\d]{10}$/g;
		var zemail=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		$('#userName').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
				layer.tips('用户名不能为空！', '#userName', {
						  tips: [2, 'red'],
						  time: 2000
						});

			}
			else{
				flag=0;
				 if(!zuser.test($(this).val())&&flag==0){
				 	layer.tips('用户名格式不正确！', '#userName', {
						  tips: [2, 'red'],
						  time: 2000
						});
				 }
				 else{
				 	layer.tips('√', '#userName', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
				 }
			}
		});
		$('#password').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
				layer.tips('密码不能为空！', '#password', {
						  tips: [2, 'red'],
						  time: 2000
						});
			}
			else{
				flag=0;
			 if(!zpass.test($(this).val())&&flag==0){
			 	layer.tips('密码格式不正确！', '#password', {
						  tips: [2, 'red'],
						  time: 2000
						});

			 }else{
			 	layer.tips('密码可用！', '#password', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
			 }
			}
		});
		$('#password1').blur('input',function(){
			if($(this).val()!=$('#password').val()){
				layer.tips('密码确认错误！', '#password1', {
						  tips: [2, 'red'],
						  time: 2000
						});
			}
			else{
				if($(this).val()==0){
					
				}
				else{
				layer.tips('密码确认正确！', '#password1', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
				}
			
			}
		});
		$('#tel').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
				layer.tips('电话不能为空！', '#tel', {
						  tips: [2, 'red'],
						  time: 2000
						});
			}
			else{
				flag=0;
			 if(!ztel.test($(this).val())&&flag==0){
			 	layer.tips('电话格式不对！', '#tel', {
						  tips: [2, 'red'],
						  time: 2000
						});
			 }
			 else{
			 	layer.tips('电话格式可用！', '#tel', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
			 }
			}
		});
		$('#email').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
			}
			else{
				flag=0;
			 if(!zemail.test($(this).val())&&flag==0){
			 	layer.tips('邮箱格式不对！', '#email', {
						  tips: [2, 'red'],
						  time: 2000
						});
			 }
			 else{
			 	layer.tips('邮箱格式正确！', '#email', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
			 }
			}
		});
		$('#submit').click(function() {
			if ($('#userName').val()==''||$('#tel').val()==''||$('#password').val()==''||$('#password1').val()=='') {
				return false;
			}
		});


	});
}
// 验证企业注册
function checkregenterprise(){
	var zuser=/^(\w){6,20}$/; 
		var zpass=/^(\w){6,20}$/;
		var ztel=/^1[\d]{10}$/g;
		var zemail=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		$('#userName1').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
			}
			else{
				flag=0;
				 if(!zuser.test($(this).val())&&flag==0){
				 	layer.tips('用户名格式不正确！', '#userName1', {
						  tips: [2, 'red'],
						  time: 2000
						});
				 }else{
				 	layer.tips('可以使用', '#userName1', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
				 }
			}
		});
		$('#password2').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
			}
			else{
				flag=0;
			 if(!zpass.test($(this).val())&&flag==0){
			 	layer.tips('密码格式不正确！', '#password2', {
						  tips: [2, 'red'],
						  time: 2000
						});

			 }else{
			 	layer.tips('密码可用！', '#password2', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
			 }
			}
		});
}

//验证用户登录

function checklogin(){
	$(function(){
		var zuser=/^(\w){6,20}$/; 
		var zpass=/^(\w){6,20}$/;
		var ztel=/^1[\d]{10}$/g;
		var zemail=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		$('#userName').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
			}
			else{
				flag=0;
				 if(!zuser.test($(this).val())&&flag==0){
				 	layer.tips('用户名格式不正确！<br>输入6-20个字母、数字、下划线', '#userName', {
						  tips: [2, '#ffdb72'],
						  time: 3000
						});
				 	$(this).focus();
				 	return false;
				 }else{
				 	layer.tips('√', '#userName', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
				 	return true;
				 }
			}
		});
		$('#password').blur('input',function(){
			var flag=0;
			if($(this).val()==""){
				flag=1;
			}
			else{
				flag=0;
			 if(!zpass.test($(this).val())&&flag==0){
			 	layer.tips('密码格式不正确！<br>输入6-20个字母、数字、下划线', '#password', {
						  tips: [2, '#ffdb72'],
						  time: 3000
						});
			 	$(this).focus();
			 	return false;

			 }else{
			 	layer.tips('√', '#password', {
						  tips: [2, '#3595CC'],
						  time: 2000
						});
			 	return true;
			 }
			}
		});
	});
}