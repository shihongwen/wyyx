<?php
header('Content-type:application/json');
require_once ('../init.php');
@$category=$_REQUEST['category'];
$sql="select * from yx.yx_index_carousel where category='$category'";
$res=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($res,1);
echo json_encode($data);