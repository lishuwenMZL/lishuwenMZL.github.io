<?php
@$mname=$_REQUEST["mname"];
@$mpwd=$_REQUEST["mpwd"];
require("../base.php");

if($mpwd==""){
	$sql1="select mname from z_merchant where mname='$mname'";
	$result1=mysqli_query($conn,$sql1);
	if($result1==false){
		echo "执行失败，请检查sql语句";
	}else{
		$row=mysqli_fetch_row($result1);
		if($row==null){
			echo "0";//商家名称错误
		}else{
			echo "1";//正确，可以登录
		}
	}
}else{
	$sql="select mname,mpwd from z_merchant where mname='$mname' and binary mpwd='$mpwd'";
	$result=mysqli_query($conn,$sql);
	if($result==false){
		echo "执行失败，请检查sql语句";
	}else{
		$res=mysqli_fetch_row($result);
		if($res==null){
			echo "false"; //密码错误，无法登录
		}else{
			session_start();
			$_SESSION["uid"]=$res[0];
			echo "true"; //正确，可以登录成功
		}
	}
}
?>