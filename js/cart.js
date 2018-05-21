$(function(){
    $.getJSON("php/cart/getcart.php",data=>{
        var html="";
        for(var i of data){
            var {cid, c_uid, c_did, c_title, c_subtitle, c_img, c_price, c_num,c_totle ,c_style, c_suit, c_peitao}=i;
            html+=`<div class="imfor"> 
                <div class="check">
                    <input type="checkbox"> 
                </div>
                <div class="product">
                    <a href="javascript:()">
                    <img src="${c_img}" alt="">
                    </a>
                    <span class="desc">
                    <a href="javascript:()">${c_title}+${c_subtitle}</a>
                    </span>
                    <p class="col">
                    <span>规格：</span>
                    <span class="color-desc">${c_style}</span>
                    </p>
                </div>
                <div class="price">
                    <p class="price-desc">Z商城特惠价</p>
                    <p>
                    <b>￥${c_price}</b>
                    </p>
                </div>
                <div class="num">
                    <span class="reduce" data-iid="" data-did=${c_did}>-</span>
                    <input type="text" value="${c_num}" class="valnum">
                    <span class="add" data-iid="" data-did=${c_did}>+</span>
                </div>
                <div class="total-price">
                    <span>￥</span>
                    <span>${c_totle}</span>
                </div>
                <div class="del">
                    <a href="#" data-cid=${cid}>删除</a>
                </div>
            </div>`;
        }
        $("#content-box-body").html(html);
            
        //全选所有商品
        var checkAll=$(".imfor-top .check-top input");
        var selCheck=$("#content-box-body .imfor .check input");
        var alldel=$(".all input");
        checkAll.click(function(){
            var res=$(this).prop("checked");
            selCheck.prop("checked",res);
            if(res){//商品件数
                $("#shopping-cart .title span.total").html(selCheck.length);
                $(".foot-selected .totalOne").html(selCheck.length); 
            }else{
                 $("#shopping-cart .title span.total").html(0);
                 $(".foot-selected .totalOne").html(0); 
            }
           
            Check();
        })
         //删除按钮的全选
        alldel.click(function(){
            var res=$(this).prop("checked");
            selCheck.prop("checked",res);          
        });
        //单选选满时影全选  
        var count=0;  
        $("#content-box-body").on("click",".imfor .check input",function(){
            var n=0;      
            var len=data.length;
            for(var i of selCheck){
                if($(i).prop("checked")){                                 
                    n++;                                     
                }        
            }         
            if(n==len){
                checkAll.prop("checked",true);
                alldel.prop("checked",true); 
                Check();             
            }else{
                checkAll.prop("checked",false);
                alldel.prop("checked",false);
                Check();
            }     
            $("#shopping-cart .title span.total").html(n);
            $(".foot-selected .totalOne").html(n); 
           
        })
        //删除一行的按钮
        $("#content-box-body").on("click",".imfor .del a",function(e){
            e.preventDefault();
            var cid=$(this).data("cid");
            $.ajax({
                url:"php/cart/delcart.php",
                type:"post",
                data:{cid:cid},
                success:function(){
                     alert("删除成功！");
                    location.reload();
                },
                error:function(err){
                    console.log(err);
                }
            }) 
        });
        //删除该用户的所有商品
        $(".foot .base .delAll").click(function(e){
            e.preventDefault();
            $.get("php/cart/delAllcart.php",()=>{
                location.reload();
            });
        })
        //检查小计总价
		function chechXJ(){
           var price=data[0].c_price;
           var num=data[0].c_num;
        }
        chechXJ();
        //加减商品数量
        $("#content-box-body").on("click",".imfor .num span",function(){
            var btn=$(this).siblings("input");
            var val=parseInt(btn.val());  
            $(this).html()=="+"?val++:val--;  
            if(val>50){val=50};
            if(val<1){val=1} ;
            btn.val(val);
            //数量改变 小计改变
            var price=parseInt(($(this).parent().siblings(".price").children("p").children("b")).html().slice(1));
            var totol=(price*val).toFixed(2);
            $(this).parent().siblings(".total-price").children(":last").html(totol); 
			Check();
			var did=$(this).data("did");
			$.ajax({
				url:"php/cart/updata.php",
				type:"get",
				data:{num:val,did:did},
				error:function(err){
					console.log(err);
				}
			})
        })  
		//
		$(".valnum").keyup(function(e){
			if(e.keyCode==13){
				$("#content-box-body .imfor .num span").click();
			}
		})
		$(".valnum").blur(function(){
			$("#content-box-body .imfor .num span").click();
		})
        //总价格的检查
        function Check(){
            var count=0;
            for(var i of selCheck){
                if($(i).prop("checked")){
                    var a=parseInt($(i).parent().siblings(".total-price").children("span:nth-child(2)").html());
                }else{
                    a=0;
                }
                count+=a;
            }
            $(".go-price .foot-tol").html(count.toFixed(2)); 
            $(".title .totalPrices").html(count.toFixed(2));
        }
        Check();    
    });
})