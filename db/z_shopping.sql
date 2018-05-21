set names utf8;
drop database if exists z_project;
create database z_project charset=utf8;
use z_project;
#用户名信息表
create table z_user( 
  uid int primary key auto_increment,
  uname varchar(10),
  upwd varchar(10),
  phone varchar(16),
  ucode varchar(6)
  );
  insert into z_user values(null,'lishuwen','123456','13632426959','qq12');
  insert into z_user values(null,'xiaoyu','123456','13632426959','qq12');
  insert into z_user values(null,'dangdang','123456','13632426959','qq12');
  insert into z_user values(null,'yaya','123456','13632426959','qq12');
  insert into z_user values(null,'dingding','123456','13632426959','qq12');
  insert into z_user values(null,'xiaohuang','123456','13632426959','qq12');

#商家信息表
create table z_merchant( 
  mid int primary key auto_increment,
  mname varchar(10),
  mpwd varchar(10),
  phone varchar(16),
  mcode varchar(6)
  );
  insert into z_merchant values(null,'lishuwen','123456','13632426959','qq12');
  insert into z_merchant values(null,'xiaoyu','123456','13632426959','qq12');
  insert into z_merchant values(null,'dangdang','123456','13632426959','qq12');
  insert into z_merchant values(null,'yaya','123456','13632426959','qq12');
  insert into z_merchant values(null,'dingding','123456','13632426959','qq12');
  insert into z_merchant values(null,'xiaohuang','123456','13632426959','qq12');
