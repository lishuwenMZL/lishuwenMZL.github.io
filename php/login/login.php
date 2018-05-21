<?php
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
require("../base.php");

if($uname!=""){
	$sql1="select uname from z_user where uname='$uname'";
	$result1=mysqli_query($conn,$sql1);
	if($result1==false){
		echo "执行失败，请检查sql语句";
	}else{
		$row=mysqli_fetch_row($result1);
		if($row==null){
			echo "0";//用户不存在，提示注册
		}else{
			echo "1";//用户存在，已注册，可以登录
		}
	}
}else{
	$sql="select uid,uname,upwd from z_user where uname='$uname' and binary upwd='$upwd'";
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