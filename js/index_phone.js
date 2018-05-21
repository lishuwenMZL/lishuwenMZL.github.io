$(function(){
	flag=true;//限流  控制点击按钮在 向后台要数据还没成功时不给发送第二次请求
	function loadPage(pageNo){	
	if(flag){
	    flag=false;
		var kw="";	
		if(location.search!==""){		
			kw=decodeURI(location.search.split("=")[1]);	
		}
		$.ajax({		
			type:"get",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
			url:"php/index_phone/index_phone.php",
			data:{pageNo:pageNo,kw:kw},
			dataType:"json",
			success:function(data){
				var html="";
				for(var i of data.data){
					var {pid, img,title,subtitle,price,href,day,hour, minute, second}=i;
					html+=`<li class="com_li">
							<a href="${href}">
								<img src="${img}" width="201px" height="201px" alt="" />
							</a>
							<ul class="com_info">
								<li><a href="">${title}</a></li>
								<li>¥1699<span>¥${price}</span></li>
								<li><a href="">${subtitle}</a></li>
								<li class="date">剩余：
									<span class="days">${day}</span>天
									<span class="hours">${hour}</span>时
									<span class="seconds">${minute}</span>分
									<span class="mins">${second}</span>秒
								</li>
							</ul>
						</li>`;
				}
				$(".com_products>.com_ul").html(html);

				setInterval(function(){//调用倒计时函数
					var d=$(".days");
					var h=$(".hours");
					var s=$(".seconds");
					var m=$(".mins");
					CountDown(2018,07,05,24,60,60,d,h,s,m);
				},1000);	

				var html="";
				var da=data.product;
				for(var i of da){
					var {pid, img,title,subtitle,price,href}=i;
					html+=`<li class="com_li">
							<a href="${href}">
								<img src="${img}" width="170px" alt="" />
							</a>
							<ul class="com_info">
								<li><a href="${href}">${title}</a></li>
								<li>¥${price}</li>
								<li><a href="javascript:()">${subtitle}</a></li>
							</ul>
						</li>`;
				}
				$(".aside_right>.com_ul").html(html);

				var count=parseInt(data.count);
				var pageSize=parseInt(data.pageSize);
				var	pageNo=parseInt(data.pageNo);
				var	pageCount=parseInt(data.pageCount);
				/////////////////////////////////////////加载页码
				var html="";
				html+=`<li class="fl"><a href="" class=${pageNo===1?"pageBG":"Pa"}>上一页</a></li>`;
				if(pageNo-2>0){
					html+=`<li class="fl"><a href="" class="prepage">${pageNo-2}</a></li>`;
				}
				if(pageNo-1>0){
					html+=`<li class="fl"><a href="" class="prepage">${pageNo-1}</a></li>`;
				}
				html+=`<li class="fl"><a href="" class="prepage pageBgc">${pageNo}</a></li>`;					
				if(pageNo+1<=pageCount){
					html+=`<li class="fl"><a href="" class="prepage">${pageNo+1}</a></li>`;
				}
				if(pageNo+2<=pageCount){
					html+=`<li class="fl"><a href="" class="prepage">${pageNo+2}</a></li>`;
				}
				html+=`<li class="fl"><a href="" class=${pageNo===pageCount?"pageBG":"Pa"}>下一页</a></li>`;
				$(".page>ul").html(html);


				flag=true;
				$(".page>ul").on("click","li:first>a",function(e){
					e.preventDefault();
					if($(this).html()>1){
						loadPage(pageNo-1);
					}
				})		
				$(".page>ul").on("click","li:last>a",function(e){//下一页点击事件
					e.preventDefault();	
					pageNo=parseInt($(".page>ul>li>a.pageBgc").html());	
					if(pageNo>=1 && pageNo<pageCount){
							
						loadPage(pageNo+1);
					}					
				});	
				$(".page>ul").on("click","li:first>a",function(e){//上一页点击事件
					e.preventDefault();	
					pageNo=parseInt($(".page>ul>li>a.pageBgc").html());	
					if(pageNo>1){		
						loadPage(pageNo-1);
					}					
				});
				$(".page>ul").on("click","li a.prepage",function(e){//页码点击事件
					e.preventDefault();
					$tar=$(this);
					var pageNo=parseInt($tar.html());
					loadPage(pageNo);
				})
			},
			error:function(){
				console.log("网路故障，请检查！");
			}		
		})
		}
    }
	loadPage(1);

	$(".more").on("click","a",function(e){
		e.preventDefault();
		var $tar=$(this);
		var ht="";
		var $sty=$(".style");
		if($sty.is(":visible")){
			$sty.hide();
			ht=`更多选项 <i class='fa fa-angle-up'></i>`;
		}else{
			$sty.show();
			ht=`精简选项 <i class='fa fa-angle-down'></i>`;			
		}
		$tar.html(ht);
	});
})

