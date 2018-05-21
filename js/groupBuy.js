$(function(){
	$.ajax({
		type:"get",
		url:"php/groupBuy/groupBuy.php",
		dataType:"json",
		success:function(data){
			var {images,product}=data;

			var html="";//轮播图
			var pic=images.slice(6,10);
			for(var i of pic){
				var {eid,img}=i;
				html+=`<li class="fl" data-img="img${eid-7}"><a href="">
				<img src="${img}" alt="" /></a></li>`;
			}
			$(".nav>.nav_ul").html(html);
			$(".nav>.nav_ul>li:first-child").addClass("show");

			var pict=images.slice(10,13);//右边小广告
			$(".list>.list_ul").html($(`<li><a href="${pict[0].href}"><img src="${pict[0].img}" alt="" /></a></li>
						<li><a href="${pict[1].href}"><img src="${pict[1].img}" alt="" /></a></li>`));
			var html="";
			for(var i of product){//商品列表
				var {pid, img, title,subtitle, price, href, day, hour, minute, second}=i;
				html+=`	<li class="com_li">
					<a href="${href}">
						<img src="${img}" width="201px" alt="" />
					</a>
					<span class="price">立省100</span>
					<ul class="com_info">
						<li><a href="${href}">${title}</a></li>
						<li>¥1699<span>¥${price}</span></li>
						<li><a href="javascript:()">${subtitle}</a></li>
						<li>剩余：
							<span id="days">${day}</span>天
							<span id="hours">${hour}</span>时
							<span id="seconds">${minute}</span>分
							<span id="mins">${second}</span>秒
						</li>
						<a href="${href}"><input type="button" value="立即抢购" id="getcart"/></a>
					</ul>
				</li>`;
			}
			$(".com_products>.com_ul").html(html);
			setInterval(function(){//调用倒计时函数
				var d=$("span#days");
				var h=$("span#hours");
				var s=$("span#seconds");
				var m=$("span#mins");
				CountDown(2018,06,08,24,60,60,d,h,s,m);
			},1000);		
			//1、图片轮播
			function banner(){
				//①轮播图
				var $firstLi=$(".ban_head>.nav>.nav_ul>li:first-child");
				var $last=$(".ban_head>.nav>.nav_ul>li:last-child");
				var $nowLi=$(".ban_head>.nav>.nav_ul>li.show");
				$nowLi.removeClass("show");
				var $nextLi=$nowLi.next();
				if($nowLi.is($last)){
					$firstLi.addClass("show");	
				}
				else{
					$nextLi.addClass("show");
				}
				//②小圆点轮播
				var $firstDot=$(".nav>.dot>li:nth-child(1)");//第一个小圆点
				var $nowDot=$(".nav>.dot>.dot_active");//获取当前有的小圆点
				var $lastDot=$(".nav>.dot>li:last-child");//最后一个小圆点
				var $nextDot=$nowDot.next();//$nowDot.next()	下一个
					$nowDot.removeClass("dot_active");//当前的圆点样式清除
				if($nowDot.is($lastDot)){
					$firstDot.addClass("dot_active");
				}else{
					$nextDot.addClass("dot_active");
				}			
			}	
			//③移上圆点显示相应的图片
			var $dot=$(".nav>.dot");
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
				var $next=$(".nav>span.nextBtn");
				$next.click(banner);
			})();
			//⑤上一张的按钮点击
			(()=>{
				var $pre=$(".nav>span.preBtn");	
				$pre.click(function(){
					var $nowLi=$(".ban_head>.nav>.nav_ul>li.show");
					var $firstLi=$(".ban_head>.nav>.nav_ul>li:first-child");
					var $last=$(".ban_head>.nav>.nav_ul>li:last-child");
					$nowLi.removeClass("show");
					var $firstDot=$(".nav>.dot>li:nth-child(1)");//第一个小圆点
					var $nowDot=$(".nav>.dot>.dot_active");//获取当前有的小圆点
					var $lastDot=$(".nav>.dot>li:last-child");//最后一个小圆点
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
			var $pre=$(".ban_head>.nav span:nth-child(3)");
			var $nex=$(".ban_head>.nav span:nth-child(4)");
			$(".ban_head>.nav").mouseover(function(){
				clearInterval($timer);
				$timer=null;		
				$pre.css("opacity","1");
				$nex.css("opacity","1");
			});
			$(".ban_head>.nav").mouseout(function(){
				$timer=setInterval(banner,3000);
				$pre.css("opacity","0");
				$nex.css("opacity","0");
			});
		},
		error:function(){
			console.log("网络故障，请检查！");
		}
	});
})