<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
//@$callback=$_REQUEST["callback"];//从地址栏中获取用户输入的参数
@$pageSize=$_REQUEST["pageSize"];;//页大小
@$pageCount=$_REQUEST["pageCount"];;//总页数
@$pageNo=$_REQUEST["pageNo"]; //页码
@$count=$_REQUEST["$Count"];
@$kw=$_REQUEST["kw"];

$array=[];
if($pageSize==""){
    $pageSize=9;
}
if($pageNo==""){
    $pageNo=1;
}
if($kw==""){
    $kw="";
}
//if($kw!=null){
    $sql="SELECT `pid`, `img`, `title`, `subtitle`, `price`, `href`, `day`, `hour`, `minute`, `second` FROM `z_index_product` WHERE  pid>24 ";
    $kws=explode(" ",$kw); //["华为","4g","i5"]
    for($i=0;$i<count($kws);$i++){
        $kws[$i]=" title like '%$kws[$i]%' ";//title like '华为' and title like ‘4g’
    }
    $sql.=" and ".implode("and",$kws);
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_all($result,1);
    

    @$count=count($row);//符合要求的总条数
    @$pageCount=ceil($count/$pageSize); //总页数
    @$offset=($pageNo-1)*$pageSize; //当前页开始的行

    //手机产品的总数据 limit（第几行开始，取几条）
    $sql.=" LIMIT ".$offset.",".$pageSize;
    $result=mysqli_query($conn,$sql);
    if($result==null){
        die(mysqli_error($conn));
    }
    $row=mysqli_fetch_all($result,1);


    $sql2="SELECT `pid`, `img`, `title`, `subtitle`, `price`, `href` FROM `z_index_product` where pid>24 limit 0,4";
    $result=mysqli_query($conn,$sql2);
    if($result==null){
        die(mysqli_error($conn));
    }
    $row2=mysqli_fetch_all($result,1);

    $array=[
        "pageCount"=>$pageCount,
        "pageNo"=>$pageNo,
        "pageSize"=>$pageSize,
        "count"=>$count,
        "data"=>$row,
        "product"=>$row2
    ];

    echo json_encode($array);
//}








