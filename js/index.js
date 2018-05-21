//加载banner图
$.ajax({
	url:"php/index/banner.php",
	type:"get",
	dataType:"json",
	success:function(data){
		var html="";
		var $ul=$(".nav_img>.Imgshow");
		for(var i of data){
			html+=`<li class="fl" data-img="img${i.bid-1}">
					<a href="${i.href}"><img src="${i.img}" alt=""/></a>
				</li>`;		
		}
		$ul[0].innerHTML=html;
		var $f=$(".nav_img>.Imgshow>li");
		$f.addClass("show");
	}
})
//加载floor1 floor3
$.ajax({
	url:"php/index/index_product01.php",
	type:"get",
	dataType:"json"
 }).then((data)=>{
	var $ul=$(".group_shop>ul");
	var html="";
	for(var i=0;i<data.length;i++){
		var obj=data[i];
		var img=obj.img,title=obj.title,price=obj.price,href=obj.href,
			day=obj.day,hour=obj.hour,minute=obj.minute,second=obj.second;
		html+=[
			'<li>',
				'<a href="'+href+'"><img class="group_img" src="'+img+'" width="180px" alt="" /></a>',
				'<p class="group_title"><a href="'+href+'">'+title+'</a></p>',
				'<p class="group_price"><a href="'+href+'">'+price+'</a></p>',
				'<p class="group_sheng">剩余：',
					'<span id="days"></span>天',//'+day+'
					'<span id="hours"></span>小时',//'+hour+'
					'<span id="seconds"></span>分',//'+minute+'
					'<span id="mins"></span>秒',//'+second+'
				'</p>',
			'</li>'
		].join("");
	}
	$ul[0].innerHTML=html;
	$ul[1].innerHTML=html;

	setInterval(function(){//调用倒计时函数
		var d=$(".group_shop>ul>li>.group_sheng>#days");
		var h=$(".group_shop>ul>li>.group_sheng>#hours");
		var s=$(".group_shop>ul>li>.group_sheng>#seconds");
		var m=$(".group_shop>ul>li>.group_sheng>#mins");
		CountDown(2018,06,08,24,60,60,d,h,s,m);
	},1000);	
})

