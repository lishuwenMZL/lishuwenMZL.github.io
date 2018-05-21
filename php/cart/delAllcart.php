<?php
header("Content-Type:application/json");
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
	$sql="delete from z_cart where c_uid=$uid";
	$result=mysqli_query($conn,$sql);   
   if(mysqli_error($conn)){
        echo mysqli_error($conn);
    }
    $row=mysqli_affected_rows($conn); 
    if($row>0){
        echo 1;
    }else{
        echo 0;
    }
}