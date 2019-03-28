<?php
//data/index/getCarousel.php
header('Content-Type:application/json');
require_once('../init.php');
@$category=$_REQUEST['category'];
$sql="select * from yx_index_carousel where category='$category'";
$res=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($res,MYSQLI_ASSOC);
echo json_encode($data);