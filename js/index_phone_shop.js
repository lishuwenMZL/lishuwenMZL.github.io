
$(function(){
	if(location.search!==""){		
		var did=location.search.split("=")[1];	
		//异步加载数据
		$.ajax({
			type:"get",
			url:"php/product_detail/productdetail.php",
			data:{did:did},
			dataType:"json",
			success:function(data){
				var {informs,suits,standards,pics,types,product,inforsuit,inforimg}=data; //结构出来				
				$(".img_bor").html(`<img src="${pics[0].md}" alt="" />`);//中图片		
				$(".inform>.focus_img>.bigimg").css("background-image","url("+pics[0].lg+")");//大图片
				var html="";
				for(var img of pics){ //小图片
					var {lg, md, sm}=img; 
					html+=`<li class="fl"><img src="${sm}" alt=""
						data-md="${md}"
						data-lg="${lg}"/></li>`;  
				}
				$(".focu_i>ul").html(html);
	
				var {title,smtitle,price,mouse,bag,game,laptop,ticket,bank,bill,comment,record}=informs;//详细信息
				$(".detail>.title>p").html(title);
				$(".detail>.title>span").html(smtitle);	
				$(".infor>.price>b").html("¥"+price);
				mouse=!mouse?game:mouse;
				bag=!bag?game:bag;
				game=!game?mouse:game;
				laptop=!laptop?game:laptop;
				$(`<img src="${mouse}" alt="" /><img src="${bag}" alt="" />
					<img src="${game}" alt="" /><img src="${laptop}" alt=""/>`).appendTo($(".details"));	
				$(`<a href="javascript:()">${ticket}</a><a href="javascript:()">${bank}</a>
				   <a href="javascript:()">${bill}</a>`).appendTo($(".ticke"));	
				$(".conment>a:nth-child(2)>em").html(comment);
				$(".conment>a:nth-child(3)>em").html(record);
				
				var html="";
				for(var i of standards){//颜色类别
					var {sid,sname,sprice}=i;
					html+=`<a href="javascript:()" class="style_spec"  data-sid=${sid} data-addprice1="${sprice}">${sname}</a>`;
				}
				$(".style_box").html(html);
				$(".style_box>a:nth-child(1)").addClass("deshow");
				//颜色类别
				$(".style_box").on("click","a",function(e){					
					e.preventDefault();
					$(this).addClass("deshow").siblings().removeClass("deshow");
					checkP();
				})

				var html="";//套餐
				for(var i of suits){
					var {pid,pname,pdetail,pprice}=i;
					html+=`<a href="javascript:()" data-pid=${pid} data-addprice2="${pprice}">${pname}</a>`;		
				}
				$(html).appendTo($(".taoz"));
				$(".taoz>a:nth-child(2)").addClass("tashow");
				
				var html="";//配套
				for(var i of suits){
					var {pdetail}=i;
					html+=`<a href="javascript:()">${pdetail}</a>`;		
				}
				$(".taocan>.mating").html(html);
				$(".taocan>.mating>a:nth-child(1)").addClass("active");

				function checkP(){//检查总价格
					var $a=parseInt($(".taoz>a.tashow").data("addprice2"));//套装价格 "0.00"
					var $price=parseInt((informs.price).slice(0)); //基本价
					var $b=parseInt($(".style_box>a.deshow").data("addprice1"));//颜色规格
					if(isNaN($a)){
						$a=0;
					}
					if(isNaN($b)){
						$b=0;
					}
					var $total=($price+$a+$b).toFixed(2);
					$(".price>b").html("￥"+$total);
				}
				

				//套装
				$(".taoz").on("click","a",function(e){
					e.preventDefault();
					$(this).addClass("tashow").siblings().removeClass("tashow");
					checkP();
				})

				//鼠标点击显示不同的配套				
				$(".taoz").on("click","a",function(e){				
					e.preventDefault();
					var i=$(".taoz>a").index($(this))+1;
					$(".mating>a:nth-child("+i+")").addClass("active").siblings().removeClass("active");				
				})
				var html="";//头部商品列表		
				var pro=product.slice(0,5);
				for(var i of pro){
					var {pid, img, title, price, href, day, hour, minute, second}=i;
					html+=`<li>
						<a href="${href}"><img class="group_img" src="${img}" width="180px" alt="" /></a>
						<p class="group_title"><a href="${href}">${title}</a></p>
						<p class="group_price"><a href="">￥${price}</a></p>
						<p class="group_sheng">剩余：
							<span id="days">${day}</span>天
							<span id="hours">${hour}</span>小时
							<span id="seconds">${minute}</span>分
							<span id="mins">${second}</span>秒
						</p>
					</li>`;
				}
				$(".group_shop>ul").html(html);
				
				setInterval(function(){//调用倒计时函数
					var d=$(".group_sheng>#days");
					var h=$(".group_sheng>#hours");
					var s=$(".group_sheng>#seconds");
					var m=$(".group_sheng>#mins");
					CountDown(2018,07,20,24,60,60,d,h,s,m);
				},1000);
				

				var html="";	//中间套餐详情				
				for(var i of inforsuit){
					var {pname, pdetail}=i;
					html+=`<li><span>${pname}</span>${pdetail}</li>`;
				}
				$(".i_middle>.Taoz").html(html);

				//点击加入购物车跳转至购物车页面进行添加、更新数据	
						
				$(".add_cart>a").click(function(e){
					e.preventDefault();									
					$.get("php/cart/isLogin.php",data=>{						
						if(data==1){							
							var did=location.search.split("=")[1];
							var sid=$(".style a.deshow").data("sid");
							var pid=$(".taoz .tashow").data("pid");
							var num=parseInt($(".num>.change").val());
							var p=parseInt((($(".price>b").html()).slice(1)));
							if(!sid){sid=1};
							if(!pid){pid=1};
							$.ajax({
								url:"php/cart/addcart.php",
								type:"GET",
								data:{did:did,sid:sid,pid:pid,num:num},
								dataType:"json",
								success:function(){
									alert("加入购物车成功！");
									location.reload();
								},
								error:function(err){
									console.log(err);
								}
							})
						}else{
							location.href="login.html?back="+location.href;
						}
					})
				});

				var html="";//商品详情图
				inforimg[0].img8=!inforimg[0].img8?inforimg[0].img1:inforimg[0].img8
				inforimg[0].img9=!inforimg[0].img9?inforimg[0].img0:inforimg[0].img9;
				html+=`<img src="${inforimg[0].img0}" alt=""><img src="${inforimg[0].img1}" alt=""><img src="${inforimg[0].img2}" alt="">
				<img src="${inforimg[0].img3}" alt=""><img src="${inforimg[0].img4}" alt=""><img src="${inforimg[0].img5}" alt="">
				<img src="${inforimg[0].img6}" alt=""><img src="${inforimg[0].img7}" alt=""><img src="${inforimg[0].img8}" alt="">
				<img src="${inforimg[0].img9}" alt="">`;
				$(".i_img").html(html);
				
				//右边商品列表
				var html="";
				var prod=product.slice(0,10);
				for(var i of prod){
					var {pid, img, title, price, href}=i;
					html+=`<ul class="sales">
						<li class="sales_img"><a href="${href}"><img src="${img}" alt="" width="168px" /></a></li>
						<li class="sales_price"><b>¥${price}</b>
							<s>¥5380.00</s>
						</li>
						<li class="sales_intro">${title}</li>
					</ul>`;
				}
				$(html).appendTo($(".i_right"));

				//**************************************放大镜
				//透明层
				var $mark=$(".mark");
				var $supmark=$(".supmark");
				var $bigimg=$(".bigimg");
				$supmark.on("mouseover",function(){
					$($mark).show();
					$($bigimg).show();
				}).on("mouseout",function(){
					$($mark).hide();
					$($bigimg).hide();
				})
				//鼠标跟随 透明层
				var size=200;
				$supmark.on("mousemove",function(e){
					var left=e.offsetX-size/2;
					var top=e.offsetY-size/2;
					if(top<0) top=0;
					else if(top>200) top=200;
					if(left<0) left=0;
					else if(left>200) left=200;
					$mark.css({left:left,top:top});
					//大图片backgroundPosition
					$bigimg.css({backgroundPositionX:-2*left,backgroundPositionY:-2*top});
				})
				//**************************************小图片上下切换
				var move=0;  //图片移动的个数,用来作为判断条件
				var imgw=$(".focu_i>ul>li").width(); //li的宽度
				var len=$(".focu_i>ul>li").length;  //li的个数  
				$(".focu_i>ul").width(imgw*len);   //ul宽度
				//长度小于3时为按钮添加禁用样式
				if(len<3){ 
					$(".btn_left").addClass("disabled");
				}
				//判断小图片左右按钮什么时候被禁用
				function Checkbtn(){	
					if(move<=0){//左边禁用
						$(".btn_box>.pre").addClass("disabled");
					}
					else if(move>=len-3){//右边禁用
						$(".btn_box>.next").addClass("disabled");
					}
					else if(move>0 && move<=len-3){//两边都激活
						$(".btn_box>.pre").removeClass("disabled");
						$(".btn_box>.next").removeClass("disabled");
					}
				}
				//下一张的小按钮
				$(".btn_box").on("click",".next",function(){		
					if(len<3||move>=len-3){//!$(this).hasClass(".disabled")
						return false;
					}
					move++;
					$(".focu_i>ul").animate({left:'-='+imgw+'px'},'fast');//left-=imgw
					Checkbtn();
				})
				//上一张的小按钮
				$(".btn_box").on("click",".pre",function(){
					if(move<=0){
						return false;
					}
					move--;
					$(".focu_i>ul").animate({left:'+='+imgw+'px'},'fast');
					Checkbtn();	
				})	
				//鼠标移上小图显示大图片
				$(".focu_i").on("mouseover","ul>li>img",function(e){
					var $tar=$(this);
					var i=$(".focu_i>ul>li>img").index($tar);
					var $md=$tar.data("md");
					var $lg=$tar.data("lg");
					$(".img_bor>img").attr("src",$md);
					$bigimg.css("background-image","url("+$lg+")");
				})
				//*******************************************************购物车
				//加减 
				var $reduce=$(".num>.reduce");
				var $add=$(".num>.add");	
				var count=0;
				$(".num").on("click",".count",function(){
					var $total=$(".num>.change").val();
					if($(this).is($(".reduce"))){
						if($total<=1){
							return;
						}
						$total--;
					}
					else if($(this).is($(".add"))){
						if($total>=50){
							return;
						}
						$total++;
					}		
					$(".num>.change").val($total);
				})
				//侧边的收缩菜单*****************************
				$(".i_left").on("click",".computer>p",function(){
					var $tar=$(this);
					var $ul=$tar.next();
					if($ul.is(".active")){
						var a=$ul.parent().siblings();
						$ul.removeClass("active");
						$tar.children("i").addClass("fa-plus-square").removeClass("fa-minus-square-o");
					}else{
						var a=$ul.parent().siblings();
						$ul.addClass("active");
						a.children("ul").removeClass("active");
						$tar.children("i").addClass("fa-minus-square-o").removeClass("fa-plus-square");//自己
						a.children("p").children("i").addClass("fa-plus-square").removeClass("fa-minus-square-o");				
					}
				})				
			},
			error:function(){
				console.log("网络故障，请检查！");
			}
		})		
	}
})