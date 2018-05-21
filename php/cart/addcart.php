<?php
header("Content-Type:application/json");
require_once("../base.php");
session_start();
@$uid=$_SESSION["uid"];
@$did=$_REQUEST["did"];
@$sid=$_REQUEST["sid"];
@$pid=$_REQUEST["pid"];
@$num=$_REQUEST["num"];

if($uid!=null&&$did!=null&&$sid!=null&&$pid!=null){
    $sql="SELECT `c_uid`, `c_did`, `c_title`, `c_subtitle`, `c_img`, `c_price`, `c_num`, `c_style`, 
    `c_suit`, `c_peitao` FROM z_cart where c_uid=$uid AND c_did=$did"; //根据传进来的商品did查找购物车是否存在该商品
    $result=mysqli_query($conn,$sql);
    $row=mysqli_fetch_all($result,1);
    if($row==null){ // 不存在则添加该商品去购物车表  
    $sql2="INSERT INTO `z_cart`(cid, `c_uid`, `c_did`, `c_title`, `c_subtitle`, `c_img`, `c_price`, `c_num`,`c_totle`,
         `c_style`, `c_suit`, `c_peitao`) 
        SELECT null 'cid', $uid 'c_uid',(SELECT did FROM z_product_detail WHERE did=$did) 'c_did',  #商品编号
        (SELECT title FROM z_product_detail WHERE did=$did) 'c_title',  #标题
        (SELECT smtitle FROM z_product_detail WHERE did=$did) 'c_subtitle',  #副标题
        (SELECT `sm` FROM `z_product_img` INNER JOIN `z_product_detail` ON i_did=did WHERE i_did=$did LIMIT 1) 'c_img',#图片
        (SELECT `price` +
            (SELECT `sprice` FROM `z_product_spec`INNER JOIN `z_product_detail` ON s_tid=d_tid  WHERE sid=$sid LIMIT 1)+ 
            (SELECT `pprice` FROM `z_product_package` INNER JOIN `z_product_detail` ON p_tid=d_tid WHERE pid=$pid LIMIT 1)
            FROM `z_product_detail` WHERE did=$did) 'c_price', #单价
        $num 'c_num',  #数量   
        (SELECT `price` +
            (SELECT `sprice` FROM `z_product_spec`INNER JOIN `z_product_detail` ON s_tid=d_tid  WHERE sid=$sid LIMIT 1)+ 
            (SELECT `pprice` FROM `z_product_package` INNER JOIN `z_product_detail` ON p_tid=d_tid WHERE pid=$pid LIMIT 1)
            FROM `z_product_detail` WHERE did=$did)*$num 'c_totle',
        (SELECT `sname` FROM `z_product_spec` INNER JOIN `z_product_detail` ON s_tid=d_tid WHERE sid=$sid LIMIT 1) 'c_style', #规格
        (SELECT `pname` FROM `z_product_package` INNER JOIN `z_product_detail` ON p_tid=d_tid WHERE pid=$pid LIMIT 1) 'c_suit', #套餐
        (SELECT `pdetail` FROM `z_product_package` INNER JOIN `z_product_detail` ON p_tid=d_tid WHERE pid=$pid LIMIT 1) 'c_peitao' #配套
    ";
        $result2=mysqli_query($conn,$sql2);
        if(mysqli_error($conn)){
            echo mysqli_error($conn);
        }
        $row2=mysqli_affected_rows($conn);    
        if($row2>0){
            echo "插入成功";
        }else{
            echo "插入失败";
        }
    }
    else{//若果存在则更新商品参数
        @$num=$_REQUEST["num"];
        @$price=$_REQUEST["price"];
        if(!$num){
            die("请输入更改数量");
        }
        $sql3="UPDATE `z_cart` SET `c_num`=c_num+$num,`c_totle`=c_num*c_price  WHERE  c_uid=$uid AND c_did=$did";
        $result3=mysqli_query($conn,$sql3);
        if(mysqli_error($conn)){
            echo mysqli_error($conn);
        }
        $row3=mysqli_affected_rows($conn);
        if($row3>0){
            echo json_encode("更新成功");
        }else{
            echo json_encode("更新失败");
        }
    }
}