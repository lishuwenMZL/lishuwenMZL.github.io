<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
$sql2="select * from z_index_product_f22";
$result2=mysqli_query($conn,$sql2);
$rows2=mysqli_fetch_all($result2,1);
echo json_encode($rows2);