<?php
require_once("../base.php");
session_start();
@$uname=$_REQUEST["mname"];
@$upwd=$_REQUEST["mpwd"];

if($uname==""){
	die("false");
}
if($upwd==""){
	die("false");
}
$sql0="select uid,mname,mpwd from z_merchant where mname='$uname' and binary mpwd='$upwd' ";
$result=mysqli_query($conn,$sql0);
if($result==false){
	echo "执行失败，请检查sql语句";
}else{
	$res=mysqli_fetch_row($result);
	if($res==null){
		echo "false"; //密码错误，无法登录
	}else{
		$_SESSION["uid"]=$res[0];
		echo "true"; //正确，可以登录成功
	}
}
