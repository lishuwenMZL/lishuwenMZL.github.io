
 $(function(){
	$(`<link rel="stylesheet" href="css/header.css">`).appendTo(document.body);	
	$("#header").load("header.html",function(){			
		//地址栏跳转地址
		$(".log").click(function(e){
			e.preventDefault();
			location.href="login.html?back="+location.href;
		});
		//解析关键词
		var search=location.search;
		if(search.indexOf("=")!=-1){
			var kw=decodeURI(search.split("=")[1]).trim();
			var reg=/^[0-9]{1,}$/;
			if(!reg.test(kw)){
				$(".search input:first").val(kw);
			}
			$(".search input:first").val();
		}
		//搜索按钮
		$(".search input:last").click(function(){
			var kw=$(".search input:first").val().trim();		
			if(kw.length!=0){
				location.href="index_phone.html?kw="+kw;
			}		
		});
		//键盘上的enter键
		$(".search input:first").keyup(function(e){
			if(e.keyCode==13){
				$(".search input:last").click();
			}
		});
		//欢迎信息
		$.getJSON("php/login/islogin.php",
			function(data){
				if(data.ok=="0"){			
					$(".bg_box>.header>.left").show().next().hide();
				}else{
					$(".bg_box>.header>.left").hide().next().show();
					$(".welcom").html("欢迎："+data.uname);
				}
		});
		//注销按钮
		$(".reload").click(function(){
			$.get("php/login/isout.php",function(){
				location.reload(true);
			})
		});
		//二维码显示
		$(".phone").mouseover(function(){
			$(".er_code").toggleClass("active2");
			$(this).css("background","#fff");
		})
		$(".er_code").mouseout(function(){
			$(".er_code").toggleClass("active2");
			$(".phone").css("background","");
		})
		//购物车数量
		$.ajax({
			url:"php/cart/count.php",
			type:"get",
			success:function(data){
				$(".cartNum").html("购物车"+data+"件");
				$(".cart_num").html(data);
			},
			error:function(err){
				console.log(err);
			}
		})
		//2、右边固定栏
		$(".leftList").on("mouseover mouseout","a>i",function(){
			var $tar=$(this);
			var i=$(".leftList>a>i").index($tar)+1;
			$(".leftList>a:nth-child("+i+")>span").toggleClass("showLi");
		});

		//1、鼠标移上banner图的标题时显示详情跟图片
		$("div.catalog_list>ul").mouseover(function(e){	
			var $tar=$(e.target);
			var $i=$(".catalog_list>ul>li").index($tar);
			var $div=$("div.catalog_info");
			var $a=$div.children("div[id="+$i+"]"); 
			if($tar.is(".catalog_list>ul>li")){		
				$div.show();
				//var $a=$("div.catalog_info>div:nth-child("+($i+1)+")");
				var $a=$div.children("div[id="+$i+"]");
				$a.siblings().css("zIndex","1");
				$a.css("zIndex","90").show();
				$a.mouseover(function(){
					$(this).show();
				}).mouseout(function(){
					$(this).hide();
				});
			}
			})
		.mouseout(function(){
			$("div.catalog_info").children().hide();
		});
		//点击到导航
		$(".catalog").on("mouseover","a:first-child",function(){
			$(".catalog_list").toggleClass("catashow");
			$(".boxx").on("mouseleave",function(){				
				$(".catalog_list").removeClass("catashow");
			});
		});			
	});
	//加载导航
	$.ajax({
		type:"get",
		url:"php/index/index_nav.php",
		dataType:"json",
		success:function(data){
			var html="";
			var $list=$(".catalog_list>ul");
			for(var i of data){
				var {icon,sname}=i;
				html+=`<li><i class="${i.icon}"></i>${i.sname}<b>&gt;</b></li>`;	
			}
			$list.html(html);
		}
	})
	//加载导航内容
	$.ajax({
		type:"get",
		url:"php/index/index_navdetail.php",
		dataType:"json",
		success:function(data){
			var html="";
			var $list=$(".catalog_info");
			for(var i of data){
				var {vid,name1,name2,name3,name4,name5,name6,name7,name8,img}=i;	
				html+=`<div class="info${i.vid} tab infomation" id="${i.vid-1}">
					<div class="infor_text">
						<a href="">${i.name1}</a>         
						<a href="">${i.name2}</a>
						<a href="">${i.name3}</a>
						<a href="">${i.name4}</a>
						<a href="">${i.name5}</a>
						<a href="">${i.name6}</a>
						<a href="">${i.name7}</a>
						<a href="">${i.name8}</a>
					</div>
					<img src="${i.img}" alt="" />
				</div>`;	
			}
			$list.html(html);	
			$(".catalog_info>.info1>.infor_text>a").attr("href","groupBuy.html");
			$(".catalog_info>.info2>.infor_text>a").attr("href","index_phone.html");
			$(".catalog_info>.info3>.infor_text>a").attr("href","e_sports.html");
		}
	})	
	

});	

