<?php
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
@$phone=$_REQUEST["phone"];
@$ucode=$_REQUEST["ucode"];
if($uname==""){
	die("false");
}
if($upwd==""){
	die("false");
}
if($phone==""){
	die("false");
}
if($ucode==""){
	die("false");
}
require_once("../base.php");
$sql0="select uname from z_user where uname='$uname'";
$res=mysqli_query($conn,$sql0);
$row=mysqli_fetch_row($res);
if($row!=""){
	die("该用户名已存在！");
}
$sql1="select phone from z_user where phone='$phone'";
$res1=mysqli_query($conn,$sql1);
$row1=mysqli_fetch_row($res1);
if($row1!=""){
	die("该手机号码已存在！");
}

$sql="insert into z_user (uname,upwd,phone,ucode) values('$uname','$upwd','$phone','$ucode')";
$result=mysqli_query($conn,$sql);
var_dump($result);
if($result==false){
	die("失败，请检查".$sql."语句");
}else{
	echo "ok";
}