<?php
@$phone=$_REQUEST["phone"];
require("../base.php");

$sql="select phone from z_user where phone='$phone'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result)[0];
if($row!=""){
	echo "p1";//该手机号码已经注册过
}else{
	echo "p0";
}