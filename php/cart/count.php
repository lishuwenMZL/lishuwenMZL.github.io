<?php
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
    $sql="SELECT count(cid) FROM `z_cart` WHERE c_uid=$uid";  
    $result=mysqli_query($conn,$sql);
    if(mysqli_error($conn)){
        echo mysqli_error($conn);
    }
    $row=mysqli_fetch_row($result)[0];
    echo $row;
}