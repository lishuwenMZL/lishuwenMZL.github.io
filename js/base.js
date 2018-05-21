
//倒计时  时 分 秒 	
	function CountDown(year,month,day,hour,minute,second,parameter1,parameter2,parameter3,parameter4){
		var now=new Date();  //开始时间系统时间
		var end=new Date(year,month-1,day,hour,minute,second);//结束时间
		var time=parseInt((end-now)/1000);//总毫秒数
		if(time>0){
			var day=parseInt(time/60/60/24); //天数
			day<10&&(day="0"+day);
			var hours=parseInt(time%(60*60*24)/3600);//不足一天的换成小时
			hours<10&&(hours="0"+hours);
			var minutes=parseInt(time%(60*60)/60); //不足一小时的换成分钟
			minutes<10&&(minutes="0"+minutes);
			var second=parseInt(time%60);//不足一分的换成秒
			second<10&&(second="0"+second);	
			parameter1.html(day);
			parameter2.html(hours);
			parameter3.html(minutes);
			parameter4.html(second);
		}		
	};
