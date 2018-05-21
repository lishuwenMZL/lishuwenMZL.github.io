<?php
header("Content-Type:application/json;charset=utf-8");
require_once("../base.php");
@$did=$_REQUEST["did"];
if($did!=null){
    $array=[];
    //1、获取详细信息
     $sql=" SELECT did, d_tid, title, smtitle, price, mouse, bag, game, laptop, ticket, bank, bill, comment, record FROM  z_product_detail WHERE did=$did ";
     $result=mysqli_query($conn,$sql);
    if($result==null){
        die(mysqli_error($conn));
    }
    $rows=mysqli_fetch_all($result,1)[0];

    //2、获取套餐
    $tid=$rows["d_tid"];
	if($tid>42){
		$tid=42;
	}
    $sql1=" SELECT `pid`,`p_tid`,`pname`, `pdetail`, `pprice` FROM `z_product_package` WHERE  p_tid=$tid";
    $result1=mysqli_query($conn,$sql1);
    if($result1==null){
        die(mysqli_error($conn));
    }
    $rows1=mysqli_fetch_all($result1,1);

    //3、获取规格
    $tid=$rows["d_tid"];
    $sql2=" SELECT `sid`, `s_tid`, `sname`, `sprice` FROM `z_product_spec` WHERE s_tid= $tid";
    $result2=mysqli_query($conn,$sql2);
    if($result2==null){
        die(mysqli_error($conn));
    }
    $rows2=mysqli_fetch_all($result2,1);

    //4、获取大中小图片
    $did=$rows["did"];
    $sql3=" SELECT `iid`, `i_did`, `lg`, `md`, `sm` FROM `z_product_img` WHERE i_did=$did";
    $result3=mysqli_query($conn,$sql3);
    if($result3==null){
        die(mysqli_error($conn));
    }
    $rows3=mysqli_fetch_all($result3,1);

    //5、获取商品编号
    $tid=$rows["d_tid"];
    $sql4=" SELECT `tid`, `tname` FROM `z_product_type` WHERE tid=$tid";
    $result4=mysqli_query($conn,$sql4);
    if($result4==null){
        die(mysqli_error($conn));
    }
    $rows4=mysqli_fetch_all($result4,1)[0];
    
    //6、获取商品
    $sql5="SELECT `pid`, `img`, `title`, `price`, `href`, `day`, `hour`, `minute`, `second` FROM `z_index_product` limit 0,10";
    $result5=mysqli_query($conn,$sql5);
    if($result5==null){
        die(mysqli_error($conn));
    }
    $rows5=mysqli_fetch_all($result5,1);

    //7、获取中间的详情套餐
    $tid=$rows["d_tid"];
    $sql6="SELECT `pid`, `p_tid`, `pname`, `pdetail`, `pprice` FROM `z_product_package` WHERE p_tid=$tid";
    $result6=mysqli_query($conn,$sql6);
    if($result6==null){
        die(mysqli_error($conn));
    }
    $rows6=mysqli_fetch_all($result6,1);
    
    //8、获取中间的详情图片
    $tid=$rows["d_tid"];
	if($tid>42){
		$tid=37;
	};
    $sql7="SELECT `pid`, `tid`, `img0`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `img9` FROM `z_product_detailimage` WHERE tid=$tid";
    $result7=mysqli_query($conn,$sql7);
    if($result7==null){
        die(mysqli_error($conn));
    }
    $rows7=mysqli_fetch_all($result7,1);


    //输出数组结果
    $array=[
        "informs"=>$rows,
        "suits"=>$rows1,
        "standards"=>$rows2,
        "pics"=>$rows3,
        "types"=>$rows4,
        "product"=>$rows5,
        "inforsuit"=>$rows6,
        "inforimg"=>$rows7
    ];
    echo json_encode($array);
}