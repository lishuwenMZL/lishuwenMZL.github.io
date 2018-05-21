<?php

//添加欢迎信息
//header("Content-Type:application/json");
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid==null)
	echo json_encode(["ok"=>0]);
else{
	$sql="select uname from z_user where uid='$uid'";
	$result=mysqli_query($conn,$sql);
	$uname=mysqli_fetch_all($result,1)[0];
	echo json_encode(["ok"=>1, "uname"=>$uname['uname']]);
}