//加载首选floor2
$.ajax({
	type:"get",
	url:"php/index/index_product_fl21.php",
	dataType:"json",
	success:function(data){
		var html="";
		var $list=$(".zhixuan_banner>.banner_top>ul");
		for(var i of data){
			var {fid,listnav}=i;	
			html+=`<li id="show_text${i.fid}">${i.listnav}</li>`;	
		}
		$list.html(html);
		var $first=$(".zhixuan_banner>.banner_top>ul>li:first-child");
		$first.addClass("showbgc");
	}
})
$.ajax({
	type:"get",
	url:"php/index/index_product_fl210.php",
	dataType:"json",
	success:function(data){
		var html="";
		var $list=$(".zhixuan_banner>.banner_top>.showIMG");
		for(var i of data){
			var {fid,listimg}=i;	
			html+=`<a href="" data-show="show_text${i.fid}">
				<img src="${i.listimg}" alt=""></a>`;	
		}
		$list.html(html);
		var $first=$(".zhixuan_banner>.banner_top>.showIMG>a:first-child");
		$first.addClass("showText");

		$box=$(".zhixuan_banner>.banner_top");
		$boxLi=$(".zhixuan_banner>.banner_top>ul>li");
		$box.on("mouseover","li",function(){
		$tar=$(this);
		$tar.addClass("showbgc")
			.siblings().removeClass("showbgc");
		var $href=$tar.attr("id");
		var i=$boxLi.index($tar)+1;
		$(".zhixuan_banner>.banner_top>.showIMG>a:nth-child("+i+")")
			.addClass("showText")
			.siblings().removeClass("showText");
	  })

	}
})
$.ajax({
	type:"get",
	url:"php/index/index_product_fl22.php",
	dataType:"json",
	success:function(data){
		var html="";
		var $list=$(".zhixuan_banner>.banner_bottom>ul");
		for(var i of data){
			var {fid,stitle,sprice,details,comment1,comment2,img}=i;	
			html+=`<li class="fl clear">
				<img src="${i.img}" alt="" width="182px" />
				<div class="banLY tab fl clear">
					<p class="tab_title">${i.stitle}</p>
					<p class="tab_price">¥${i.sprice}</p>
					<p class="tab_details"><a href=""></a>${i.details}</p>
					<p class="tab_dianping">${i.comment1}</p>
					<p class="tab_dianping">${i.comment2}</p>
				</div>
			</li>`;	
		}
		$list.html(html);
	}
})
$.ajax({
	type:"get",
	url:"php/index/index_product_fl23.php",
	dataType:"json",
	success:function(data){
		var html="";
		var $list=$(".zhixuan_bar>ul>li");
		for(var i of data){
			//var {rimg}=i;
			html+=`<a href=""><span style=
			  "background-image:url(${i.rimg})"></span></a>`;
		}
		$list.html(html);
	}
})
//加载右边
$.ajax({
	url:"php/index/index_product_right.php",
	type:"get",
	dataType:"json",
	success:function(data){
		var html="";
		var $ul=$(".group_shore>ul");
		for(var i of data){
			var {img,title,price,href,day,hour,minute,second}=i;					
			html+=`<li>
					<a href="${href}" class="fl"><span style="background-image:url('${img}')"></span></a>
					<div class="shore_infor fr clear">
						<p class="group_title"><a href="${href}">${title}</a></p>
						<p class="group_price"><a href="${href}">${price}</a></p>
						<p class="group_sheng">剩余：
							<span id="days">${day}</span>天
							<span id="hours">${hour}</span>小时
							<span id="seconds">${minute}</span>分
							<span id="mins">${second}</span>秒
						</p>
					</div>
				</li>`;	
		}
		$ul[0].innerHTML=html;
		$ul[1].innerHTML=html;
		//倒计时  时 分 秒 	
	setInterval(function(){//调用倒计时函数
		var d=$(".shore_infor>.group_sheng>#days");
		var h=$(".shore_infor>.group_sheng>#hours");
		var s=$(".shore_infor>.group_sheng>#seconds");
		var m=$(".shore_infor>.group_sheng>#mins");
		CountDown(2018,07,20,24,60,60,d,h,s,m);
	},1000);
	}
})
$(function(){
  //2、图片轮播
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
	var $pre=$(".nav_box .nav_img span:nth-child(3)");
	var $nex=$(".nav_box .nav_img span:nth-child(4)");
	$("div.nav_img").mouseover(function(){
		clearInterval($timer);
		$timer=null;		
		$pre.css("transform","translateX(30px)");
		$nex.css("transform","translateX(1245px)");
	});
	$("div.nav_img").mouseout(function(){
		$timer=setInterval(banner,3000);
		$pre.css("transform","");
		$nex.css("transform","");
	});
  //3、智选左边 鼠标显示图片
  //4、楼层滚动
	var $fone=$("#f1");
	var $floor=$(".floor");
	$(window).scroll(function(){
		//一楼处于中线以上时显示楼层按钮
		var $scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		var $offsetTop=$fone.offset().top;
		if($offsetTop<=$scrollTop+innerHeight/2){
			$floor.show();
		}else{
			$floor.hide();
		}
		//滚动到对应楼层头部时 按钮高亮
		var $ground=$(".grbox>.ground");
		for(var i=0;i<$ground.length;i++){
			var $f=$(".grbox>.ground:eq("+i+")");
			var $offsetTop=$f.offset().top;
			if($offsetTop<$scrollTop+innerHeight/2){
				var $li=$(".floor>ul>li:eq("+i+")");
				$li.addClass("hover").siblings().removeClass("hover");			
			}
		}
		//点击时跳转到相应的楼层
		$floor.on("click","ul>li",function(){
			$tar=$(this);
			var i=$(".floor>ul>li").index($tar);  //当前li的下标
			console.log(i);		
			/*$("html").scrollTop=$offsetTop;加上动画时间才可以看到楼层的滚动变化*/	 					
			if(i==3){
				var $head=$("header").offset().top;
				$("html").stop(true).animate({
					scrollTop:$head
				},500);
			}else{
				var $f=$(".grbox>.ground:eq("+i+")");
				var $offsetTop=$f.offset().top;//对应的楼层
				console.log($offsetTop);
				$("html").stop(true).animate({
					scrollTop:$offsetTop
				},500);
			}
		})
	})
})
