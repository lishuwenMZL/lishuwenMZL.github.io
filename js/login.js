
$(function(){
	//不同商家的切换
	var $lu=$("#form_user");
	var $lm=$("#form_merchant");
	$("#login_te_box01").click(function(){
		$lu.show();
		$(this).addClass("bottom").siblings().removeClass("bottom");
		$lm.hide();
	})
	$("#login_te_box02").click(function(){
		$lm.show();
		$(this).addClass("bottom").siblings().removeClass("bottom");
		$lu.hide();
	})
	var isok=false;
	//用户名的检查
	$(".user>.text>#uname").blur(function(){
		var $uname=$("#uname").val();		
		var $text=$(".user>.text>#show_name");		
		var $bg=$(".user>.text>.bgurl");
		if($uname==""){
			$text.html("用户名不能为空");
			isok=false;
		}
		else{
			$.ajax({
				type:"get",
				url:"php/login/login.php",
				data:{uname:$uname},
				success:function(data){
					if(data=="0"){
						$text.html("该用户名不存在，请先注册！");
						$bg.removeClass("bgi");
						isok=false;
					}
					else if(data=="1"){
						$bg.addClass("bgi");
						$text.html("");
						isok=true;
					}
				}				
			})			
		}
	})
	//用户密码的检查
	$(".user>.text1>#upwd").blur(function(){
		 var $upwd=$("#upwd").val();
		var $textp=$(".user>.text1>#show_pwd");
		var $bg=$(".user>.text1>.bgurl");
		if($upwd==""){
			$textp.html("密码不能为空");
			$bg.removeClass("bgi");
			isok=false;
		}
		else{		
			$textp.html("");
			isok=true;
		}
	})
	//商家用户登录
	$(".merchant>.text>#mname").blur(function(){
		var $uname=$("#mname").val();		
		var $text=$(".merchant>.text>#show_name1");		
		var $bg=$(".merchant>.bg0>.bgurl");
		if($uname==""){
			$text.html("用户名不能为空");
			$bg.removeClass("bgi");
			isok=false;
		}
		else{
			$.ajax({
				type:"get",
				url:"php/login/login_merchant.php",
				data:{mname:$uname},
				success:function(data){
					if(data=="0"){
						$text.html("该商家用户名不存在，请先注册！");
						$bg.removeClass("bgi");
						isok=false;
					}
					else{
						$bg.addClass("bgi");
						$text.html("");
						isok=true;
					}
				}				
			})			
		}
	}) 
	//商家密码的检查
	$(".merchant>.bgl2>#mpwd").blur(function(){
		var $uname=$("#mname").val();
		var $upwd=$("#mpwd").val();
		var $textp=$(".merchant>.bgl2>#show_pwd1");
		var $bg=$(".merchant>.bgl2>.bgurl");
		if($upwd==""){
			$textp.html("密码不能为空");
			$bg.removeClass("bgi");
			isok=false;
		}
		else{
			$textp.html("");
			isok=false;
		}
	})
	//根据地址栏的地址跳转到不同的页面
	$(".btn_user").click(function(){
		if(isok==false){
			alert("请正确填写信息！");
		}
		else{
			var $uname=$("#uname").val();
			var $upwd=$("#upwd").val();
			var $textp=$(".user>.text1>#show_pwd");
			var $bg=$(".user>.text1>.bgurl");
			$.post("php/login/login_btn.php",
				{uname:$uname,upwd:$upwd},
				function(data){
					if(data=="false"){
						$textp.html("密码错误，请检查密码！");
						isok=true;
			 		}
					else{
						$bg.addClass("bgi");
						$textp.html("");
						isok=true;
						var search=location.search;
						if(search==""){
							location.href="index.html";
						}else{
							var i=search.indexOf("=")+1;
							location.href=search.slice(i);
						}	
					}
			})	
		}		
	})
	
	$(".text1>#upwd").keyup(function(e){//键盘上的enter确认键
		e.preventDefault();
		if(e.keyCode==13){
			$(".btn_user").click();
		}
	})
	//商家登录按钮
	$(".btn_merchant").click(function(){
		if(isok==false){
			alert("请正确填写信息！");
		}
		else{
			var $uname=$("#mname").val();
			var $upwd=$("#mpwd").val();
			var $textp=$(".merchant>.bgl2>#show_pwd1");
			var $bg=$(".merchant>.bgl2>.bgurl");
			$.get("php/login/login_mer_btn.php",
				{mname:$uname,mpwd:$upwd},
				function(data){
					if(data=="false"){
						$textp.html("密码错误，请检查密码！");
						isok=true;
			 		}
					else{
						$bg.addClass("bgi");
						$textp.html("");
						isok=true;
						var search=location.search;
						if(search==""){
							location.href="index.html";
						}else{
							var i=search.indexOf("=")+1;
							location.href=search.slice(i);
						}	
					}
				}
			)	
		}		
	})
	$(".text>#mpwd").keyup(function(e){//键盘上的enter确认键
		e.preventDefault();
		if(e.keyCode==13){
			$(".btn_merchant").click();
		}
	})
})
	