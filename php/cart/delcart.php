<?php
header("Content-Type:application/json");
require_once("../base.php");
@$cid=$_REQUEST["cid"];
if($cid!=null){
	$sql="delete from z_cart where cid=$cid";
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