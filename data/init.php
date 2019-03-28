<?php
$conn=mysqli_connect(
  '127.0.0.1','root','','yx',3306
);
$sql='SET NAMES utf8';
mysqli_query($conn,$sql);