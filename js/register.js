var isok=true;
$(function(){
	//用户名
	$("#uname").blur(function(){
		var $uname=$("#uname").val();
		var $text=$(".show1");
		var $img=$(".img1");
		if($uname==""){
			$text.html("请输入用户名称！");
			isok=false;
		}
		else{
			$.ajax({
				type:"get",
				url:"php/register/register.php",
				data:{uname:$uname},
				success:function(data){
					if(data=="u1"){						
						$text.html("该用户名已经存在，请输入新的用户名！");
						$img.removeClass("bgi");
						isok=false;
					}else{
						$text.html("");
						$img.addClass("bgi");
						isok=true;
					}
				}
			})
		}		
	})
	//验证两次输入的密码是否一致
	$("#upwd").blur(function(){
		var $upwd=$("#upwd").val();
		var $text=$(".show2");
		var $img=$(".img2");
		if($upwd==""){
			$text.html("密码不能为空，请填写！");
			$img.removeClass("bgi");
			isok=false;
		}
		else if($upwd.length<6){
			$text.html("密码格式错误，请填写6位密码！");
			$img.removeClass("bgi");
			isok=false;
		}
		else{
			$img.addClass("bgi");
			$text.html("");
			isok=true;
		}
	})
	$("#cpwd").blur(function(){
		var $cpwd=$("#cpwd").val();
		var $upwd=$("#upwd").val();
		var $text=$(".show3");
		var $img=$(".img3");
		if($upwd==""){
			$text.html("请先填写密码，再填写确认密码！");
			$img.removeClass("bgi");
			isok=false;
		}
		else if($cpwd==""){
			$text.html("确认密码不能为空，请填写！");
			$img.removeClass("bgi");
			isok=false;
		}
		else if($cpwd!==$upwd){
			$text.html("两次密码不一致，请检查！");
			$img.removeClass("bgi");
			isok=false;
		}
		else{
			$text.html("");
			$img.addClass("bgi");
			isok=true;
		}
	})
	//验证手机号码
	$("#phone").blur(function(){
		var $phone=$("#phone").val();
		var $text=$(".show4");
		var $img=$(".img4");
		var reg=/^(\+86|0086)?\s*1[3|4|5|8][0-9]\d{4,8}$/;
		if($phone==""){
			$text.html("请输入手机号码！");
			isok=false;
		}
		else if(!reg.test($phone)){
			$text.html("手机号码格式不正确，请检查！");
			isok=false;
		}
		else{
			$.get("php/register/register_p.php",
				{phone:$phone},
				function(data){
					if(data=="p1"){
						$text.html("该手机号码已经被注册，请重新输入！");
						$img.removeClass("bgi");
						isok=false;
					}
					else{
						$text.html("");
						$img.addClass("bgi");
						isok=true;
					}
				}
			)
		}
	})
	//验证码*********************
	//获取用户输入验证码
    $(".ucode").blur(function(){
	//1.4.2 创建正则表达式验证
		var ucode = $("#ucode").val();
		if(ucode==""){
			$(".show").html("请输入验证码");
			return;
		}else{
			$.ajax({
				url:"php/register/yzcode.php",
				type:"get",
				data:{code:ucode},
				success:function(data){
					var reg = /^[a-zA-Z0-9]{4}$/;
					var $img=$(".img5");
					if(!reg.test(ucode)){
						$(".show").html("验证码格式不正确，请检查");
						$img.removeClass("bgi");
					}else{
						$img.addClass("bgi");
						$(".show").html("");
					}
				},
				error:function(err){
					console.log(err);
				}
			})
		}
	})
	$("#setUcode").click(function(){
		$(this).attr("src","php/register/code.php?"+Math.random());
	})
	
	//提交注册信息
	$("#register").click(function(){
		if(isok==true){
			var $uname=$("#uname").val();
			var $upwd=$("#upwd").val();
			var $phone=$("#phone").val();
			var $ucode=$("#ucode").val();
			$.get("php/register/insert.php",
				{uname:$uname,upwd:$upwd,phone:$phone,ucode:$ucode},
				function(data){
				if(data=="false"){
					return;
				}else{
					location.href="login.html";
				}			
			})
		}else{
			alert("请完善基本信息的填写！");	
		}
	})
	//按下enter键
	$(".ucode").keyup(function(e){
		if(e.keyCode==13){
			$("#register").click();
		}
	})
})