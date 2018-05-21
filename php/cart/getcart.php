<?php
header("Content-Type:application/json");
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
    $sql="SELECT `cid`, `c_uid`, `c_did`, `c_title`, `c_subtitle`, `c_img`, `c_price`,
     `c_num`,`c_totle`, `c_style`, `c_suit`, `c_peitao` FROM `z_cart` WHERE c_uid=$uid";  
    $result=mysqli_query($conn,$sql);
    if(mysqli_error($conn)){
        echo mysqli_error($conn);
    }
    $row=mysqli_fetch_all($result,1);
    echo json_encode($row);
}
