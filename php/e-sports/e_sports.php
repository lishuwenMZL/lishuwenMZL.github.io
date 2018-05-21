<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
$array=[];

#1、获取轮播图片，推荐图片
$sql="SELECT `eid`, `href`, `img` FROM `z_e_sports_banner`";
$result=mysqli_query($conn,$sql);
if($result==null){
    die(mysqli_error($conn));
}
$rows=mysqli_fetch_all($result,1);

//2、获取产品信息
$sql2="SELECT `pid`, `img`, `title`, `price`, `href` FROM `z_index_product` LIMIT 12,12";
$result2=mysqli_query($conn,$sql2);
if($result2==null){
    die(mysqli_error($conn));
}
$rows2=mysqli_fetch_all($result2,1);


$array=[
    "imgs"=>$rows,
    "product"=>$rows2
];

echo json_encode($array);
