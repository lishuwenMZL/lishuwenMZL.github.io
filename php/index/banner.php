<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
$sql="select * from z_index_banner";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,1);
echo json_encode($rows);