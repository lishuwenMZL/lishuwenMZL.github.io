<?php
//提交注册的所有信息给数据库
$uname=$_REQUEST["uname"];
$upwd=$_REQUEST["upwd"];
$phone=$_REQUEST["phone"];
$ucode=$_REQUEST["ucode"];
require("base.php");
$sql="insert into z_user values(null,'$uname','$upwd','$phone','$ucode')";
$result=mysqli_query($conn,$sql);
if($result==false){
	echo "执行失败，请检查sql语句";
}else{
	$res=mysqli_fetch_all($result,MYSQLI_ASSOC);
	$array=json_encode($res);
	echo $array;
}
?>