#1、z_index_product首页商品表
create table z_index_product(
  pid int primary key auto_increment,
  img varchar(128),
  title varchar(128),
  subtitle varchar(128) default "",
  price decimal(10,2),
  href varchar(128),
  day bigint default null,
  hour bigint default null,
  minute bigint default null,
  second bigint default null
  );
  #电脑
  insert into z_index_product values(null,'img/index/ground_shop08.png','[店铺促销] 【黑将游戏本】ThinkPad 黑将S5','正品数码特惠店',5935.00,'index_phone_shop.html?did=1',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop10.jpg','[店铺促销] 【官方授权】联想酷睿I5-7200U 4G内存','三味腾达专营店',5620.00,'index_phone_shop.html?did=9',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop13.png','【窄边新品】戴尔 Inspiron 灵越','甲骨龙旗舰店',7024.00,'index_phone_shop.html?did=2',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop02.jpg','联想 拯救者R720-15IKB i5 7300HQ','华开电脑专营店',7199.00,'index_phone_shop.html?did=3',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop03.jpg','【承袭经典】ThinkPad E470','三味腾达专营店',7024.00,'index_phone_shop.html?did=4',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop04.jpg','【官方授权】戴尔灵越14 7000新游匣热血魂 赤红','正品数码特惠店',5799.00,'index_phone_shop.html?did=28',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop05.jpg','[店铺促销] 【ThinkPad授权专卖】 E475 ','甲骨龙旗舰店',3999.00,'index_phone_shop.html?did=29',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop10.jpg','[店铺促销] 【官方授权】联想酷睿I5-7200U 4G内存','正品数码特惠店',5620.00,'index_phone_shop.html?did=9',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop08.png','[店铺促销] 【黑将游戏本】ThinkPad 黑将S5','华开电脑专营店',5935.00,'index_phone_shop.html?did=1',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop10.jpg','[店铺促销] 【官方授权】联想酷睿I5-7200U 4G内存','甲骨龙旗舰店',5620.00,'index_phone_shop.html?did=9',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop04.jpg','【官方授权】戴尔灵越14 7000新游匣热血魂 赤红','华开电脑专营店',5799.00,'index_phone_shop.html?did=28',2,03,29,50);
  insert into z_index_product values(null,'img/index/ground_shop05.jpg','[店铺促销] 【ThinkPad授权专卖】 E475 ','正品数码特惠店',3999.00,'index_phone_shop.html?did=29',2,03,29,50);

  #主机
  insert into z_index_product values(null,'img/e_sports/e_sportsGame01.jpg','幻彩七代I5/B250 主板m.2/GTX1050/DIY组装机',null,3299.00,'index_phone_shop.html?did=30',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsGame02.jpg','蜂巢i7 7700K/GTX1060 6G/水冷静音游戏台式电脑主机',null,5999.00,'index_phone_shop.html?did=31',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsGame03.jpg','光韵i7 7700/1060独显/B250M.2/DIY组装电脑',null,4599.00,'index_phone_shop.html?did=32',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsGame04.jpg','【甲骨龙-赤龙542】 i5 7500/GTX1050游戏电脑主',null,1999.00,'index_phone_shop.html?did=33',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsGame05.jpg','【甲骨龙-夔龙743】酷睿I7/GTX1050TI-4G /B250',null,4599.00,'index_phone_shop.html?did=34',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsGame06.jpg','甲骨龙i7 7700K /GTX1070-8G/一体水冷/吃',null,8599.00,'index_phone_shop.html?did=35',null,null,null,null);

  insert into z_index_product values(null,'img/e_sports/e_sportsHome01.jpg','幻彩四核i5 7400/DIY组装游戏电脑主机台式机兼容机',null,3999.00,'index_phone_shop.html?did=36',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsHome02.jpg','炫酷侧透战车主机！四核i5 4590/微星GTX970 4G独显',null,2356.00,'index_phone_shop.html?did=37',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsHome03.jpg','先锋奔腾G3900/120G SSD固态盘家用办公/DIY组装机',null,1799.00,'index_phone_shop.html?did=38',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsHome04.png','晶彩i5 7400/GTX1050-2G独显/DIY组装台式电脑',null,3699.00,'index_phone_shop.html?did=39',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsHome05.jpg','格派 I5 7500/1050-4G/B250+M.2/组装电脑',null,3899.00,'index_phone_shop.html?did=40',null,null,null,null);
  insert into z_index_product values(null,'img/e_sports/e_sportsHome06.png','光韵四核i5 7400/DIY组装游戏电脑主机台式机兼容机',null,4199.00,'index_phone_shop.html?did=41',null,null,null,null);

  ####################################手机  6页商品 25个 
  insert into z_index_product values(null,'img/index_phone/index_phone01.jpg','荣耀 畅玩6A 全网通4G手机 3GB+32GB 金色 高配版 双卡双待 ','爱科生活官方旗舰店',799.00,'index_phone_shop.html?did=42',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone02.jpg','【顺丰包邮】美图 T8（全网通）4GB+128GB ','怀军科技数码专营店',3488.00,'index_phone_shop.html?did=43',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone03.jpg','【顺丰包邮】联想 Lenovo S5全面屏双摄手机 ','圣彬通讯专营店',1099.00,'index_phone_shop.html?did=44',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone04.jpg','优乐酷V36 移动版 卡片手机 双面钢化玻璃镜面 金伯利 ','环宇荣合专营店',299.00,'index_phone_shop.html?did=45',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone05.jpg','【顺丰包邮 送壳膜】魅族 PRO6S 64GB 全网通公开版 双卡双','汇通数码风暴专营店',1359.00,'index_phone_shop.html?did=46',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone06.png','【新品预售】华为 nova 3e 全面屏2400万前置摄像 4GB ','锋行数码科技专营店',1999.00,'index_phone_shop.html?did=47',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone07.jpg','HUAWEI/华为 nova 2S 4+64GB 全网通 全面屏 pk 畅玩','荣合通讯手机专营店',2799.00,'index_phone_shop.html?did=48',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone08.png','金立（GiONEE） 金立S10 全网通4G手机 双卡双待 6G+64G 官方标配 ','百盛通讯连锁',1699.00,'index_phone_shop.html?did=49',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone09.jpg','三星 GALAXY S6 Edge（G9250/全网通） 5.1英寸屏幕 ','上海喆煦手机专营店',2250.00,'index_phone_shop.html?did=50',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone10.jpg','荣耀 畅玩7C（4GB RAM/全网通） ','华业通讯',1299.00,'index_phone_shop.html?did=51',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone11.jpg','vivo X9Plus（全网通） ','翔云数码专营店',2798.00,'index_phone_shop.html?did=52',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone12.jpg','OPPO R9S 全网通 4GB+64GB 双卡双待手机 金色 ','安阳长顺手机专营店',2599.00,'index_phone_shop.html?did=53',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone13.jpg','苹果 iPhone 8（全网通） ','线上本地优选名称a',9999.00,'index_phone_shop.html?did=54',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone14.jpg','荣耀 V10（6GB RAM/全网通） ','华南通信专营店',3099.00,'index_phone_shop.html?did=55',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone15.jpg','华为 畅享5S（TAG-AL00/全网通） ','新同城购测试分店',5000.00,'index_phone_shop.html?did=56',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone16.jpg','【顺丰包邮】联想 Lenovo S5全面屏双摄手机4G+64G ','圣彬通讯专营店',1299.00,'index_phone_shop.html?did=57',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone17.jpg','【新品预售】OPPO R15 全面屏双摄拍照手机 全网通 移动联通','圣彬通讯专营店',3299.00,'index_phone_shop.html?did=58',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone18.jpg','华为 Mate 9 Pro 6GB+128GB 全网通 麒麟960芯片 徕卡双摄像头 ','爱科生活官方旗舰店',3899.00,'index_phone_shop.html?did=59',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone19.jpg','【顺丰包邮 送壳膜】魅族 魅蓝E2 3GB+32GB 全网通 移动联通','汇通数码风暴专营店',859.00,'index_phone_shop.html?did=60',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone20.jpg','【包邮送壳膜】小米 红米4A（2G+16G/全网通）5寸大屏 / 骁','环宇荣合专营店',539.00,'index_phone_shop.html?did=61',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone21.jpg','【现货包邮 送壳膜】荣耀 畅玩6X 4GB 32GB/64GB 全网通4G','锋行数码科技专营店',1199.00,'index_phone_shop.html?did=62',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone22.jpg','【现货包邮送壳膜】华为 麦芒 6 全网通 4GB+64GB版 移动联通电信4G ','荣合通讯手机专营店',1899.00,'index_phone_shop.html?did=63',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone23.jpg','三星 Galaxy C5Pro 4G+64GB全网通4G手机三星C5010 ','上海喆煦手机专营店',1588.00,'index_phone_shop.html?did=64',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone24.jpg','苹果 iPhone 7（全网通）测试商品 ','线上本地优选名称a',8888.00,'index_phone_shop.html?did=65',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone25.jpg','【现货包邮+壳膜支架】魅蓝 Note6 3GB运行 全网通 移动联通电信4G ','荣合通讯手机专营店',898.00,'index_phone_shop.html?did=66',2,3,23,23);

  ###########################25个
  insert into z_index_product values(null,'img/index_phone/index_phone15.jpg','华为 畅享5S（TAG-AL00/全网通） ','新同城购测试分店',5000.00,'index_phone_shop.html?did=56',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone16.jpg','【顺丰包邮】联想 Lenovo S5全面屏双摄手机4G+64G ','圣彬通讯专营店',1299.00,'index_phone_shop.html?did=57',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone17.jpg','【新品预售】OPPO R15 全面屏双摄拍照手机 全网通 移动联通','圣彬通讯专营店',3299.00,'index_phone_shop.html?did=58',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone18.jpg','华为 Mate 9 Pro 6GB+128GB 全网通 麒麟960芯片 徕卡双摄像头 ','爱科生活官方旗舰店',3899.00,'index_phone_shop.html?did=59',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone19.jpg','【顺丰包邮 送壳膜】魅族 魅蓝E2 3GB+32GB 全网通 移动联通','汇通数码风暴专营店',859.00,'index_phone_shop.html?did=60',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone20.jpg','【包邮送壳膜】小米 红米4A（2G+16G/全网通）5寸大屏 / 骁','环宇荣合专营店',539.00,'index_phone_shop.html?did=61',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone21.jpg','【现货包邮 送壳膜】荣耀 畅玩6X 4GB 32GB/64GB 全网通4G','锋行数码科技专营店',1199.00,'index_phone_shop.html?did=62',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone22.jpg','【现货包邮送壳膜】华为 麦芒 6 全网通 4GB+64GB版 移动联通电信4G ','荣合通讯手机专营店',1899.00,'index_phone_shop.html?did=63',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone01.jpg','荣耀 畅玩6A 全网通4G手机 3GB+32GB 金色 高配版 双卡双待 ','爱科生活官方旗舰店',799.00,'index_phone_shop.html?did=42',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone02.jpg','【顺丰包邮】美图 T8（全网通）4GB+128GB ','怀军科技数码专营店',3488.00,'index_phone_shop.html?did=43',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone03.jpg','【顺丰包邮】联想 Lenovo S5全面屏双摄手机 ','圣彬通讯专营店',1099.00,'index_phone_shop.html?did=44',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone04.jpg','优乐酷V36 移动版 卡片手机 双面钢化玻璃镜面 金伯利 ','环宇荣合专营店',299.00,'index_phone_shop.html?did=45',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone05.jpg','【顺丰包邮 送壳膜】魅族 PRO6S 64GB 全网通公开版 双卡双','汇通数码风暴专营店',1359.00,'index_phone_shop.html?did=46',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone06.png','【新品预售】华为 nova 3e 全面屏2400万前置摄像 4GB ','锋行数码科技专营店',1999.00,'index_phone_shop.html?did=47',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone07.jpg','HUAWEI/华为 nova 2S 4+64GB 全网通 全面屏 pk 畅玩','荣合通讯手机专营店',2799.00,'index_phone_shop.html?did=48',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone23.jpg','三星 Galaxy C5Pro 4G+64GB全网通4G手机三星C5010 ','上海喆煦手机专营店',1588.00,'index_phone_shop.html?did=64',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone24.jpg','苹果 iPhone 7（全网通）测试商品 ','线上本地优选名称a',8888.00,'index_phone_shop.html?did=65',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone25.jpg','【现货包邮+壳膜支架】魅蓝 Note6 3GB运行 全网通 移动联通电信4G ','荣合通讯手机专营店',898.00,'index_phone_shop.html?did=66',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone08.png','金立（GiONEE） 金立S10 全网通4G手机 双卡双待 6G+64G 官方标配 ','百盛通讯连锁',1699.00,'index_phone_shop.html?did=49',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone09.jpg','三星 GALAXY S6 Edge（G9250/全网通） 5.1英寸屏幕 ','上海喆煦手机专营店',2250.00,'index_phone_shop.html?did=50',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone10.jpg','荣耀 畅玩7C（4GB RAM/全网通） ','华业通讯',1299.00,'index_phone_shop.html?did=51',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone11.jpg','vivo X9Plus（全网通） ','翔云数码专营店',2798.00,'index_phone_shop.html?did=52',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone12.jpg','OPPO R9S 全网通 4GB+64GB 双卡双待手机 金色 ','安阳长顺手机专营店',2599.00,'index_phone_shop.html?did=53',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone13.jpg','苹果 iPhone 8（全网通） ','线上本地优选名称a',9999.00,'index_phone_shop.html?did=54',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone14.jpg','荣耀 V10（6GB RAM/全网通） ','华南通信专营店',3099.00,'index_phone_shop.html?did=55',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone24.jpg','苹果 iPhone 7（全网通）测试商品 ','线上本地优选名称a',8888.00,'index_phone_shop.html?did=65',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone25.jpg','【现货包邮+壳膜支架】魅蓝 Note6 3GB运行 全网通 移动联通电信4G ','荣合通讯手机专营店',898.00,'index_phone_shop.html?did=66',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone08.png','金立（GiONEE） 金立S10 全网通4G手机 双卡双待 6G+64G 官方标配 ','百盛通讯连锁',1699.00,'index_phone_shop.html?did=49',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone09.jpg','三星 GALAXY S6 Edge（G9250/全网通） 5.1英寸屏幕 ','上海喆煦手机专营店',2250.00,'index_phone_shop.html?did=50',2,3,23,23);
  insert into z_index_product values(null,'img/index_phone/index_phone10.jpg','荣耀 畅玩7C（4GB RAM/全网通） ','华业通讯',1299.00,'index_phone_shop.html?did=51',2,3,23,23);

#2、z_index_banner轮播图
create table z_index_banner(
  bid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
  );
  insert into z_index_banner values(null,'img/index/indx_nav01.jpg','广告轮播图1','index_phone.html');
  insert into z_index_banner values(null,'img/index/indx_nav02.jpg','广告轮播图2','index_phone.html');
  insert into z_index_banner values(null,'img/index/indx_nav03.jpg','广告轮播图3','index_phone.html');
  insert into z_index_banner values(null,'img/index/indx_nav04.jpg','广告轮播图4','index_phone.html');

#3、z_index_nav	导航栏
create table z_index_nav(
  nid int primary key auto_increment,
  icon varchar(64),
  sname varchar(128)
  );
  insert into z_index_nav values(null,'fa fa-mobile-phone fa-2x','电脑');
  insert into z_index_nav values(null,'fa fa-desktop fa-lg','手机');
  insert into z_index_nav values(null,'fa fa-pie-chart fa-lg','DIY ');
  insert into z_index_nav values(null,'fa fa-camera-retro fa-lg','数码');
  insert into z_index_nav values(null,'fa fa-gamepad fa-lg','外设');
  insert into z_index_nav values(null,'fa fa-cogs fa-lg','智能');

#4、z_index_navdetail	导航栏详细信息
create table z_index_navdetail(
  vid int primary key auto_increment,
  nid int, 
  name1 varchar(32),
  name2 varchar(32),
  name3 varchar(32),
  name4 varchar(32),
  name5 varchar(32),
  name6 varchar(32),
  name7 varchar(32),
  name8 varchar(32),
  img varchar(168)
  );
  insert into z_index_navdetail values(null,1,'游戏本','超极本','二合一平板电脑','平板电脑','品牌整机','一体机','笔记本配件','笔记本电池','img/index/index_info_CT.jpg');      
  insert into z_index_navdetail values(null,2,'手机','移动电源','蓝牙耳机','手机贴膜','保护套','数据线','充电器','手机维修','img/index/index_info_PE.jpg');
  insert into z_index_navdetail values(null,3,'DIY主机','团购钜惠',' 硬盘','电源','散热器','CPU','机箱','主板','img/index/index_info_ZJ.jpg');
  insert into z_index_navdetail values(null,4,'数码相机','摄像机','相机镜头','相机电池','闪光灯','滤镜','电子教育','拍立得','img/index/index_info_ZN.jpg');
  insert into z_index_navdetail values(null,5,'键盘','鼠标','键鼠套装','鼠标垫','耳机','音箱','投影仪','录音笔','img/index/index_info_WS.jpg');
  insert into z_index_navdetail values(null,6,'智能手环','智能手表','VR眼镜','健康监测','智能机器人','智能电子秤','智能灯','智能投影','img/index/index_info_Z.jpg');

#5、z_index_product_f21	导航栏
create table z_index_product_f21(
  fid int primary key auto_increment,
  listnav varchar(16)
  );
  insert into z_index_product_f21 values(null,'影音');
  insert into z_index_product_f21 values(null,'穿戴');
  insert into z_index_product_f21 values(null,'家居');
  insert into z_index_product_f21 values(null,'出行');
  insert into z_index_product_f21 values(null,'美护');

  create table z_index_product_f210(
    fid int primary key auto_increment,
    listimg varchar(168)
  );
  insert into z_index_product_f210 values(null,'img/index/index_zhixuanYY.jpg');
  insert into z_index_product_f210 values(null,'img/index/index_zhixuanCD.jpg');
  insert into z_index_product_f210 values(null,'img/index/index_zhixuanJJ.jpg');
  insert into z_index_product_f210 values(null,'img/index/index_zhixuanCX.jpg');
  insert into z_index_product_f210 values(null,'img/index/index_zhixuanMH.jpg');


#6、z_index_product_f22	导航栏
create table z_index_product_f22(
  fid int primary key auto_increment,  
  stitle varchar(32),
  sprice decimal(10,2),
  details varchar(32),
  comment1 varchar(32),
  comment2 varchar(32),
  img varchar(128)
  );
  insert into z_index_product_f22 values(null,'必联智能无线路由器','69.00','查看详情','评测 视频 点评','电商参考价：¥暂无','img/index/index_zhinengLY.png');
  insert into z_index_product_f22 values(null,'浩酷M1带麦耳机','31.00','查看详情','评测 视频 点评','电商参考价：¥暂无','img/index/index_zhineng.jpg');
  insert into z_index_product_f22 values(null,'小米10000毫安移动电源','99.00','查看详情','评测 视频 点评','电商参考价：¥暂无','img/index/index_zhinengEJ.jpg');
  insert into z_index_product_f22 values(null,'三星S8原装耳机','109.00','查看详情','评测 视频 点评','电商参考价：¥暂无','img/index/index_zhinengEJJ.jpg');

#7、z_index_product_f23	导航栏
create table z_index_product_f23(
  fid int primary key auto_increment, 
  rimg varchar(168)
  );
  insert into z_index_product_f23 values(null,'img/index/index_DIYzhiji.jpg');
  insert into z_index_product_f23 values(null,'img/index/index_WS.jpg');
  insert into z_index_product_f23 values(null,'img/index/index_PJ.jpg');

#8、z_product_type商品种类
create table z_product_type(
  tid int primary key auto_increment,
  tname varchar(168)
  );
  #1-9电脑  9款电脑
  insert into z_product_type values(null,'酷睿ThinkPad E470');
  insert into z_product_type values(null,'戴尔 Inspiron 灵越');
  insert into z_product_type values(null,'联想 拯救者R720-15IKB');
  insert into z_product_type values(null,'华硕 ASUS）ZX53VE');
  insert into z_product_type values(null,'惠普 PAVILION');
  insert into z_product_type values(null,'联想小新锐7000');
  insert into z_product_type values(null,'神舟 战神K610D-A29D');
  insert into z_product_type values(null,'三星 SSD 850EVO');
  insert into z_product_type values(null,'宏碁Acer EX2519-C6X3');

  #10-15主机  12款主机
  insert into z_product_type values(null,'幻彩七代I5/B250 主板m.2');
  insert into z_product_type values(null,'蜂巢i7 7700K/GTX1060 6G');
  insert into z_product_type values(null,'光韵i7 7700/1060独显');
  insert into z_product_type values(null,'【甲骨龙-赤龙542】 i5 ');
  insert into z_product_type values(null,'【甲骨龙-夔龙743】酷睿I7');
  insert into z_product_type values(null,'甲骨龙i7 7700K ');
  #16-21主机
  insert into z_product_type values(null,'幻彩四核i5 7400/DIY组装游戏');
  insert into z_product_type values(null,'炫酷侧透战车主机！四核i5');
  insert into z_product_type values(null,'先锋奔腾G3900/120G SSD');
  insert into z_product_type values(null,'晶彩i5 7400/GTX1050-2G独显');
  insert into z_product_type values(null,'格派 I5 7500/1050-4G');
  insert into z_product_type values(null,'光韵四核i5 7400/DIY组装游戏电脑主机台式机兼容机');

  #22-46手机  25款
  insert into z_product_type values(null,'荣耀 畅玩6A 全网通4G手机');  
  insert into z_product_type values(null,'美图 T8 全网通 4GB');  
  insert into z_product_type values(null,'联想 Lenovo S5全面屏');
  insert into z_product_type values(null,'优乐酷V36 移动版 卡片手机 ');
  insert into z_product_type values(null,'魅族 PRO6S 64GB');
  insert into z_product_type values(null,'华为 nova 3e 全面屏');
  insert into z_product_type values(null,'HUAWEI/华为 nova 2S');
  insert into z_product_type values(null,'金立S10 全网通4G手机');
  insert into z_product_type values(null,'三星 GALAXY S6 Edge');
  insert into z_product_type values(null,'荣耀 畅玩7C 4GB RAM/全网通');
  #32
  insert into z_product_type values(null,'vivo X9Plus 全网通');
  insert into z_product_type values(null,'OPPO R9S 全网通 4GB+64GB 双卡双待手机 金色 ');
  insert into z_product_type values(null,'苹果 iPhone 8 全网通 ');
  insert into z_product_type values(null,'荣耀 V106GB RAM/全网通');
  insert into z_product_type values(null,'华为 畅享5S TAG-AL00/全网通 ');
  insert into z_product_type values(null,'联想 Lenovo S5');
  insert into z_product_type values(null,'OPPO R15 全面屏');
  insert into z_product_type values(null,'华为 Mate 9 Pro 6GB');
  insert into z_product_type values(null,'魅族 魅蓝E2 3GB');
  insert into z_product_type values(null,'小米 红米4A 2G+16G/全网通');
  #42
  insert into z_product_type values(null,'荣耀 畅玩6X 4GB');
  insert into z_product_type values(null,'华为 麦芒 6 全网通 4GB');
  insert into z_product_type values(null,'三星 Galaxy C5Pro 4G');
  insert into z_product_type values(null,'apple授权专卖 iPhone X');
  insert into z_product_type values(null,'魅蓝 Note6 3GB运行');


#9、z_product_spec	规格表
create table z_product_spec(
  sid int primary key auto_increment,
  s_tid int,
  sname varchar(128),
  sprice decimal(10,2)
  );
  #酷睿ThinkPad E470  规格
  insert into z_product_spec values(null,1,'银/i5-6300H/4G/1TB/GT960M 2G',00.00);
  insert into z_product_spec values(null,1,'黑/i5-6300H/4G/1T/GT960M 2G',150.00);
  insert into z_product_spec values(null,1,'白i5-6300/8G/128G+500G GTX960-2G',200.00);

  #戴尔 Inspiron 灵越  规格
  insert into z_product_spec values(null,2,'银i7-8550U 8G 256G固+1TB',0.00);
  insert into z_product_spec values(null,2,'粉i7-8550U 8G 256G固+1TB',50.00);

  #联想 拯救者R720-15IKB 规格
  insert into z_product_spec values(null,3,'I5 8G 1T+128GSSD GTX1060-6G',00.00);

  #华硕（ASUS） ZX53VE  规格
  insert into z_product_spec values(null,4,'ZX53VE7300（8GB/128GB+1TB/2G独显）',0.00);
  insert into z_product_spec values(null,4,'ZX53VE7300（8GB/128GB+1TB/4G独显）',120.00);
  insert into z_product_spec values(null,4,'ZX53VE7300（8GB/128GB+1TB/8G独显）',150.00);

  # 惠普 PAVILION
  insert into z_product_spec values(null,5,'银色',0.00);

  #联想小新锐7000 规格
  insert into z_product_spec values(null,6,'银灰色',0.00);
  insert into z_product_spec values(null,6,'沉稳黑',0.00);
  insert into z_product_spec values(null,6,'魅力金',0.00);

  #神舟 战神K610D-A29D
  insert into z_product_spec values(null,7,'黑色',0.00);

  #三星 SSD 850EVO
  insert into z_product_spec values(null,8,'银色',0.00);

  # 宏碁Acer EX2519-C6X3
  insert into z_product_spec values(null,9,'星光银',0.00);


  #主机 12款
  insert into z_product_spec values(null,10,'默认标配',0.00);

  insert into z_product_spec values(null,11,'标配',0.00);
  insert into z_product_spec values(null,11,'标配+升级240G固态盘',0.00);
  insert into z_product_spec values(null,11,'标配+1TB机械盘',0.00);

  insert into z_product_spec values(null,12,'标配',0.00);
  insert into z_product_spec values(null,12,'标配+1TB机械盘',0.00);
  insert into z_product_spec values(null,12,'标配+升级240G固态盘',0.00);

  insert into z_product_spec values(null,13,'标配',0.00);

  insert into z_product_spec values(null,14,'标配',0.00);
  insert into z_product_spec values(null,14,'标配+1TB机械盘',0.00);
  insert into z_product_spec values(null,14,'标配+升级240G固态盘',0.00);

  insert into z_product_spec values(null,15,'标配',0.00);

  insert into z_product_spec values(null,16,'标配',0.00);
  insert into z_product_spec values(null,17,'标配',0.00);
  insert into z_product_spec values(null,18,'标配+升级240G固态盘',0.00);
  insert into z_product_spec values(null,19,'标配',0.00);
  insert into z_product_spec values(null,20,'标配+1TB机械盘',0.00);
  insert into z_product_spec values(null,21,'标配',0.00);

  #####################################################手机25款
  #1荣耀 畅玩6A
  insert into z_product_spec values(null,22,'金色 行货32GB',0.00);
  #2美图 T8
  insert into z_product_spec values(null,23,'魔力橙 行货128GB',0.00);
  insert into z_product_spec values(null,23,'玫瑰金 行货128GB',0.00);
  insert into z_product_spec values(null,23,'极光绿 行货128GB',0.00);
  #3联想 Lenovo S5
  insert into z_product_spec values(null,24,'烈焰红  3GB',0.00);
  insert into z_product_spec values(null,24,'星夜黑 4GB',0.00);
  #4优乐酷V36
  insert into z_product_spec values(null,25,'黑色',0.00);
  insert into z_product_spec values(null,25,'钻雕蓝',0.00);
  insert into z_product_spec values(null,25,'金色',0.00);
  #5魅族 PRO6S
  insert into z_product_spec values(null,26,'香槟金',0.00);
  insert into z_product_spec values(null,26,'玫瑰金',0.00);
  insert into z_product_spec values(null,26,'星空黑',0.00);
  #6华为 nova 3e
  insert into z_product_spec values(null,27,'新品预售 幻夜黑',0.00);
  insert into z_product_spec values(null,27,'新品预售 克莱因蓝',0.00);
  insert into z_product_spec values(null,27,'新品预售 铂光金',0.00);
  #7HUAWEI/华为 nova 2S
  insert into z_product_spec values(null,28,'曜石黑',0.00);
  insert into z_product_spec values(null,28,'银钻灰',0.00);
  #8金立S10
  insert into z_product_spec values(null,29,'黑色 行货64G',0.00);
  #9三星 GALAXY 
  insert into z_product_spec values(null,30,'黑色',0.00);
  #10荣耀 畅玩7C
  insert into z_product_spec values(null,31,'铂光金',0.00);
  insert into z_product_spec values(null,31,'幻夜黑',0.00);
  insert into z_product_spec values(null,31,'极光蓝',0.00);
  #11vivo X9Plus
  insert into z_product_spec values(null,32,'铂光金',0.00);
  insert into z_product_spec values(null,32,'幻夜黑',0.00);
  insert into z_product_spec values(null,32,'极光蓝',0.00);
  #12OPPO R9S 全网通
  insert into z_product_spec values(null,33,'力蓝',0.00);
  insert into z_product_spec values(null,33,'玫瑰金',0.00);
  insert into z_product_spec values(null,33,'磨砂黑',0.00);
  #13苹果 iPhone 8
  insert into z_product_spec values(null,34,'金色',0.00);
  #14荣耀 V10
  insert into z_product_spec values(null,35,'黑色',0.00);
  insert into z_product_spec values(null,35,'金色',0.00);
  insert into z_product_spec values(null,35,'蓝色',0.00);
  #15华为 畅享5S
  insert into z_product_spec values(null,36,'黑色',0.00);
  #16联想 Lenovo S5 
  insert into z_product_spec values(null,37,'星夜黑',0.00);
  insert into z_product_spec values(null,37,'烈焰红',0.00);
  #17OPPO R15 全面屏
  insert into z_product_spec values(null,38,'热力红',0.00);
  #18华为 Mate 9
  insert into z_product_spec values(null,39,'玫瑰金',0.00);
  #19魅族 魅蓝E2
  insert into z_product_spec values(null,40,'月光银',0.00);
  insert into z_product_spec values(null,40,'香槟金',0.00);

  #20小米 红米4A
  insert into z_product_spec values(null,41,'金色',0.00);
  insert into z_product_spec values(null,41,'粉色',0.00);
  insert into z_product_spec values(null,41,'灰色',0.00);
  #21荣耀 畅玩6X 
  insert into z_product_spec values(null,42,'铂光金',0.00);
  insert into z_product_spec values(null,42,'月光影',0.00);
  insert into z_product_spec values(null,42,'玫瑰金',0.00);
  #22华为 麦芒 6
  insert into z_product_spec values(null,43,'黑色',0.00);
  insert into z_product_spec values(null,43,'金色',0.00);
  insert into z_product_spec values(null,43,'蓝色',0.00);
  #23三星 Galaxy
  insert into z_product_spec values(null,44,'金色64G',0.00);
  #24apple授权专卖
  insert into z_product_spec values(null,45,'银色行货64GB',0.00);
  insert into z_product_spec values(null,45,'深灰色行货64GB',0.00);
  insert into z_product_spec values(null,45,'银色行货256GB',0.00);
  #25魅蓝 Note6
  insert into z_product_spec values(null,46,'银色',0.00);
  insert into z_product_spec values(null,46,'黑色',0.00);
  insert into z_product_spec values(null,46,'金色',0.00);

#10、z_product_package 套装表
create table z_product_package(
  pid int primary key auto_increment,
  p_tid int,
  pname varchar(32),
  pdetail varchar(168),
  pprice decimal(10,2)
  );
  #1-9 9款电脑
  #1
  insert into z_product_package values(null,1,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,1,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,1,'套装二','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标+键盘',150.00);
  #2
  insert into z_product_package values(null,2,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,2,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,2,'套装二','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标+键盘',150.00);
  #3
  insert into z_product_package values(null,3,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  #4
  insert into z_product_package values(null,4,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,5,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  #5
  insert into z_product_package values(null,5,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,5,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,5,'套装二','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标+键盘',150.00);
  #6
  insert into z_product_package values(null,6,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,6,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  #7
  insert into z_product_package values(null,7,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  #8
  insert into z_product_package values(null,8,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,8,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,8,'套装二','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标+键盘',150.00);
  #9
  insert into z_product_package values(null,9,'官方标配','全国联保保修卡+说明书+电源适配器+电池',0.00);
  insert into z_product_package values(null,9,'套装一','全国联保保修卡+说明书+电源适配器+电池+保修发票+原装鼠标',50.00);
  ## 12款 主机##########################################
  #10
  insert into z_product_package values(null,10,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,10,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,10,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #11
  insert into z_product_package values(null,11,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,11,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,11,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #12
  insert into z_product_package values(null,12,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  #13
  insert into z_product_package values(null,13,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,13,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,13,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #14
  insert into z_product_package values(null,14,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,14,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,14,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #15
  insert into z_product_package values(null,15,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  #16
  insert into z_product_package values(null,16,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  #17
  insert into z_product_package values(null,17,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,17,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,17,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #18
  insert into z_product_package values(null,18,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  #19
  insert into z_product_package values(null,19,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,19,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,19,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #20
  insert into z_product_package values(null,20,'官方标配','全国联保保修卡+说明书+保修发票',0.00);
  insert into z_product_package values(null,20,'套装一','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标',50.00);
  insert into z_product_package values(null,20,'套装二','全国联保保修卡+说明书+电源适配器+保修发票+原装鼠标+键盘',150.00);
  #21
  insert into z_product_package values(null,21,'官方标配','全国联保保修卡+说明书+保修发票',0.00);

  ##手机22-46  25款 #########################################
  #22
  insert into z_product_package values(null,22,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,22,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,22,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);

  #23
  insert into z_product_package values(null,23,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,23,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,23,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #24
  insert into z_product_package values(null,24,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,24,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,24,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #25
  insert into z_product_package values(null,25,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,25,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,25,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #26
  insert into z_product_package values(null,26,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,26,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,26,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #27
  insert into z_product_package values(null,27,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #28
  insert into z_product_package values(null,28,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #29
  insert into z_product_package values(null,29,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,29,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,29,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #30
  insert into z_product_package values(null,30,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #31
  insert into z_product_package values(null,31,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,31,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,31,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #32
  insert into z_product_package values(null,32,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #33
  insert into z_product_package values(null,33,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,33,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,33,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #34
  insert into z_product_package values(null,34,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #35
  insert into z_product_package values(null,35,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #36
  insert into z_product_package values(null,36,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #37
  insert into z_product_package values(null,37,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,37,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,37,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #38
  insert into z_product_package values(null,38,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #39
  insert into z_product_package values(null,39,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,39,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,39,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);
  #40
  insert into z_product_package values(null,40,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #41
  insert into z_product_package values(null,41,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  #42
  insert into z_product_package values(null,42,'官方标配','手机+充电器+保修证书+SIM卡顶针+数据线',0.00);
  insert into z_product_package values(null,42,'套装一','手机+充电器+保修证书+SIM卡顶针+数据线+全屏钢化膜',50.00);
  insert into z_product_package values(null,42,'套装二','手机+充电器+保修证书+SIM卡顶针+VR眼镜+音乐耳机',150.00);

#11、z_product_inforimg商品详情图片
create table z_product_inforimg(
  iid int primary key auto_increment,
  pid int,
  iimage varchar(168)
  );
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/sevice-title-new.png');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr01.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr03.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr04.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr05.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr06.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr07.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr02.jpg');
  insert into z_product_inforimg values(null,1,'img/index_phone_stop/index_phone_pr10.jpg');

  #z_product_inforsuit商品详情套餐------------------
  create table z_product_inforsuit(
    sid int primary key auto_increment,
    pid int,
    ititle varchar(168)
  );
  insert into z_product_inforsuit values(null,1,'官方标配：全新原装电脑+全国联保保修卡+说明书+电源适配器+电池+保修发票（具体以厂家配置为准）');
  insert into z_product_inforsuit values(null,1,'套装一:官方标配+品牌电脑包+品牌有线鼠标+精美鼠标垫');
  insert into z_product_inforsuit values(null,1,'套装二:套餐一+高清屏幕保护膜+防水/防尘硅胶键盘膜+内胆包+散热底座');
  insert into z_product_inforsuit values(null,1,'套装三:套餐二+电脑清洁剂+鼠标键盘套餐+电脑背包+电脑手提包+网线一条+充电线一条');

#12、z_index_detaile购物车商品详细信息表
create table z_product_detail(
  did int primary key auto_increment,
  d_tid int,            # 型号
  title varchar(128),
  smtitle varchar(128),
  price decimal(10,2),
  mouse varchar(128) default null, #赠品
  bag varchar(128) default null,
  game varchar(128) default null,
  laptop varchar(128) default null,
  ticket varchar(64),  #优惠券
  bank varchar(64),
  bill varchar(64),
  comment int,       #评论
  record int       #记录
  #spec varchar(64),  #规格
  #suit varchar(32),  #套装
  #combo varchar(64)  #套餐
  );
  #1
  insert into z_product_detail values(null,1,'【黑将游戏本】ThinkPad 黑将S5（20G4A01PCD）15.6英寸 ','游戏本 酷睿i5-6300HQ 8GB 128GB+500GB GTX960-2G 预装Windows 10',5399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',131,374);
  #2
  insert into z_product_detail values(null,2,'[店铺促销] 【窄边新品】戴尔 Inspiron 灵越 15 7000系列（INS15-7570-D1745S）','15.6英寸！8代四核/八线程i7-8550U 8G内存 256G SSD固态+1TB硬盘 GT940MX-4G独显',7024.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',481,169);
  #3
  insert into z_product_detail values(null,3,'联想 拯救者R720-15IKB（i5 7300HQ/8GB/128GB+1TB/GTX1060-6G独显）','i7-8550U 8G内存 256G SSD固态+1TB硬盘 GT940MX-4G独显',7199.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',347,383);
  #4
  insert into z_product_detail values(null,1,'【承袭经典】ThinkPad E470（20H1A08MCD）14英寸','时尚轻薄本，商务办公本 英特尔 酷睿i7 7代系列 8GB+256GSSD 940MX-2G 因稳定而出色',7024.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',157,383);
  #5
  insert into z_product_detail values(null,4,'华硕（ASUS） ZX53VE 15.6英寸高清屏四核游戏本笔记本电脑','I5-7300HQ/2G显存 8G内存+128G固态+1TB机械硬盘',5399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',341,346);
  #6
  insert into z_product_detail values(null,5,'【顺丰包邮·官方授权】联想 YOGA 720-13IKB（I5 7200U/4GB/256GB）','时尚轻薄本 酷睿I5-7200U 4G内存 256G SSD固态硬盘 2G独显',6250.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',28,70);
  #7
  insert into z_product_detail values(null,9,'【顺丰包邮】Acer SF314-51 宏基蜂鸟商务办公 影音娱乐','14英寸全金属轻薄笔记本（i7-6500U 8G 256G SSD IPS全高清 背光键盘 指纹识别 win10）',4200.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #8
  insert into z_product_detail values(null,6,'【新品上市】联想 小新 潮7000-13（i7 8550U/8GB/256GB）','三面微边框全高清IPS屏，轻至1.2Kg，双涡轮冷风扇散热，四核芯八线程+MX150-2G显卡',5366.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #9
  insert into z_product_detail values(null,6,'【顺丰包邮·官方授权】联想 YOGA 720-13IKB（I5 7200U/4GB/256GB）','时尚轻薄本 酷睿I5-7200U 4G内存 256G SSD固态硬盘 2G独显',6250.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #10
  insert into z_product_detail values(null,7,'【顺丰包邮】神舟 战神K670D-G4D1 15.6英寸发烧级显卡GTX1050-4G','游戏，影音娱乐，商务办公(G4560 8G 1T GTX1050 4G独显 1080P)IPS屏 双风扇散热',4399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #11
  insert into z_product_detail values(null,8,'【顺丰包邮·官方授权】三星 900X3M-K02 时尚轻薄本（酷睿i7 7500U处理器)','8G内存 512G固态硬盘 HD 620核显）1920x1080 FHD高分屏',8695.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #12  1
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 15 5000系列（INS15-5570-D1525S）15.6英寸/银色','酷睿8代i5处理器 4G内存 1000G硬盘 AMD R530-2G 独显 FHD防眩光屏幕 金属机身！',4949.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #13
  insert into z_product_detail values(null,7,'【顺丰包邮】神舟 战神 K670D-i7 D2 15.6英吋游戏影音本','酷睿四代i7四核，支持1080p高清，配背光键盘',6399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #14  1
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 14 7000系列 游匣Master （Ins14-7467-D1545B）','四核i5 4G独显 GTX1050',4999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #15  2
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 14 7000系列 游匣Master （Ins14-7467-D1545B）','四核i5 4G独显 GTX1050',4999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #16  3
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 14 7000系列 游匣Master （Ins14-7467-D1545B）','四核i5 4G独显 GTX1050',4999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #17  4
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 14 7000系列 游匣Master （Ins14-7467-D1545B）','四核i5 4G独显 GTX1050',4999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #18  2
  insert into z_product_detail values(null,2,'戴尔 Inspiron 灵越 15 5000系列（INS15-5570-D1525S）15.6英寸/银色','酷睿8代i5处理器 4G内存 1000G硬盘 AMD R530-2G 独显 FHD防眩光屏幕 金属机身！',4949.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #19  3
  insert into z_product_detail values(null,5,'【顺丰包邮】惠普 战66 Pro G1（2SS16PA）14英寸轻薄笔记本电脑','影音娱乐，商务办公，时尚轻薄（i5-8250U 8G 256G SSD+500G MX150 2G独显）银色',5566.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #20
  insert into z_product_detail values(null,1,'【黑将游戏本】ThinkPad 黑将S5（20G4A01PCD）15.6英寸 ','游戏本 酷睿i5-6300HQ 8GB 128GB+500GB GTX960-2G 预装Windows 10',5399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',131,374);
  #21
  insert into z_product_detail values(null,2,'[店铺促销] 【窄边新品】戴尔 Inspiron 灵越 15 7000系列（INS15-7570-D1745S）','15.6英寸！8代四核/八线程i7-8550U 8G内存 256G SSD固态+1TB硬盘 GT940MX-4G独显',7024.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',481,169);
  #22
  insert into z_product_detail values(null,3,'联想 拯救者R720-15IKB（i5 7300HQ/8GB/128GB+1TB/GTX1060-6G独显）','i7-8550U 8G内存 256G SSD固态+1TB硬盘 GT940MX-4G独显',7199.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',347,383);
  #23
  insert into z_product_detail values(null,1,'【承袭经典】ThinkPad E470（20H1A08MCD）14英寸','时尚轻薄本，商务办公本 英特尔 酷睿i7 7代系列 8GB+256GSSD 940MX-2G 因稳定而出色',7120.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',157,383);
  #24
  insert into z_product_detail values(null,6,'【新品上市】联想 小新 潮7000-13（i7 8550U/8GB/256GB）','三面微边框全高清IPS屏，轻至1.2Kg，双涡轮冷风扇散热，四核芯八线程+MX150-2G显卡',5366.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #25
  insert into z_product_detail values(null,6,'【顺丰包邮·官方授权】联想 YOGA 720-13IKB（I5 7200U/4GB/256GB）','时尚轻薄本 酷睿I5-7200U 4G内存 256G SSD固态硬盘 2G独显',6250.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #26
  insert into z_product_detail values(null,7,'【顺丰包邮】神舟 战神K670D-G4D1 15.6英寸发烧级显卡GTX1050-4G','游戏，影音娱乐，商务办公(G4560 8G 1T GTX1050 4G独显 1080P)IPS屏 双风扇散热',4399.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #27
  insert into z_product_detail values(null,8,'【顺丰包邮·官方授权】三星 900X3M-K02 时尚轻薄本（酷睿i7 7500U处理器)','8G内存 512G固态硬盘 HD 620核显）1920x1080 FHD高分屏',8695.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #28
  insert into z_product_detail values(null,2,'【顺丰包邮.官方授权】戴尔灵越14 7000新游匣热血魂 赤红','（INS14-7466-D1745R）影音娱乐本（i7 6700/8G/128G+500G/4G性能独显） ',5799.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #29
  insert into z_product_detail values(null,1,'1ACD/A10-9600/8G/256G/2G/W10','7代AMD处理器 办公娱乐两不误.办公不错的选择.北京四环内货到付款 自提',3988.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png','img/index_phone_stop/index_phone_stop03_s4.jpg','¥29(满¥4288可用)',' ¥39(满¥5288可用)',' ¥49(满¥6288可用)',125,241);
  #30
  insert into z_product_detail values(null,10,'甲骨龙酷睿I5四核心GTX1050/游戏台式电脑主机DIY组装机 ','全新正品 三年质保',2799.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #31
  insert into z_product_detail values(null,11,'甲骨龙 i7 7700/GTX1060-6G/B250M/DIY台式电脑主机游戏 游戏主机','整机三年质保 GTX1060-6G独显',5999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',132,536);
  #32
  insert into z_product_detail values(null,12,'甲骨龙八代I5-8400/GTX1050TI-4G独显DIY吃鸡 ','全新正品三年质保',3959.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',16,546);
  #33
  insert into z_product_detail values(null,13,'甲骨龙i3 8100八代四核心游戏电脑主机/DIY组装电脑 ','全新正品 三年质保',1688.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)','¥49(满¥2288可用)',152,56);
  #34
  insert into z_product_detail values(null,14,'甲骨龙酷睿I7/GTX1050TI-4G /B250 M.2 ','128GSSD高速硬盘/DIY式整机',4599.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #35
  insert into z_product_detail values(null,15,'甲骨龙i7 7700K /GTX1070-8G/一体水冷/','吃鸡配置/DIY游戏主机电脑',8599.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #36
  insert into z_product_detail values(null,16,'甲骨龙I5 7400/GTX1050TI 4G独显DIY游戏主机 ','下单立减300元到手价3399元 全新正品',3699.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #37
  insert into z_product_detail values(null,17,'甲骨龙 i7 7700/GTX1060-6G/B250M/DIY台式电脑主机游','整机三年质保 GTX1060-6G独显',5999.00,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #38
  insert into z_product_detail values(null,18,'甲骨龙 先锋奔腾G3900/120G SSD固态盘家用办公台式电脑主机/DIY组装机 ','支持加配，请联系客脑18071713442（微信同号）',1799.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #39
  insert into z_product_detail values(null,19,'甲骨龙晶彩i5 7400/GTX1050-2G独显/DIY游戏组装台式电脑 ','支持加配，联系客服补差价QQ：2900758886',3699.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #40
  insert into z_product_detail values(null,20,'甲骨龙 酷睿I5-7500/GTX1050TI-4G独显/B250+M.2SSD高速固态/DIY游戏组装机 ','1050游戏主机 第七代酷睿i5 7500搭配10系GTX1050TI-4G独显畅玩游戏！',3899.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #41
  insert into z_product_detail values(null,21,'甲骨龙 酷睿I5-7500/GTX1050TI-4G独显/技嘉B250主板/DIY游戏主机','升级七代高频i5高端品牌更稳定',4199.00 ,'img/index_phone_stop/index_phone_stop03_s1.jpg','img/index_phone_stop/index_phone_stop03_s3.jpg','img/index_phone_stop/index_phone_stop03_s2.png',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  ##手机  ################################

  #42
  insert into z_product_detail values(null,22,'荣耀 畅玩6A 全网通4G手机 3GB+32GB 金色 高配版 双卡双待 ','全国包邮',799.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #43
  insert into z_product_detail values(null,23,'【顺丰包邮】美图 T8（全网通）4GB+128GB','双像素前置摄像头，美图T8为夜而生，让夜间自拍唯美高清，全新原封，全国联保',3488.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #44
  insert into z_product_detail values(null,24,'【顺丰包邮】联想 Lenovo S5全面屏双摄手机 3G+32GB 全网通4G+','新品现货，Lenovo S5新品上市，千元全面屏、智慧双摄！',1099.00 ,'img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #45
  insert into z_product_detail values(null,25,'优乐酷V36 移动版 卡片手机 双面钢化玻璃镜面 金伯利 iPhone备用机','触摸按键 时尚超薄，蓝牙拨号，完美触控技术 移动联通',229.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg',null,null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #46
  insert into z_product_detail values(null,26,'【顺丰包邮 送壳膜】魅族 PRO6S 64GB 全网通公开版 双卡双待 4GB+64GB','1200万像素光学防抖！全国联保一年!支持花呗付款！',1359.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP04.jpg','img/index_phone/index_phoneZP02.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #47 
  insert into z_product_detail values(null,27,'【新品预售】华为 nova 3e 全面屏2400万前置摄像 4GB +64GB 全网通版','人脸识别，新一代19:9全面屏，游戏助手，智能语音助手',1999.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP03.jpg',null,null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #48
  insert into z_product_detail values(null,28,'【包邮送壳膜】HUAWEI/华为 nova 2S 4+64GB 全网通 全面屏 pk 畅玩7x',' 前后双摄，裸妆美颜，双面玻璃，6.0英寸全面屏！',2799.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP02.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #49 
  insert into z_product_detail values(null,29,'金立（GiONEE） 金立S10 全网通4G手机 双卡双待 6G+64G','官方标配 前后双摄拍照更美，支持实时背景虚化，团购更优惠',1699.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP02.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #50
  insert into z_product_detail values(null,30,'三星 GALAXY S6 Edge（G9250/全网通） 5.1英寸屏幕','前后双摄拍照更美，支持实时背景虚化',2250.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP02.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #51
  insert into z_product_detail values(null,31,'荣耀 畅玩7C（4GB RAM/全网通） ','游戏助手，智能语音助手',1299.00 ,'img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','img/index_phone/index_phoneZP01.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #52
  insert into z_product_detail values(null,32,'vivo X9Plus（全网通） 6GB+64GB','强大性能、前置2000万柔光双摄、双卡双待！',2798.00 ,'img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP04.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  # 53
  insert into z_product_detail values(null,33,'53OPPO R9S 全网通 4GB+64GB 双卡双待手机 金色','OPPO R9S 全网通 4GB+64GB 双卡双待手机 金色',2599.00 ,'img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP04.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #54
  insert into z_product_detail values(null,35,'苹果 iPhone 8（全网通） ','苹果 iPhone 8（全网通） ',9999.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #55
  insert into z_product_detail values(null,35,'苹果 iPhone 8（全网通） ','苹果 iPhone 8（全网通） ',9999.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #56
  insert into z_product_detail values(null,36,'荣耀 V10（6GB RAM/全网通）','荣耀 V10（6GB RAM/全网通）',3099.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #57
  insert into z_product_detail values(null,37,'华为 畅享5S（TAG-AL00/全网通） ','华为 畅享5S（TAG-AL00/全网通） ',5000.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #58 
  insert into z_product_detail values(null,38,'【顺丰包邮】联想 Lenovo S5全面屏双摄手机4G+64G 全网通4G+双卡双待','新品现货，千元全面屏、智慧双摄，全新正品，全国联保！',1299.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #59 
  insert into z_product_detail values(null,39,'【新品预售】OPPO R15 全面屏双摄拍照手机 全网通','移动联通电信4G 新品预售，超视野全面屏，6G+128GB大内存',3299.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #60 
  insert into z_product_detail values(null,40,'华为 Mate 9 Pro 6GB+128GB 全网通 麒麟960芯片 徕卡双摄像头','【全国包邮】【北京三小时送达】',3899.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #61 
  insert into z_product_detail values(null,41,'【包邮送壳膜】小米 红米4A（2G+16G/全网通）5寸大屏 / 骁龙四核','送壳膜 支架 5英寸长续航，1300万像素，骁龙芯片，3120mAh大电池',539.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #62
  insert into z_product_detail values(null,42,'【现货包邮 送壳膜】荣耀 畅玩6X 4GB 32GB/64GB  ','全网通4G手机 高配版',1119.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #63 
  insert into z_product_detail values(null,43,'【现货包邮送壳膜】华为 麦芒 6 全网通 4GB+64GB版 移动联通电信4G','下单再送手机壳膜手机支架 5.9英寸全面屏！前后双摄！',1899.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #64  
  insert into z_product_detail values(null,44,'三星 Galaxy C5Pro 4G+64GB全网通4G手机三星C5010','正品行货 全国联保 4G+64G版',1588.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg','¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #65
  insert into z_product_detail values(null,45,'正品行货 全国联保 4G+64G版','正品行货 全国联保 4G+64G版',7880.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP02.jpg','img/index_phone/index_phoneZP03.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);
  #66
  insert into z_product_detail values(null,46,'荣耀 畅玩7C（4GB RAM/全网通） ','荣耀 畅玩7C（4GB RAM/全网通） ',1299.00 ,'img/index_phone/index_phoneZP01.jpg','img/index_phone/index_phoneZP03.jpg','img/index_phone/index_phoneZP04.jpg',null,'¥29(满¥1088可用)',' ¥39(满¥1188可用)',' ¥49(满¥2288可用)',152,56);

#13、z_product_img	放大镜图片表
create table z_product_img(
  iid int primary key auto_increment,
  i_did int,
  lg varchar(128),
  md varchar(128),
  sm varchar(128)
  );
  #1
  insert into z_product_img values(null,1,'img/index_phone_stop/lg/index_phone_stop01_lg.png','img/index_phone_stop/md/index_phone_stop01_md.png','img/index_phone_stop/sm/index_phone_stop01_s1.png');
  insert into z_product_img values(null,1,'img/index_phone_stop/lg/index_phone_stop02_lg.png', 'img/index_phone_stop/lg/index_phone_stop02_lg.png','img/index_phone_stop/sm/index_phone_stop01_s2.png');
  insert into z_product_img values(null,1,'img/index_phone_stop/lg/index_phone_stop03_lg.png','img/index_phone_stop/lg/index_phone_stop03_lg.png','img/index_phone_stop/sm/index_phone_stop01_s3.png');
  insert into z_product_img values(null,1,'img/index_phone_stop/lg/index_phone_stop04_lg.png','img/index_phone_stop/lg/index_phone_stop04_lg.png','img/index_phone_stop/sm/index_phone_stop01_s4.png');
  insert into z_product_img values(null,1,'img/index_phone_stop/lg/index_phone_stop05_lg.png','img/index_phone_stop/lg/index_phone_stop05_lg.png','img/index_phone_stop/sm/index_phone_stop01_s5.png');
  #2
  insert into z_product_img values(null,2,'img/index_phone_stop/lg/index_phone_stop06_lg.jpg','img/index_phone_stop/lg/index_phone_stop06_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s6.jpg');
  insert into z_product_img values(null,2,'img/index_phone_stop/lg/index_phone_stop07_lg.jpg','img/index_phone_stop/lg/index_phone_stop07_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s7.jpg');
  insert into z_product_img values(null,2,'img/index_phone_stop/lg/index_phone_stop08_lg.jpg','img/index_phone_stop/lg/index_phone_stop08_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s8.jpg');
  insert into z_product_img values(null,2,'img/index_phone_stop/lg/index_phone_stop09_lg.jpg','img/index_phone_stop/lg/index_phone_stop09_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s9.jpg');
  insert into z_product_img values(null,2,'img/index_phone_stop/lg/index_phone_stop010_lg.jpg','img/index_phone_stop/lg/index_phone_stop010_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s10.jpg');
  #3
  insert into z_product_img values(null,3,'img/index_phone_stop/lg/index_phone_stop011_lg.jpg','img/index_phone_stop/md/index_phone_stop03_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s11.png');
  insert into z_product_img values(null,3,'img/index_phone_stop/lg/index_phone_stop012_lg.jpg','img/index_phone_stop/lg/index_phone_stop012_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s12.jpg');
  insert into z_product_img values(null,3,'img/index_phone_stop/lg/index_phone_stop013_lg.jpg','img/index_phone_stop/lg/index_phone_stop013_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s13.jpg');
  #4
  insert into z_product_img values(null,4,'img/index_phone_stop/lg/index_phone_stop014_lg.jpg','img/index_phone_stop/md/index_phone_stop04_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s14.png');
  insert into z_product_img values(null,4,'img/index_phone_stop/lg/index_phone_stop015_lg.jpg','img/index_phone_stop/lg/index_phone_stop015_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s15.png');
  insert into z_product_img values(null,4,'img/index_phone_stop/lg/index_phone_stop016_lg.jpg','img/index_phone_stop/lg/index_phone_stop016_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s16.png');
  #5
  insert into z_product_img values(null,5,'img/index_phone_stop/lg/index_phone_stop017_lg.jpg','img/index_phone_stop/lg/index_phone_stop017_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s17.jpg');
  insert into z_product_img values(null,5,'img/index_phone_stop/lg/index_phone_stop018_lg.jpg','img/index_phone_stop/lg/index_phone_stop018_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s18.jpg');
  #6
  insert into z_product_img values(null,6,'img/index_phone_stop/lg/index_phone_stop022_lg.png','img/index_phone_stop/lg/index_phone_stop022_lg.png','img/index_phone_stop/sm/index_phone_stop01_s22.png');
  insert into z_product_img values(null,6,'img/index_phone_stop/lg/index_phone_stop023_lg.png','img/index_phone_stop/lg/index_phone_stop023_lg.png','img/index_phone_stop/sm/index_phone_stop01_s23.png');
  insert into z_product_img values(null,6,'img/index_phone_stop/lg/index_phone_stop024_lg.png','img/index_phone_stop/lg/index_phone_stop024_lg.png','img/index_phone_stop/sm/index_phone_stop01_s24.png');
  #7
  insert into z_product_img values(null,7,'img/index_phone_stop/lg/index_phone_stop027_lg.png','img/index_phone_stop/lg/index_phone_stop027_lg.png','img/index_phone_stop/sm/index_phone_stop01_s27.png');
  insert into z_product_img values(null,7,'img/index_phone_stop/lg/index_phone_stop028_lg.png','img/index_phone_stop/lg/index_phone_stop028_lg.png','img/index_phone_stop/sm/index_phone_stop01_s28.png');
  #8
  insert into z_product_img values(null,8,'img/index_phone_stop/lg/index_phone_stop029_lg.png','img/index_phone_stop/lg/index_phone_stop029_lg.png','img/index_phone_stop/sm/index_phone_stop01_s29.png');
  insert into z_product_img values(null,8,'img/index_phone_stop/lg/index_phone_stop030_lg.png','img/index_phone_stop/lg/index_phone_stop030_lg.png','img/index_phone_stop/sm/index_phone_stop01_s30.png');
  insert into z_product_img values(null,8,'img/index_phone_stop/lg/ndex_phone_stop031_lg.png','img/index_phone_stop/lg/index_phone_stop031_lg.png','img/index_phone_stop/sm/index_phone_stop01_s31.png');
  #9
  insert into z_product_img values(null,9,'img/index_phone_stop/lg/index_phone_stop019_lg.jpg','img/index_phone_stop/md/index_phone_stop09_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s19.jpg');
  insert into z_product_img values(null,9,'img/index_phone_stop/lg/index_phone_stop020_lg.jpg','img/index_phone_stop/lg/index_phone_stop020_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s20.jpg');
  insert into z_product_img values(null,9,'img/index_phone_stop/lg/index_phone_stop021_lg.jpg','img/index_phone_stop/lg/index_phone_stop021_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s21.jpg');
  #10
  insert into z_product_img values(null,10,'img/index_phone_stop/lg/index_phone_stop032_lg.jpg','img/index_phone_stop/lg/index_phone_stop032_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s29.jpg');
  insert into z_product_img values(null,10,'img/index_phone_stop/lg/index_phone_stop033_lg.jpg','img/index_phone_stop/lg/index_phone_stop033_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s30.jpg');
  #11
  insert into z_product_img values(null,11,'img/index_phone_stop/lg/index_phone_stop034_lg.jpg','img/index_phone_stop/lg/index_phone_stop034_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s32.jpg');
  insert into z_product_img values(null,11,'img/index_phone_stop/lg/index_phone_stop035_lg.jpg','img/index_phone_stop/lg/index_phone_stop035_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s33.jpg');
  insert into z_product_img values(null,11,'img/index_phone_stop/lg/index_phone_stop036_lg.jpg','img/index_phone_stop/lg/index_phone_stop036_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s34.jpg');
  #12 1
  insert into z_product_img values(null,12,'img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s35.jpg');
  insert into z_product_img values(null,12,'img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s36.jpg');
  #13
  insert into z_product_img values(null,13,'img/index_phone_stop/lg/index_phone_stop039_lg.png','img/index_phone_stop/lg/index_phone_stop039_lg.png','img/index_phone_stop/sm/index_phone_stop01_s37.png');
  insert into z_product_img values(null,13,'img/index_phone_stop/lg/index_phone_stop040_lg.png','img/index_phone_stop/lg/index_phone_stop040_lg.png','img/index_phone_stop/sm/index_phone_stop01_s38.png');
  #14
  insert into z_product_img values(null,14,'img/index_phone_stop/lg/index_phone_stop041_lg.jpg','img/index_phone_stop/lg/index_phone_stop041_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s39.jpg');
  insert into z_product_img values(null,14,'img/index_phone_stop/lg/index_phone_stop042_lg.jpg','img/index_phone_stop/lg/index_phone_stop042_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s40.jpg');
  #15  1
  insert into z_product_img values(null,15,'img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s41.jpg');
  insert into z_product_img values(null,15,'img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s42.jpg');
  #15  2
  insert into z_product_img values(null,16,'img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s41.jpg');
  insert into z_product_img values(null,16,'img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s42.jpg');
  #15  3
  insert into z_product_img values(null,17,'img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s41.jpg');
  insert into z_product_img values(null,17,'img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s42.jpg');
  #15  4
  insert into z_product_img values(null,18,'img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/lg/index_phone_stop043_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s41.jpg');
  insert into z_product_img values(null,18,'img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/lg/index_phone_stop044_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s42.jpg');
  #12 2
  insert into z_product_img values(null,19,'img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s35.jpg');
  insert into z_product_img values(null,19,'img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s36.jpg');
  #12  3
  insert into z_product_img values(null,20,'img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/lg/index_phone_stop037_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s35.jpg');
  insert into z_product_img values(null,20,'img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/lg/index_phone_stop038_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s36.jpg');
  #1
  insert into z_product_img values(null,21,'img/index_phone_stop/lg/index_phone_stop01_lg.png','img/index_phone_stop/md/index_phone_stop01_md.png','img/index_phone_stop/sm/index_phone_stop01_s1.png');
  insert into z_product_img values(null,21,'img/index_phone_stop/lg/index_phone_stop02_lg.png','img/index_phone_stop/lg/index_phone_stop02_lg.png','img/index_phone_stop/sm/index_phone_stop01_s2.png');
  insert into z_product_img values(null,21,'img/index_phone_stop/lg/index_phone_stop03_lg.png','img/index_phone_stop/lg/index_phone_stop03_lg.png','img/index_phone_stop/sm/index_phone_stop01_s3.png');
  insert into z_product_img values(null,21,'img/index_phone_stop/lg/index_phone_stop04_lg.png','img/index_phone_stop/lg/index_phone_stop04_lg.png','img/index_phone_stop/sm/index_phone_stop01_s4.png');
  insert into z_product_img values(null,21,'img/index_phone_stop/lg/index_phone_stop05_lg.png','img/index_phone_stop/lg/index_phone_stop05_lg.png','img/index_phone_stop/sm/index_phone_stop01_s5.png');
  #2
  insert into z_product_img values(null,22,'img/index_phone_stop/lg/index_phone_stop06_lg.jpg','img/index_phone_stop/lg/index_phone_stop06_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s6.jpg');
  insert into z_product_img values(null,22,'img/index_phone_stop/lg/index_phone_stop07_lg.jpg','img/index_phone_stop/lg/index_phone_stop07_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s7.jpg');
  insert into z_product_img values(null,22,'img/index_phone_stop/lg/index_phone_stop08_lg.jpg','img/index_phone_stop/lg/index_phone_stop08_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s8.jpg');
  insert into z_product_img values(null,22,'img/index_phone_stop/lg/index_phone_stop09_lg.jpg','img/index_phone_stop/lg/index_phone_stop09_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s9.jpg');
  insert into z_product_img values(null,22,'img/index_phone_stop/lg/index_phone_stop010_lg.jpg','img/index_phone_stop/lg/index_phone_stop010_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s10.jpg');
  #3
  insert into z_product_img values(null,23,'img/index_phone_stop/lg/index_phone_stop011_lg.jpg','img/index_phone_stop/md/index_phone_stop03_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s11.png');
  insert into z_product_img values(null,23,'img/index_phone_stop/lg/index_phone_stop012_lg.jpg','img/index_phone_stop/lg/index_phone_stop012_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s12.jpg');
  insert into z_product_img values(null,23,'img/index_phone_stop/lg/index_phone_stop013_lg.jpg','img/index_phone_stop/lg/index_phone_stop013_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s13.jpg');
  #4
  insert into z_product_img values(null,24,'img/index_phone_stop/lg/index_phone_stop014_lg.jpg','img/index_phone_stop/md/index_phone_stop04_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s14.png');
  insert into z_product_img values(null,24,'img/index_phone_stop/lg/index_phone_stop015_lg.jpg','img/index_phone_stop/lg/index_phone_stop015_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s15.png');
  insert into z_product_img values(null,24,'img/index_phone_stop/lg/index_phone_stop016_lg.jpg','img/index_phone_stop/lg/index_phone_stop016_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s16.png');

  #8
  insert into z_product_img values(null,25,'img/index_phone_stop/lg/index_phone_stop029_lg.png','img/index_phone_stop/lg/index_phone_stop029_lg.png','img/index_phone_stop/sm/index_phone_stop01_s29.png');
  insert into z_product_img values(null,25,'img/index_phone_stop/lg/index_phone_stop030_lg.png','img/index_phone_stop/lg/index_phone_stop030_lg.png','img/index_phone_stop/sm/index_phone_stop01_s30.png');
  insert into z_product_img values(null,25,'img/index_phone_stop/lg/ndex_phone_stop031_lg.png','img/index_phone_stop/lg/index_phone_stop031_lg.png','img/index_phone_stop/sm/index_phone_stop01_s31.png');

  #9
  insert into z_product_img values(null,26,'img/index_phone_stop/lg/index_phone_stop019_lg.jpg','img/index_phone_stop/md/index_phone_stop09_md.jpg','img/index_phone_stop/sm/index_phone_stop01_s19.jpg');
  insert into z_product_img values(null,26,'img/index_phone_stop/lg/index_phone_stop020_lg.jpg','img/index_phone_stop/lg/index_phone_stop020_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s20.jpg');
  insert into z_product_img values(null,26,'img/index_phone_stop/lg/index_phone_stop021_lg.jpg','img/index_phone_stop/lg/index_phone_stop021_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s21.jpg');

  #10
  insert into z_product_img values(null,27,'img/index_phone_stop/lg/index_phone_stop032_lg.jpg','img/index_phone_stop/lg/index_phone_stop032_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s29.jpg');
  insert into z_product_img values(null,27,'img/index_phone_stop/lg/index_phone_stop033_lg.jpg','img/index_phone_stop/lg/index_phone_stop033_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s30.jpg');

  #11
  insert into z_product_img values(null,28,'img/index_phone_stop/lg/index_phone_stop034_lg.jpg','img/index_phone_stop/lg/index_phone_stop034_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s32.jpg');
  insert into z_product_img values(null,28,'img/index_phone_stop/lg/index_phone_stop035_lg.jpg','img/index_phone_stop/lg/index_phone_stop035_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s33.jpg');
  insert into z_product_img values(null,28,'img/index_phone_stop/lg/index_phone_stop036_lg.jpg','img/index_phone_stop/lg/index_phone_stop036_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s34.jpg');

  insert into z_product_img values(null,29,'img/index_phone_stop/lg/index_phone_stop047_lg.jpg','img/index_phone_stop/lg/index_phone_stop047_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s45.jpg');
  insert into z_product_img values(null,29,'img/index_phone_stop/lg/index_phone_stop048_lg.jpg','img/index_phone_stop/lg/index_phone_stop048_lg.jpg','img/index_phone_stop/sm/index_phone_stop01_s46.jpg');
  #30-41
  insert into z_product_img values(null,30,'img/e_sports/lg/e_sportslgG01.jpg','img/e_sports/lg/e_sportslgG01.jpg','img/e_sports/sm/e_sportssmG01.jpg');
  insert into z_product_img values(null,30,'img/e_sports/lg/e_sportslgG02.jpg','img/e_sports/lg/e_sportslgG02.jpg','img/e_sports/sm/e_sportssmG02.jpg');
  insert into z_product_img values(null,30,'img/e_sports/lg/e_sportslgG03.jpg','img/e_sports/lg/e_sportslgG03.jpg','img/e_sports/sm/e_sportssmG03.jpg');
  insert into z_product_img values(null,30,'img/e_sports/lg/e_sportslgG04.jpg','img/e_sports/lg/e_sportslgG04.jpg','img/e_sports/sm/e_sportssmG04.jpg');
  insert into z_product_img values(null,30,'img/e_sports/lg/e_sportslgG05.jpg','img/e_sports/lg/e_sportslgG05.jpg','img/e_sports/sm/e_sportssmG05.jpg');
  #31
  insert into z_product_img values(null,31,'img/e_sports/lg/e_sportslgG06.png','img/e_sports/lg/e_sportslgG06.png','img/e_sports/sm/e_sportssmG06.png');
  insert into z_product_img values(null,31,'img/e_sports/lg/e_sportslgG07.jpg','img/e_sports/lg/e_sportslgG07.jpg','img/e_sports/sm/e_sportssmG07.jpg');
  insert into z_product_img values(null,31,'img/e_sports/lg/e_sportslgG08.jpg','img/e_sports/lg/e_sportslgG08.jpg','img/e_sports/sm/e_sportssmG08.jpg');
  insert into z_product_img values(null,31,'img/e_sports/lg/e_sportslgG09.jpg','img/e_sports/lg/e_sportslgG09.jpg','img/e_sports/sm/e_sportssmG09.jpg');
  #32
  insert into z_product_img values(null,32,'img/e_sports/lg/e_sportslgG10.jpg','img/e_sports/lg/e_sportslgG10.jpg','img/e_sports/sm/e_sportssmG10.jpg');
  insert into z_product_img values(null,32,'img/e_sports/lg/e_sportslgG11.jpg','img/e_sports/lg/e_sportslgG11.jpg','img/e_sports/sm/e_sportssmG11.jpg');
  #33
  insert into z_product_img values(null,33,'img/e_sports/lg/e_sportslgG12.jpg','img/e_sports/lg/e_sportslgG12.jpg','img/e_sports/sm/e_sportssmG12.jpg');
  insert into z_product_img values(null,33,'img/e_sports/lg/e_sportslgG13.jpg','img/e_sports/lg/e_sportslgG13.jpg','img/e_sports/sm/e_sportssmG13.jpg');
  #34
  insert into z_product_img values(null,34,'img/e_sports/lg/e_sportslgG14.jpg','img/e_sports/lg/e_sportslgG14.jpg','img/e_sports/sm/e_sportssmG14.jpg');
  insert into z_product_img values(null,34,'img/e_sports/lg/e_sportslgG15.jpg','img/e_sports/lg/e_sportslgG15.jpg','img/e_sports/sm/e_sportssmG15.jpg');
  #35
  insert into z_product_img values(null,35,'img/e_sports/lg/e_sportslgG16.jpg','img/e_sports/lg/e_sportslgG16.jpg','img/e_sports/sm/e_sportssmG16.jpg');
  insert into z_product_img values(null,35,'img/e_sports/lg/e_sportslgG17.jpg','img/e_sports/lg/e_sportslgG17.jpg','img/e_sports/sm/e_sportssmG17.jpg');
  #36
  insert into z_product_img values(null,36,'img/e_sports/lg/e_sportslgG18.jpg','img/e_sports/lg/e_sportslgG18.jpg','img/e_sports/sm/e_sportssmG18.jpg');
  insert into z_product_img values(null,36,'img/e_sports/lg/e_sportslgG19.jpg','img/e_sports/lg/e_sportslgG19.jpg','img/e_sports/sm/e_sportssmG19.jpg');
  #37
  insert into z_product_img values(null,37,'img/e_sports/lg/e_sportslgG20.jpg','img/e_sports/lg/e_sportslgG20.jpg','img/e_sports/sm/e_sportssmG20.jpg');
  insert into z_product_img values(null,37,'img/e_sports/lg/e_sportslgG21.jpg','img/e_sports/lg/e_sportslgG21.jpg','img/e_sports/sm/e_sportssmG21.jpg');
  #38
  insert into z_product_img values(null,38,'img/e_sports/lg/e_sportslgG22.jpg','img/e_sports/lg/e_sportslgG22.jpg','img/e_sports/sm/e_sportssmG22.jpg');
  insert into z_product_img values(null,38,'img/e_sports/lg/e_sportslgG23.jpg','img/e_sports/lg/e_sportslgG23.jpg','img/e_sports/sm/e_sportssmG23.jpg');
  insert into z_product_img values(null,38,'img/e_sports/lg/e_sportslgG24.jpg','img/e_sports/lg/e_sportslgG24.jpg','img/e_sports/sm/e_sportssmG24.jpg');

  #39
  insert into z_product_img values(null,39,'img/e_sports/lg/e_sportslgG25.jpg','img/e_sports/lg/e_sportslgG25.jpg','img/e_sports/sm/e_sportssmG25.jpg');
  insert into z_product_img values(null,39,'img/e_sports/lg/e_sportslgG26.jpg','img/e_sports/lg/e_sportslgG26.jpg','img/e_sports/sm/e_sportssmG26.jpg');
  #40
  insert into z_product_img values(null,40,'img/e_sports/lg/e_sportslgG27.jpg','img/e_sports/lg/e_sportslgG27.jpg','img/e_sports/sm/e_sportssmG27.jpg');
  insert into z_product_img values(null,40,'img/e_sports/lg/e_sportslgG28.jpg','img/e_sports/lg/e_sportslgG28.jpg','img/e_sports/sm/e_sportssmG28.jpg');
  insert into z_product_img values(null,40,'img/e_sports/lg/e_sportslgG29.jpg','img/e_sports/lg/e_sportslgG29.jpg','img/e_sports/sm/e_sportssmG29.jpg');
  insert into z_product_img values(null,40,'img/e_sports/lg/e_sportslgG30.jpg','img/e_sports/lg/e_sportslgG30.jpg','img/e_sports/sm/e_sportssmG30.jpg');
  #41
  insert into z_product_img values(null,41,'img/e_sports/lg/e_sportslgG31.png','img/e_sports/lg/e_sportslgG31.png','img/e_sports/sm/e_sportssmG31.png');
  insert into z_product_img values(null,41,'img/e_sports/lg/e_sportslgG32.jpg','img/e_sports/lg/e_sportslgG32.jpg','img/e_sports/sm/e_sportssmG32.jpg');
  insert into z_product_img values(null,41,'img/e_sports/lg/e_sportslgG33.jpg','img/e_sports/lg/e_sportslgG33.jpg','img/e_sports/sm/e_sportssmG33.jpg');
  insert into z_product_img values(null,41,'img/e_sports/lg/e_sportslgG34.jpg','img/e_sports/lg/e_sportslgG34.jpg','img/e_sports/sm/e_sportssmG34.jpg');
  ########################手机
  #42
  insert into z_product_img values(null,42,'img/index_phone/lg/index_phoneLG01.jpg','img/index_phone/lg/index_phoneLG01.jpg','img/index_phone/sm/index_phoneSM01.jpg');
  insert into z_product_img values(null,42,'img/index_phone/lg/index_phoneLG02.jpg','img/index_phone/lg/index_phoneLG02.jpg','img/index_phone/sm/index_phoneSM02.jpg');
  insert into z_product_img values(null,42,'img/index_phone/lg/index_phoneLG03.jpg','img/index_phone/lg/index_phoneLG03.jpg','img/index_phone/sm/index_phoneSM03.jpg');
  insert into z_product_img values(null,42,'img/index_phone/lg/index_phoneLG04.jpg','img/index_phone/lg/index_phoneLG04.jpg','img/index_phone/sm/index_phoneSM04.jpg');
  #43
  insert into z_product_img values(null,43,'img/index_phone/lg/index_phoneLG05.jpg','img/index_phone/lg/index_phoneLG05.jpg','img/index_phone/sm/index_phoneSM05.jpg');
  insert into z_product_img values(null,43,'img/index_phone/lg/index_phoneLG06.jpg','img/index_phone/lg/index_phoneLG06.jpg','img/index_phone/sm/index_phoneSM06.jpg');
  #44
  insert into z_product_img values(null,44,'img/index_phone/lg/index_phoneLG07.jpg','img/index_phone/lg/index_phoneLG07.jpg','img/index_phone/sm/index_phoneSM07.jpg');
  insert into z_product_img values(null,44,'img/index_phone/lg/index_phoneLG08.jpg','img/index_phone/lg/index_phoneLG08.jpg','img/index_phone/sm/index_phoneSM08.jpg');
  #45
  insert into z_product_img values(null,45,'img/index_phone/lg/index_phoneLG09.jpg','img/index_phone/lg/index_phoneLG09.jpg','img/index_phone/sm/index_phoneSM09.jpg');
  insert into z_product_img values(null,45,'img/index_phone/lg/index_phoneLG10.jpg','img/index_phone/lg/index_phoneLG10.jpg','img/index_phone/sm/index_phoneSM10.jpg');
  insert into z_product_img values(null,45,'img/index_phone/lg/index_phoneLG11.jpg','img/index_phone/lg/index_phoneLG11.jpg','img/index_phone/sm/index_phoneSM11.jpg');
  insert into z_product_img values(null,45,'img/index_phone/lg/index_phoneLG12.jpg','img/index_phone/lg/index_phoneLG12.jpg','img/index_phone/sm/index_phoneSM12.jpg');
  insert into z_product_img values(null,45,'img/index_phone/lg/index_phoneLG13.jpg','img/index_phone/lg/index_phoneLG13.jpg','img/index_phone/sm/index_phoneSM13.jpg');
  #46
  insert into z_product_img values(null,46,'img/index_phone/lg/index_phoneLG14.jpg','img/index_phone/lg/index_phoneLG14.jpg','img/index_phone/sm/index_phoneSM14.jpg');
  insert into z_product_img values(null,46,'img/index_phone/lg/index_phoneLG15.jpg','img/index_phone/lg/index_phoneLG15.jpg','img/index_phone/sm/index_phoneSM15.jpg');
  insert into z_product_img values(null,46,'img/index_phone/lg/index_phoneLG16.jpg','img/index_phone/lg/index_phoneLG16.jpg','img/index_phone/sm/index_phoneSM16.jpg');
  #47
  insert into z_product_img values(null,47,'img/index_phone/lg/index_phoneLG17.jpg','img/index_phone/lg/index_phoneLG17.jpg','img/index_phone/sm/index_phoneSM17.jpg');
  insert into z_product_img values(null,47,'img/index_phone/lg/index_phoneLG18.jpg','img/index_phone/lg/index_phoneLG18.jpg','img/index_phone/sm/index_phoneSM18.jpg');
  insert into z_product_img values(null,47,'img/index_phone/lg/index_phoneLG19.jpg','img/index_phone/lg/index_phoneLG19.jpg','img/index_phone/sm/index_phoneSM19.jpg');
  #48
  insert into z_product_img values(null,48,'img/index_phone/lg/index_phoneLG20.jpg','img/index_phone/lg/index_phoneLG20.jpg','img/index_phone/sm/index_phoneSM20.jpg');
  insert into z_product_img values(null,48,'img/index_phone/lg/index_phoneLG21.jpg','img/index_phone/lg/index_phoneLG21.jpg','img/index_phone/sm/index_phoneSM21.jpg');
  #49
  insert into z_product_img values(null,49,'img/index_phone/lg/index_phoneLG22.jpg','img/index_phone/lg/index_phoneLG22.jpg','img/index_phone/sm/index_phoneSM22.jpg');
  insert into z_product_img values(null,49,'img/index_phone/lg/index_phoneLG23.jpg','img/index_phone/lg/index_phoneLG23.jpg','img/index_phone/sm/index_phoneSM23.jpg');
  #50
  insert into z_product_img values(null,50,'img/index_phone/lg/index_phoneLG24.jpg','img/index_phone/lg/index_phoneLG24.jpg','img/index_phone/sm/index_phoneSM24.jpg');
  insert into z_product_img values(null,50,'img/index_phone/lg/index_phoneLG25.jpg','img/index_phone/lg/index_phoneLG25.jpg','img/index_phone/sm/index_phoneSM25.jpg');
  #51
  insert into z_product_img values(null,51,'img/index_phone/lg/index_phoneLG26.jpg','img/index_phone/lg/index_phoneLG26.jpg','img/index_phone/sm/index_phoneSM26.jpg');
  insert into z_product_img values(null,51,'img/index_phone/lg/index_phoneLG27.jpg','img/index_phone/lg/index_phoneLG27.jpg','img/index_phone/sm/index_phoneSM27.jpg');
  #52
  insert into z_product_img values(null,52,'img/index_phone/lg/index_phoneLG28.jpg','img/index_phone/lg/index_phoneLG28.jpg','img/index_phone/sm/index_phoneSM28.jpg');
  insert into z_product_img values(null,52,'img/index_phone/lg/index_phoneLG29.jpg','img/index_phone/lg/index_phoneLG29.jpg','img/index_phone/sm/index_phoneSM29.jpg');
  insert into z_product_img values(null,52,'img/index_phone/lg/index_phoneLG30.jpg','img/index_phone/lg/index_phoneLG30.jpg','img/index_phone/sm/index_phoneSM30.jpg');
  #53
  insert into z_product_img values(null,53,'img/index_phone/lg/index_phoneLG31.jpg','img/index_phone/lg/index_phoneLG31.jpg','img/index_phone/sm/index_phoneSM31.jpg');
  insert into z_product_img values(null,53,'img/index_phone/lg/index_phoneLG32.jpg','img/index_phone/lg/index_phoneLG32.jpg','img/index_phone/sm/index_phoneSM32.jpg');
  #54
  insert into z_product_img values(null,54,'img/index_phone/lg/index_phoneLG33.jpg','img/index_phone/lg/index_phoneLG33.jpg','img/index_phone/sm/index_phoneSM33.jpg');
  #55
  insert into z_product_img values(null,55,'img/index_phone/lg/index_phoneLG34.jpg','img/index_phone/lg/index_phoneLG34.jpg','img/index_phone/sm/index_phoneSM34.jpg');
  insert into z_product_img values(null,55,'img/index_phone/lg/index_phoneLG35.jpg','img/index_phone/lg/index_phoneLG35.jpg','img/index_phone/sm/index_phoneSM35.jpg');
  insert into z_product_img values(null,55,'img/index_phone/lg/index_phoneLG36.jpg','img/index_phone/lg/index_phoneLG36.jpg','img/index_phone/sm/index_phoneSM36.jpg');
  #56
  insert into z_product_img values(null,56,'img/index_phone/lg/index_phoneLG37.jpg','img/index_phone/lg/index_phoneLG37.jpg','img/index_phone/sm/index_phoneSM37.jpg');
  #57
  insert into z_product_img values(null,57,'img/index_phone/lg/index_phoneLG38.jpg','img/index_phone/lg/index_phoneLG38.jpg','img/index_phone/sm/index_phoneSM38.jpg');
  insert into z_product_img values(null,57,'img/index_phone/lg/index_phoneLG39.jpg','img/index_phone/lg/index_phoneLG39.jpg','img/index_phone/sm/index_phoneSM39.jpg');
  #58
  insert into z_product_img values(null,58,'img/index_phone/lg/index_phoneLG40.jpg','img/index_phone/lg/index_phoneLG40.jpg','img/index_phone/sm/index_phoneSM40.jpg');
  insert into z_product_img values(null,58,'img/index_phone/lg/index_phoneLG41.jpg','img/index_phone/lg/index_phoneLG41.jpg','img/index_phone/sm/index_phoneSM41.jpg');
  insert into z_product_img values(null,58,'img/index_phone/lg/index_phoneLG42.jpg','img/index_phone/lg/index_phoneLG42.jpg','img/index_phone/sm/index_phoneSM42.jpg');
  #59
  insert into z_product_img values(null,59,'img/index_phone/lg/index_phoneLG43.jpg','img/index_phone/lg/index_phoneLG43.jpg','img/index_phone/sm/index_phoneSM43.jpg');
  insert into z_product_img values(null,59,'img/index_phone/lg/index_phoneLG44.jpg','img/index_phone/lg/index_phoneLG44.jpg','img/index_phone/sm/index_phoneSM44.jpg');
  #60
  insert into z_product_img values(null,60,'img/index_phone/lg/index_phoneLG45.jpg','img/index_phone/lg/index_phoneLG45.jpg','img/index_phone/sm/index_phoneSM45.jpg');
  insert into z_product_img values(null,60,'img/index_phone/lg/index_phoneLG46.jpg','img/index_phone/lg/index_phoneLG46.jpg','img/index_phone/sm/index_phoneSM46.jpg');
  #61
  insert into z_product_img values(null,61,'img/index_phone/lg/index_phoneLG47.jpg','img/index_phone/lg/index_phoneLG47.jpg','img/index_phone/sm/index_phoneSM47.jpg');
  insert into z_product_img values(null,61,'img/index_phone/lg/index_phoneLG48.jpg','img/index_phone/lg/index_phoneLG48.jpg','img/index_phone/sm/index_phoneSM48.jpg');
  #62
  insert into z_product_img values(null,62,'img/index_phone/lg/index_phoneLG49.jpg','img/index_phone/lg/index_phoneLG49.jpg','img/index_phone/sm/index_phoneSM49.jpg');
  insert into z_product_img values(null,62,'img/index_phone/lg/index_phoneLG50.jpg','img/index_phone/lg/index_phoneLG50.jpg','img/index_phone/sm/index_phoneSM50.jpg');
  insert into z_product_img values(null,62,'img/index_phone/lg/index_phoneLG51.jpg','img/index_phone/lg/index_phoneLG51.jpg','img/index_phone/sm/index_phoneSM51.jpg');
  #63
  insert into z_product_img values(null,63,'img/index_phone/lg/index_phoneLG52.jpg','img/index_phone/lg/index_phoneLG52.jpg','img/index_phone/sm/index_phoneSM52.jpg');
  insert into z_product_img values(null,63,'img/index_phone/lg/index_phoneLG53.jpg','img/index_phone/lg/index_phoneLG53.jpg','img/index_phone/sm/index_phoneSM53.jpg');
  insert into z_product_img values(null,63,'img/index_phone/lg/index_phoneLG54.jpg','img/index_phone/lg/index_phoneLG54.jpg','img/index_phone/sm/index_phoneSM54.jpg');
  #64
  insert into z_product_img values(null,64,'img/index_phone/lg/index_phoneLG55.jpg','img/index_phone/lg/index_phoneLG55.jpg','img/index_phone/sm/index_phoneSM55.jpg');
  insert into z_product_img values(null,64,'img/index_phone/lg/index_phoneLG56.jpg','img/index_phone/lg/index_phoneLG56.jpg','img/index_phone/sm/index_phoneSM56.jpg');
  #65
  insert into z_product_img values(null,65,'img/index_phone/lg/index_phoneLG57.jpg','img/index_phone/lg/index_phoneLG57.jpg','img/index_phone/sm/index_phoneSM57.jpg');
  insert into z_product_img values(null,65,'img/index_phone/lg/index_phoneLG58.jpg','img/index_phone/lg/index_phoneLG58.jpg','img/index_phone/sm/index_phoneSM58.jpg');
  insert into z_product_img values(null,65,'img/index_phone/lg/index_phoneLG59.jpg','img/index_phone/lg/index_phoneLG59.jpg','img/index_phone/sm/index_phoneSM59.jpg');

#14、z_product_detailImage  套装表
create table z_product_detailImage(
    pid int primary key auto_increment,
    tid int,
    img0 varchar(128) default null,
    img1 varchar(128) default null,
    img2 varchar(128) default null,
    img3 varchar(128) default null,
    img4 varchar(128) default null,
    img5 varchar(128) default null,
    img6 varchar(128) default null,
    img7 varchar(128) default null,
    img8 varchar(128) default null,
    img9 varchar(128) default null
  );
  #电脑9款
  insert into z_product_detailImage values(null,1,'img/index_phone_stop/inforImgPC/index_phone_pr100.jpg','img/index_phone_stop/inforImgPC/index_phone_pr101.jpg','img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr103.jpg','img/index_phone_stop/inforImgPC/index_phone_pr104.jpg','img/index_phone_stop/inforImgPC/index_phone_pr105.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,2,'img/index_phone_stop/inforImgPC/index_phone_pr100.jpg','img/index_phone_stop/inforImgPC/index_phone_pr201.jpg','img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr203.jpg','img/index_phone_stop/inforImgPC/index_phone_pr204.jpg',null,null,null,null,null);
  insert into z_product_detailImage values(null,3,'img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr301.jpg','img/index_phone_stop/inforImgPC/index_phone_pr103.jpg','img/index_phone_stop/inforImgPC/index_phone_pr303.jpg','img/index_phone_stop/inforImgPC/index_phone_pr304.jpg','img/index_phone_stop/inforImgPC/index_phone_pr305.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,4,'img/index_phone_stop/inforImgPC/index_phone_pr400.jpg','img/index_phone_stop/inforImgPC/index_phone_pr401.jpg','img/index_phone_stop/inforImgPC/index_phone_pr402.jpg','img/index_phone_stop/inforImgPC/index_phone_pr403.jpg','img/index_phone_stop/inforImgPC/index_phone_pr404.jpg','img/index_phone_stop/inforImgPC/index_phone_pr405.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,5,'img/index_phone_stop/inforImgPC/index_phone_pr100.jpg','img/index_phone_stop/inforImgPC/index_phone_pr501.jpg','img/index_phone_stop/inforImgPC/index_phone_pr502.jpg','img/index_phone_stop/inforImgPC/index_phone_pr503.jpg','img/index_phone_stop/inforImgPC/index_phone_pr504.jpg','img/index_phone_stop/inforImgPC/index_phone_pr505.jpg','img/index_phone_stop/inforImgPC/index_phone_pr506.jpg',null,null,null);
  insert into z_product_detailImage values(null,6,'img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr301.jpg','img/index_phone_stop/inforImgPC/index_phone_pr602.gif','img/index_phone_stop/inforImgPC/index_phone_pr603.gif','img/index_phone_stop/inforImgPC/index_phone_pr604.gif','img/index_phone_stop/inforImgPC/index_phone_pr605.jpg','img/index_phone_stop/inforImgPC/index_phone_pr606.gif','img/index_phone_stop/inforImgPC/index_phone_pr607.jpg',null,null);
  insert into z_product_detailImage values(null,7,'img/index_phone_stop/inforImgPC/index_phone_pr100.jpg','img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr702.jpg','img/index_phone_stop/inforImgPC/index_phone_pr703.jpg','img/index_phone_stop/inforImgPC/index_phone_pr704.jpg','img/index_phone_stop/inforImgPC/index_phone_pr705.jpg','img/index_phone_stop/inforImgPC/index_phone_pr706.jpg','img/index_phone_stop/inforImgPC/index_phone_pr707.jpg','img/index_phone_stop/inforImgPC/index_phone_pr708.jpg','img/index_phone_stop/inforImgPC/index_phone_pr709.jpg');
  insert into z_product_detailImage values(null,8,'img/index_phone_stop/inforImgPC/index_phone_pr102.jpg','img/index_phone_stop/inforImgPC/index_phone_pr801.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,9,'img/index_phone_stop/inforImgPC/index_phone_pr900.jpg','img/index_phone_stop/inforImgPC/index_phone_pr901.jpg','img/index_phone_stop/inforImgPC/index_phone_pr902.jpg','img/index_phone_stop/inforImgPC/index_phone_pr903.jpg','img/index_phone_stop/inforImgPC/index_phone_pr904.jpg','img/index_phone_stop/inforImgPC/index_phone_pr905.jpg','img/index_phone_stop/inforImgPC/index_phone_pr906.jpg','img/index_phone_stop/inforImgPC/index_phone_pr907.jpg',null,null);
  ########################################主机12款  10-21
  insert into z_product_detailImage values(null,10,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,11,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,12,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,13,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,14,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,15,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,16,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,17,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,18,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,19,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,20,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  insert into z_product_detailImage values(null,21,'img/index_phone_stop/inforImgZJ/index_phone_ZJ100.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ101.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ102.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ103.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ104.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ105.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ106.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ107.jpg','img/index_phone_stop/inforImgZJ/index_phone_ZJ108.jpg',null);
  ##############################################手机25款 22-46
  insert into z_product_detailImage values(null,22,'img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,23,'img/index_phone_stop/inforImgSJ/index_phone_SJ200.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ201.png','img/index_phone_stop/inforImgSJ/index_phone_SJ202.png','img/index_phone_stop/inforImgSJ/index_phone_SJ203.png','img/index_phone_stop/inforImgSJ/index_phone_SJ204.png','img/index_phone_stop/inforImgSJ/index_phone_SJ205.png','img/index_phone_stop/inforImgSJ/index_phone_SJ206.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ207.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ208.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ209.jpg');
  insert into z_product_detailImage values(null,24,'img/index_phone_stop/inforImgSJ/index_phone_SJ300.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ301.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ302.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ303.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ304.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ305.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ306.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ307.jpg',null,null);
  insert into z_product_detailImage values(null,25,'img/index_phone_stop/inforImgSJ/index_phone_SJ400.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ401.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ402.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ403.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ404.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ405.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ406.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ407.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ408.jpg',null);
  insert into z_product_detailImage values(null,26,'img/index_phone_stop/inforImgSJ/index_phone_SJ500.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ501.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ502.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ503.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ504.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ505.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,27,'img/index_phone_stop/inforImgSJ/index_phone_SJ600.jpg',null,null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,28,'img/index_phone_stop/inforImgSJ/index_phone_SJ700.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ701.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,29,'img/index_phone_stop/inforImgSJ/index_phone_SJ800.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ801.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ802.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ803.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ804.jpg',null,null,null,null,null);
  insert into z_product_detailImage values(null,30,'img/index_phone_stop/inforImgSJ/index_phone_SJ900.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ901.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,31,'img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,32,'img/index_phone_stop/inforImgSJ/index_phone_SJ1100.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1101.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1102.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1103.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1104.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1105.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,33,'img/index_phone_stop/inforImgSJ/index_phone_SJ1200.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1201.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1202.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1203.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1204.jpg',null,null,null,null,null);
  insert into z_product_detailImage values(null,34,'img/index_phone_stop/inforImgSJ/index_phone_SJ1300.jpg',null,null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,35,'img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,36,'img/index_phone_stop/inforImgSJ/index_phone_SJ700.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ701.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,37,'img/index_phone_stop/inforImgSJ/index_phone_SJ300.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ301.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ302.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ303.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ304.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ305.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ306.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ307.jpg',null,null);
  insert into z_product_detailImage values(null,38,'img/index_phone_stop/inforImgSJ/index_phone_SJ1200.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1201.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1202.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1203.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ1204.jpg',null,null,null,null,null);
  insert into z_product_detailImage values(null,39,'img/index_phone_stop/inforImgSJ/index_phone_SJ700.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ701.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,40,'img/index_phone_stop/inforImgSJ/index_phone_SJ500.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ501.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ502.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ503.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ504.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ505.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,41,'img/index_phone_stop/inforImgSJ/index_phone_SJ2000.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ2001.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ2002.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ2003.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ2004.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ2005.jpg',null,null,null,null);
  insert into z_product_detailImage values(null,42,'img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ100.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,39,'img/index_phone_stop/inforImgSJ/index_phone_SJ700.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ701.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,30,'img/index_phone_stop/inforImgSJ/index_phone_SJ900.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ901.jpg',null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,34,'img/index_phone_stop/inforImgSJ/index_phone_SJ1300.jpg',null,null,null,null,null,null,null,null,null);
  insert into z_product_detailImage values(null,40,'img/index_phone_stop/inforImgSJ/index_phone_SJ500.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ501.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ502.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ503.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ504.jpg','img/index_phone_stop/inforImgSJ/index_phone_SJ505.jpg',null,null,null,null);
#15、z_e_sports_banner 	轮播图
create table z_e_sports_banner(
  eid int primary key auto_increment,
  href varchar(128) default null,
  img varchar(128)
  );
  insert into z_e_sports_banner values(null,'e_sports.html','img/e_sports/e-sportsNAV01.jpg');
  insert into z_e_sports_banner values(null,'e_sports.html','img/e_sports/e-sportsNAV02.jpg');
  insert into z_e_sports_banner values(null,null,'img/e_sports/e_sportsDIY01.jpg'); #达人推荐图------------------
  insert into z_e_sports_banner values(null,null,'img/e_sports/e_sportsDIY02.jpg');
  insert into z_e_sports_banner values(null,null,'img/e_sports/e_sportsDIY03.jpg');
  insert into z_e_sports_banner values(null,null,'img/e_sports/e_sportsKC.jpg');#主机的广告图
  insert into z_e_sports_banner values(null,null,'img/group_buy/group_buyNAV01.jpg');#groupBuy轮播图
  insert into z_e_sports_banner values(null,null,'img/group_buy/group_buyNAV02.jpg');
  insert into z_e_sports_banner values(null,null,'img/group_buy/group_buyNAV03.jpg');
  insert into z_e_sports_banner values(null,null,'img/group_buy/group_buyNAV04.jpg');
  insert into z_e_sports_banner values(null,'index_phone.html','img/group_buy/group_buyLIST01.jpg');
  insert into z_e_sports_banner values(null,'index_phone.html','img/group_buy/group_buyLIST02.jpg.jpg');
#16、z_cart 	轮播图
create table z_cart(
  cid int primary key auto_increment,
  c_uid int,
  c_did int,
  c_title varchar(128),
  c_subtitle varchar(128),
  c_img varchar(128),
  c_price decimal(10,2),
  c_num int,
  c_totle decimal(10,2),
  c_style varchar(64),
  c_suit varchar(64),
  c_peitao varchar(64)
  );
  insert into z_cart values(null,1,1,'【黑将游戏本】ThinkPad 黑将S5（20G4A01PCD）15.6英寸','游戏本 酷睿i5-6300HQ 8GB 128GB+500GB GTX960-2G 预装Windows 10','img/index_phone_stop/sm/index_phone_stop01_s1.png',5399.00,2,5399.00*2,'银/i5-6300H/4G/1TB/GT960M 2G','官方标配','全国联保保修卡+说明书+电源适配器+电池');
  insert into z_cart values(null,2,1,'【黑将游戏本】ThinkPad 黑将S5（20G4A01PCD）15.6英寸','游戏本 酷睿i5-6300HQ 8GB 128GB+500GB GTX960-2G 预装Windows 10','img/index_phone_stop/sm/index_phone_stop01_s1.png',5399.00,2,5399.00*2,'银/i5-6300H/4G/1TB/GT960M 2G','官方标配','全国联保保修卡+说明书+电源适配器+电池');
  insert into z_cart values(null,3,1,'【黑将游戏本】ThinkPad 黑将S5（20G4A01PCD）15.6英寸','游戏本 酷睿i5-6300HQ 8GB 128GB+500GB GTX960-2G 预装Windows 10','img/index_phone_stop/sm/index_phone_stop01_s1.png',5399.00,2,5399.00*2,'银/i5-6300H/4G/1TB/GT960M 2G','官方标配','全国联保保修卡+说明书+电源适配器+电池');