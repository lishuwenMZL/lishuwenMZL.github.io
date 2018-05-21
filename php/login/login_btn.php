<?php
require_once("../base.php");
session_start();
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];

if($uname==""){
	die("false");
}
if($upwd==""){
	die("false");
}
$sql="select uid,uname,upwd from z_user where uname='$uname' and binary upwd='$upwd'";
$result=mysqli_query($conn,$sql);
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
