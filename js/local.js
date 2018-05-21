$(function(){
	$.ajax({
		type:"get",
		url:"php/e-sports/e_sports.php",
		dataType:"json",
		success:function(data){
			var {imgs}=data;
			var pic=imgs.slice(0,2);//轮播图
			$(".nav_img>.Imgshow").html($(`<li class="fl show" data-img="img${pic[0].eid-1}">
			<a href="${pic[0].href}"><img src="${pic[0].img}" alt="" /></a></li>
				<li class="fl" data-img="img${pic[1].eid-1}"><a href="${pic[1].href}">
				<img src="${pic[1].img}" alt="" /></a></li>`));

			//1、图片轮播
			function banner(){
			//①轮播图
				var $firstLi=$("div.nav_img>ul.Imgshow>li:first-child");
				var $last=$("div.nav_img>ul.Imgshow>li:last-child");
				var $nowLi=$("div.nav_img>ul.Imgshow>li.show");
				$nowLi.removeClass("show");
				var $nextLi=$nowLi.next();
				if($nowLi.is($last)){
					$firstLi.addClass("show");	
				}
				else{
					$nextLi.addClass("show");
				}
			//②小圆点轮播
				var $firstDot=$("div.nav_img>.dot>li:nth-child(1)");//第一个小圆点
				var $nowDot=$("div.nav_img>.dot>.dot_active");//获取当前有的小圆点
				var $lastDot=$("div.nav_img>.dot>li:last-child");//最后一个小圆点
				var $nextDot=$nowDot.next();//$nowDot.next()	下一个
					$nowDot.removeClass("dot_active");//当前的圆点样式清除
				if($nowDot.is($lastDot)){
					$firstDot.addClass("dot_active");
				}else{
					$nextDot.addClass("dot_active");
				}
			}
			//③移上圆点显示相应的图片
				var $dot=$("div.nav_img>.dot");
				$dot.on("mouseover","li",function(e){
					var $tar=$(e.target);
					if(!$tar.is(".dot_active")){
						$tar.addClass("dot_active")
							.siblings().removeClass("dot_active");
					var id=$tar.attr("id");	//img0
						$("li[data-img="+id+"]").addClass("show")
							.siblings().removeClass("show");
					}
				});
			//④下一张的按钮点击
				(()=>{			
					var $next=$(".nav_img>.nextBtn");
					$next.click(banner);
				})();
			//⑤上一张的按钮点击
				(()=>{
					var $pre=$("div.nav_img>span.preBtn");	
					$pre.click(function(){
						var $nowLi=$("div.nav_img>ul.Imgshow>li.show");
						var $firstLi=$("div.nav_img>ul.Imgshow>li:first-child");
						var $last=$("div.nav_img>ul.Imgshow>li:last-child");
						$nowLi.removeClass("show");
						var $firstDot=$("div.nav_img>.dot>li:nth-child(1)");//第一个小圆点
						var $nowDot=$("div.nav_img>.dot>.dot_active");//获取当前有的小圆点
						var $lastDot=$("div.nav_img>.dot>li:last-child");//最后一个小圆点
						var $nextDot=$nowDot.next();//$nowDot.next()	下一个
							$nowDot.removeClass("dot_active");
						if($nowLi.is($firstLi)){			
							$last.addClass("show");
							$lastDot.addClass("dot_active");

						}else{
							$nowLi.prev().addClass("show");
						}	$nowDot.prev().addClass("dot_active");
					})
				})();  
			//⑥定时器
			var $timer=setInterval(banner,3000);
				var $pre=$(".nav_img span:nth-child(3)");
				var $nex=$(".nav_img span:nth-child(4)");
				$("div.nav_img").mouseover(function(){
					clearInterval($timer);
					$timer=null;		
					$pre.css("transform","translateX(28px)");
					$nex.css("transform","translateX(1130px)");
				});
				$("div.nav_img").mouseout(function(){
					$timer=setInterval(banner,3000);
					$pre.css("transform","");
					$nex.css("transform","");
				});		
		}
	});	
})