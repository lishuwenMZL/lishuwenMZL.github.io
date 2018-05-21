//"use strict";
/*function ajax({type,url,data,dataType}){
	return new Promise(function(open){		
		var xhr=new XMLHttpRequest();//1、创建异步对象		
		xhr.onreadystatechange=function(){//2、绑定事件
			
			if(xhr.readyState==4 && xhr.status==200){
				
				if(dataType==="json") //获取的数据类型
					open(JSON.parse(xhr.responseText));
				else 
					open(xhr.responseText);		
			}	
		}		
		if(type==="get")
			url+="?"+data;
			xhr.open(type,url,true);//3、打开连接
		if(type==="get")//请求方式
			xhr.send(null);
		else 
			xhr.send(data);//4、发送请求
		
  }) 
}*/	

//创建异步对象函数
function createXhr(){
		var xhr=null;
	    if(window.XMLHttpRequest){
			//标准创建
		    xhr=new XMLHttpRequest();
		}else{
			//IE8以下创建
		    xhr=new ActiveXObject("Microsoft.XMLHttp");
		}
        return xhr;
	}