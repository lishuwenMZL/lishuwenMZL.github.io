<?php
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
    //$uid=[$uid];
    echo 1;
}else{
    echo 0;
}
 








