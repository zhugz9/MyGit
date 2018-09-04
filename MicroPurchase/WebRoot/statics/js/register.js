$(function(){
	var uname=false;
	var Qpwd=false;
	var rpwd=false;
	var poeYZM=false;
	var FXK=false;
	
	$("#getOneYZM").attr("disabled","disabled");
	$("#getOneYZM").css("background","gray");

	$("#Register").attr("disabled","disabled");
	$("#Register").css("background","gray");
	
	$("input[name='nickName']").blur(function(){
		$(".Recuo").css("display", "none");
		if($(this).val()==""){
			$(".Recuo").html("登录名不能为空");
			$(".Recuo").css("display", "inline-block");
			$("#Register").attr("disabled","disabled");
			$('#Register').css("background","gray");
			retrun;
		}
		var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
		if (!uPattern.test($(this).val())) {
			$(".Recuo").css("display", "inline-block");
			$(".Recuo").html("非法的用户名");
			uname = false;
			return;
		}
		$.ajax({
			url : "selectUserForuName",
			type : "post",
			data :{
				nick_name:$(this).val()
			},
			error:function(err){
				alert("错误");
			},
			success : function(data) {
				var num=$.parseJSON(data.data);
				if(num>0){
					$(".Recuo").html("用户已存在");
					uname=false;
					$(".Recuo").css("display", "inline-block");
				}
				if(num==0){
					uname=true;
				}
			}
		});
		
		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
	});
	
	$("input[name='password']").blur(function(){
		$(".Pwdcuo").css("display", "none");
		var pwd=$(this).val();
		if(pwd==""){
			$(".Pwdcuo").css("display", "inline-block");
			Qpwd=false;
			retrun;
		}
		var pPattern = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
		if(pPattern.test(pwd)){
			Qpwd=true;
		}else{
			$(".Pwdcuo").css("display", "inline-block");
			Qpwd=false;
		}
		

		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
		
	});
	
	$("input[name='rePwd']").blur(function(){
		$(".RePwdcuo").css("display", "none");
		var repwd=$(this).val();
		var pwd=$("input[name='password']").val();
		if(repwd==""){
			rpwd=false;
			return;
		}
		if(repwd!=pwd){
			$(".RePwdcuo").css("display", "inline-block");
			rpwd=false;
		}else{
			rpwd=true;
		}
		
		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
		
	});
	
	$("input[name='phoneOrEmail']").bind("input propertychange",function(event){
		var poe2=$(this).val();
		var phone=/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/;
		var email=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
		var check=false;
		if(phone.test(poe2)){
			check=true;
			$("input[name='YZMType']").val("phone");
		}else if(email.test(poe2)){
			check=true;
			$("input[name='YZMType']").val("email");
		}else{
			$("#getOneYZM").attr("disabled","disabled");
			$("#getOneYZM").css("background","gray");
			$("input[name='YZMType']").val("noting");
		}
		if(check){
			$('#getOneYZM').removeAttr("disabled"); 
			$("#getOneYZM").css("background","#63A61D");
		}
		
		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
		
	});
	
	/*$("input[name='YZM']").blur(function(){
		$(".RePwdcuo").css("display", "none");
		if($(this).val()==""){
			$(".Reyzm").html("请输入验证码！");
			$(".Reyzm").css("display", "inline-block");
			YZM=false;
			return;
		}
		$.ajax({
			url : "checkYZM",
			type : "post",
			data :{
				YZM:$(this).val()
			},
			error:function(err){
				alert("错误");
			},
			success : function(data) {
				var num=$.parseJSON(data.data);
				if(num=="1"){
					$(".Reyzm").css("display", "none");
					YZM=true;
				}
				if(num=="0"){
					$(".Reyzm").html("验证码输入有误！");
					$(".Reyzm").css("display", "inline-block");
					YZM=false;
				}
			}
		});
	});*/
	
	$("input[name='peYZM']").blur(function(){
		var peYZM=$(this).val();
		var bcYZM=$("input[name='BCYZM']").val();
		//alert(peYZM+"---"+bcYZM);
		if(peYZM!=bcYZM){
			$(".peYzmCK").css("display", "inline-block");
			poeYZM=false;
		}else{
			$(".peYzmCK").css("display", "none");
			poeYZM=true;
		}
		
		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
		
	});
	
	$("input[name='hobby']").click(function(){
		if($(this).is(':checked')){
			FXK=true;
		}else{
			FXK=false;
		}
		//alert("uname"+uname+"Qpwd"+Qpwd+"rpwd"+rpwd+"poeYZM"+poeYZM+"FXK"+FXK);
		if(uname && Qpwd && rpwd && poeYZM && FXK){
			$('#Register').removeAttr("disabled"); 
			$('#Register').css("background","#63A61D");
		}else{
			$("#Register").attr("disabled","disabled");
			$("#Register").css("background","gray");
		}
	});
	
	
});