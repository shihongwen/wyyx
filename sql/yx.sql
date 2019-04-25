--DROP DATABASE IF EXISTS yx;
--CREATE DATABASE yx CHARSET utf8;

-- 轮播图表
DROP TABLE IF EXISTS  yx_index_carousel;
CREATE TABLE  yx_index_carousel (
  cid INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id PK',
  img VARCHAR(128) NOT NULL COMMENT '图片地址 NN',
  title VARCHAR(32) NOT NULL COMMENT '图片名称 NN',
  href VARCHAR (255) NOT NULL COMMENT '图片链接地址 NN',
  category VARCHAR (32) NOT NULL COMMENT '图片类别 NN'
)COMMENT '轮播图表';

-- 首页推荐商品表
DROP TABLE IF EXISTS  yx_index_recommend_product;
CREATE TABLE  yx_index_recommend_product(
  rid INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id PK',
  name VARCHAR(32) NOT NULL COMMENT '产品名字 NN',
  saleprice DECIMAL(10,2) NOT NULL COMMENT '产品售价 NN',
  counterprice DECIMAL(10,2) COMMENT '原价',
  img VARCHAR(128) NOT NULL COMMENT '产品图片 NN',
  hoverimg VARCHAR(128) COMMENT '鼠标悬浮图片 NN',
  href VARCHAR (255) NOT NULL COMMENT '图片链接地址 NN',
  category VARCHAR(32) NOT NULL COMMENT '商品类别 NN',
  tag VARCHAR (32) COMMENT '商品标签',
  lev VARCHAR (8) COMMENT '商品等级'
) COMMENT '首页推荐商品表';

-- 产品表
DROP TABLE IF EXISTS  yx_product;
CREATE TABLE  yx_product(
  pid INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id PK',
  title VARCHAR (128) NOT NULL COMMENT '产品名 NN',
  subtitle VARCHAR (128) NOT NULL COMMENT '产品子名称 NN',
  saleprice DECIMAL (10,2) NOT NULL COMMENT '产品售价 NN',
  counterprice DECIMAL(10,2) COMMENT '原价',
  vip_price DECIMAL (10,2)NOT NULL COMMENT '会员价 NN',
  app_price DECIMAL (10,2)NOT NULL COMMENT 'APP购买价 NN',
  point INT NOT NULL COMMENT '积分 NN',
  rate FLOAT(3,1) COMMENT '好评率',
  details VARCHAR (65532) NOT NULL COMMENT '产品细节 NN',
  is_onsale TINYINT(1) NOT NULL COMMENT '是否在售 1:在售，0:不在售'
) COMMENT '产品表';

-- 产品图片表
DROP TABLE IF EXISTS  yx_product_pic;
CREATE TABLE  yx_product_pic(
  pic_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id PK',
  pid INT NOT NULL COMMENT '产品id NN',
  xs_id INT NOT NULL COMMENT '超小图片id NN',
  sm VARCHAR (128) NOT NULL COMMENT '小图片 NN',
  md VARCHAR (128) NOT NULL COMMENT '中图片 NN',
  lg VARCHAR (128) NOT NULL COMMENT '大图片 NN'
) COMMENT '产品图片表';

-- 产品超小图片表
DROP TABLE IF EXISTS  yx_product_xs_pic;
CREATE TABLE  yx_product_xs_pic(
  xs_id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'id PK',
  pid INT NOT NULL COMMENT '产品id NN',
  xs VARCHAR (128) NOT NULL COMMENT '超小图片 NN'
) COMMENT '产品超小图片表';