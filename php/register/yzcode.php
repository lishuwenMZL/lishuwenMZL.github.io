<?php
require_once("../base.php");
$yzcode=$_REQUEST["yzcode"];
$code=$_SESSION["code"];
if($yzcode!=$code){
	echo 0;
}else{
	echo 1;
}