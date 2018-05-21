<?php
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
@$num=$_REQUEST["num"];
@$did=$_REQUEST["did"];

if($uid!=null&&$did!=null&&$num!=null){
	$sql="UPDATE `z_cart` SET `c_num`=$num,`c_totle`=c_num*c_price  WHERE  c_uid=$uid AND c_did=$did";
	$result=mysqli_query($conn,$sql);
    if(mysqli_error($conn)){
        die(mysqli_error($conn));
    }
	$row=mysqli_affected_rows($conn);    
	if($row>0){
		echo 1;//更新成功
	}else{
		echo 0;
	}
}
