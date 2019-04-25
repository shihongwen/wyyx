<?php
header('Content-Type:application/json');
require_once('../init.php');
@$pid=$_REQUEST['pid'];
$sql="select * from yx_product where pid=$pid";
$res=mysqli_query($conn,$sql);
$product=mysqli_fetch_all($res,1)[0];
$out_put['product']=$product;
$sql="select * from yx_product_pic where pid=$pid";
$res=mysqli_query($conn,$sql);
$pic=mysqli_fetch_all($res,1);
$out_put['pic']=$pic;
$sql="select * from yx_product_xs_pic where pid=$pid";
$res=mysqli_query($conn,$sql);
$xs_pic=mysqli_fetch_all($res,1);
$out_put['xs_pic']=$xs_pic;
echo json_encode($out_put);

