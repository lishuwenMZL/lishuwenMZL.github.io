<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
$array=[];
#1、获取轮播图片，推荐图片
$sql="SELECT `eid`, `img`,`href` FROM `z_e_sports_banner`";
$result=mysqli_query($conn,$sql);
if($result==null){
    die(mysqli_error($conn));
}
$rows=mysqli_fetch_all($result,1);

//获取商品
$sql2="SELECT `pid`, `img`, `title`,`subtitle` ,`price`, `href`, `day`, `hour`, `minute`, `second` FROM `z_index_product` limit 0,8";
$result2=mysqli_query($conn,$sql2);
if($result2==null){
    die(mysqli_error($conn));
}
$rows2=mysqli_fetch_all($result2,1);


$array=[
    "images"=>$rows,
    "product"=>$rows2
];

echo json_encode($array);