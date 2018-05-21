<?php
@$uname=$_REQUEST["uname"];
require_once("../base.php");
$sql1="select uname from z_user where uname='$uname'";
$result1=mysqli_query($conn,$sql1);
$row=mysqli_fetch_row($result1);
if($row!=""){
	echo "u1";//存在该用户，用户名不可注册
}else{
	echo "u0";
}

