<?php
	//header("Content-Type:application/json");
	require_once("base.php");
	@$cid=$_REQUEST["cid"];
	@$pno=$_REQUEST["pno"];
	if($pno==null)
		$pno=0;
	if($cid==null){
		$cid=0;
	}
	$output=[
		"count"=>0,
		"pageSize"=>6,
		"pageCount"=>0,
		"pno"=>$pno,
		"plist"=>[]
	];

	if($cid!=null){
		$sql="SElECT cid,cname,pic FROM kafe_detail WHERE cid=$cid ";
		$result=mysqli_query($conn,$sql);

		if (!$result) {
		echo(mysqli_error($conn));
		 //exit();
		}
		
		$rows=mysqli_fetch_row($result)[0];
		var_dump($rows);
		
		/*·ÖÒ³
		$output["count"]=count($rows);
		//var_dump($output["count"]);
		$output["pageCount"]=ceil($output["count"]/$output["pageSize"]);
		echo $output["pageCount"];
		$sql.=" LIMIT".$output["pno"]*$output["pageSize"].",".$output["pageSize"];
		$result=mysqli_query($conn,$sql);
		//var_dump($result);
		$rows=mysqli_fetch_all($result,1);
		//var_dump($rows);
		echo json_encode($rows);*/
	}
?>