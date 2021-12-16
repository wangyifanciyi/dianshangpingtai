-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-05-05 16:01:57
-- 服务器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `clothing`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL COMMENT '购物车id',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `product_num` int(5) NOT NULL COMMENT '产品数量',
  `product_size` varchar(20) NOT NULL COMMENT '产品尺寸'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='购物车';

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `user_id`, `product_num`, `product_size`) VALUES
(211, 41, 6, 3, 'x');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL COMMENT '留言id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `message_name` varchar(200) NOT NULL COMMENT '用户留言名',
  `message_info` varchar(500) NOT NULL COMMENT '留言信息',
  `message_time` varchar(100) NOT NULL COMMENT '留言时间 '
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`message_id`, `user_id`, `message_name`, `message_info`, `message_time`) VALUES
(17, 20, 'weqwe', 'rwrq', '2021-03-13 15:16:10'),
(18, 20, 'weqwe', 'rwrq', '2021-03-13 15:16:10');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'id',
  `orders_id` varchar(50) NOT NULL COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `orders_count` int(11) NOT NULL COMMENT '订单总价',
  `orders_info` text NOT NULL COMMENT '订单信息',
  `orders_time` varchar(30) NOT NULL COMMENT '订单时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='订单';

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `orders_id`, `user_id`, `orders_count`, `orders_info`, `orders_time`) VALUES
(43, '20210306143920', 6, 4995, '[{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":4},{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":1}]', '2021-03-06 14:39:20'),
(44, '20210306151116', 6, 999, '[{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":1}]', '2021-03-06 15:11:16'),
(45, '20210306151155', 6, 999, '[{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":1}]', '2021-03-06 15:11:55'),
(46, '20210306170124', 6, 2162, '[{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":1},{\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1},{\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1},{\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":1}]', '2021-03-06 17:01:24'),
(47, '20210306170158', 6, 0, '[{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\",\"product_num\":6},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\"},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\"},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\"},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\"}]', '2021-03-06 17:01:58'),
(48, '20210414072705', 6, 1112, '[{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\",\"product_num\":3},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\",\"product_num\":3},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\",\"product_num\":1},{\"product_name\":\"2021春季中长款个性休闲时尚气质波点连衣裙长袖\",\"product_img\":\"7122636344161.jpg\",\"product_price\":\"139\",\"product_num\":1}]', '2021-04-14 07:27:05'),
(49, '20210414073733', 6, 600, '[{\"product_name\":\"2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙\",\"product_img\":\"2725037234161.jpg\",\"product_price\":\"60\",\"product_num\":10}]', '2021-04-14 07:37:33'),
(50, '20210427184201', 6, 120, '[{\"product_name\":\"2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙\",\"product_img\":\"2725037234161.jpg\",\"product_price\":\"60\",\"product_num\":2}]', '2021-04-27 18:42:01'),
(51, '20210427190020', 6, 384, '[{\"product_id\":\"40\",\"product_name\":\"长袖连衣裙女大码宽松时尚韩版显瘦中长裙\",\"product_img\":\"1613628771242.jpeg\",\"product_price\":\"69\",\"product_num\":1},{\"product_id\":\"40\",\"product_name\":\"长袖连衣裙女大码宽松时尚韩版显瘦中长裙\",\"product_img\":\"1613628771242.jpeg\",\"product_price\":\"69\",\"product_num\":1},{\"product_id\":\"39\",\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1},{\"product_id\":\"39\",\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1},{\"product_id\":\"39\",\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1}]', '2021-04-27 19:00:20'),
(52, '20210427194138', 6, 1826, '[{\"product_id\":\"37\",\"product_name\":\"实拍2020秋冬新款 中长款碎花长袖腰带针织圆领毛衣连衣裙女装C763103#2019\",\"product_img\":\"7217020433061.jpg\",\"product_price\":\"83\",\"product_num\":22}]', '2021-04-27 19:41:38'),
(53, '20210427194215', 6, 6023, '[{\"product_id\":\"37\",\"product_name\":\"实拍2020秋冬新款 中长款碎花长袖腰带针织圆领毛衣连衣裙女装C763103#2019\",\"product_img\":\"7217020433061.jpg\",\"product_price\":\"83\",\"product_num\":3},{\"product_id\":\"34\",\"product_name\":\"SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙\",\"product_img\":\"6649308384161.jpg\",\"product_price\":\"999\",\"product_num\":4},{\"product_id\":\"72\",\"product_name\":\"2021新款束脚卫裤男士春秋季车工装裤潮牌休闲裤子\",\"product_img\":\"8835114324161.jpg\",\"product_price\":\"65\",\"product_num\":4},{\"product_id\":\"59\",\"product_name\":\"P802021官网春夏新款 Moncler 蒙口 短袖高端T恤\",\"product_img\":\"1614742509173.jpeg\",\"product_price\":\"138\",\"product_num\":11}]', '2021-04-27 19:42:15'),
(54, '20210427210433', 25, 1020, '[{\"product_id\":\"42\",\"product_name\":\"不规则露肩蕾丝衬衫新款长袖显瘦小个子黑色裙子\",\"product_img\":\"5451609674161.jpg\",\"product_price\":\"117\",\"product_num\":4},{\"product_id\":\"40\",\"product_name\":\"长袖连衣裙女大码宽松时尚韩版显瘦中长裙\",\"product_img\":\"1613628771242.jpeg\",\"product_price\":\"69\",\"product_num\":8}]', '2021-04-27 21:04:33'),
(55, '20210428070357', 6, 648, '[{\"product_id\":\"41\",\"product_name\":\"2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙\",\"product_img\":\"2725037234161.jpg\",\"product_price\":\"60\",\"product_num\":3},{\"product_id\":\"42\",\"product_name\":\"不规则露肩蕾丝衬衫新款长袖显瘦小个子黑色裙子\",\"product_img\":\"5451609674161.jpg\",\"product_price\":\"117\",\"product_num\":4}]', '2021-04-28 07:03:57'),
(56, '20210428070512', 26, 322, '[{\"product_id\":\"41\",\"product_name\":\"2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙\",\"product_img\":\"2725037234161.jpg\",\"product_price\":\"60\",\"product_num\":4},{\"product_id\":\"39\",\"product_name\":\"2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子\",\"product_img\":\"5714194044161.jpg\",\"product_price\":\"82\",\"product_num\":1}]', '2021-04-28 07:05:12');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `product_type` varchar(10) NOT NULL COMMENT '产品类型',
  `product_name` varchar(50) NOT NULL COMMENT '产品名',
  `product_img` varchar(255) NOT NULL COMMENT '产品图片',
  `product_num` int(11) NOT NULL DEFAULT 100 COMMENT '产品数量',
  `product_price` double NOT NULL COMMENT '产品价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='产品表';

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`product_id`, `product_type`, `product_name`, `product_img`, `product_num`, `product_price`) VALUES
(33, '1', '【伊人丽影】实拍2021春装淑女超仙的V领显瘦收腰中长款长袖蕾丝连衣裙8159', '3717214684161.jpg', 100, 69),
(34, '1', 'SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙', '6649308384161.jpg', 100, 999),
(35, '1', '2021春季中长款个性休闲时尚气质波点连衣裙长袖', '7122636344161.jpg', 100, 139),
(36, '1', '2021新款春季女装气质修身显瘦甜美减龄仙女裙长袖蕾丝连衣裙', '5127309274161.jpg', 100, 110),
(37, '1', '实拍2020秋冬新款 中长款碎花长袖腰带针织圆领毛衣连衣裙女装C763103#2019', '7217020433061.jpg', 100, 83),
(38, '1', '实拍2021春装新款长袖中长款气质显瘦连衣裙', '8793710754161.jpg', 100, 69),
(39, '1', '2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子', '5714194044161.jpg', 100, 82),
(40, '1', '长袖连衣裙女大码宽松时尚韩版显瘦中长裙', '1613628771242.jpeg', 100, 69),
(41, '1', '2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙', '2725037234161.jpg', 100, 60),
(42, '1', '不规则露肩蕾丝衬衫新款长袖显瘦小个子黑色裙子', '5451609674161.jpg', 100, 117),
(43, '2', '2021年春秋新款宽松韩版情侣装上衣ins超火设计感小众短款卫衣女', '3385360883161.png', 100, 48),
(44, '2', '春秋薄款卫衣女2021新款宽松韩版设计感小众中长款圆领情侣装上衣', '9240530443161.png', 100, 39),
(45, '2', '实拍棒球服男秋2020新款飞行员夹克情侣装外套韩版潮流上衣男女778', '8477253013061.jpg', 100, 78),
(46, '2', '韩国mmlg1987潮牌卫衣加绒女连帽宽松粉色圆领2021新款情侣装87mm', '20201024887.jpg', 100, 170),
(47, '2', '【伊人丽影】实拍 开始登机潮牌3M反光外套女连帽衫国潮男女印花情侣装2108', '2060422954161.jpg', 100, 72),
(48, '2', '2020年新款潮牌短袖女ins宽松韩版情侣装黑白T恤上衣夏季半袖情侣短袖', '6283532714851.jpg', 100, 41),
(49, '2', '亮面黑色羽绒服男士冬季炸街外套反光2020新款轻薄潮流法式情侣装', '1609838905515.jpg', 100, 299),
(50, '2', '实拍 秋冬新款羽绒服情侣装渐变派克服ins宽松加厚内里绒毛外套女6638', '3723209549951.jpg', 100, 168),
(51, '2', '实拍 2020秋冬新款羽绒棉服情侣装立领拼色韩版ins保暖棉衣外套女6672', '3980671649951.jpg', 100, 156),
(52, '2', '实拍 2020秋冬新款羽绒棉服情侣装立领拼色韩版ins保暖棉衣外套女6672', '6697389549951.jpg', 100, 108),
(53, '3', '2021新款夏季男士丝光棉圆领休闲印花短袖T恤衫', '3683989184161.jpg', 100, 65),
(54, '3', '2021夏季男休闲半袖运动T恤潮流圆领宽松打底T恤', '0189663484161.png', 100, 38),
(55, '3', '2021新款 夏季 新款T桖卫衣 做工非常之精细火爆', '0189663484161.png', 100, 95),
(56, '3', 'B家巴黎2021春夏新款短袖Tee 直喷印花男女同款', '1614763942359.jpeg', 100, 185),
(57, '3', '2021新款情侣装夏装短袖ins夏天圆领T恤', '8006513944161.jpg', 100, 38),
(58, '3', '2021高端潮流纯棉长袖男装春秋款男士卫衣秋季圆领', '9241246688951.jpg', 100, 90),
(59, '3', 'P802021官网春夏新款 Moncler 蒙口 短袖高端T恤', '1614742509173.jpeg', 100, 138),
(60, '3', '高端前后绣短袖T恤男女同款', '1614497251888.jpeg', 100, 140),
(61, '3', '高端boyT恤情侣款秒杀', '1614660454987.jpeg', 100, 55),
(62, '3', '丝光棉T恤2020新款潮男时尚烫钻短袖T恤男装欧洲站', '9523002210951.jpg', 100, 45),
(64, '4', '061号高端牛仔裤男秋冬款修身小脚裤子男直筒弹力', '5719627212061.jpg', 100, 69),
(65, '4', '包邮2020年秋款男士新款三条杠化纤九分裤休闲长裤', '4520500084061.jpg', 100, 37),
(66, '4', '包邮2020年秋款男士新款插色化纤九分裤休闲裤百搭', '7002792474061.jpg', 100, 39),
(67, '4', '高档精品，2019春夏工装裤百搭韩版束脚裤子男男士', '8170463924551.png', 100, 71),
(68, '4', '运动长裤男2021宽松跑步健身休闲篮球训练裤子全开', '2429193664161.jpg', 100, 55),
(69, '4', '刺绣老鹰梭织工装裤情侣款', '1614068943827.jpeg', 100, 200),
(70, '4', '2021运动裤男女春季季宽松束脚高街百搭显瘦学生阔腿裤子ins潮', '1866788883161.jpg', 100, 64),
(71, '4', '松紧裤2021爆款休闲裤面料棉特殊来料穿着极度舒适时尚', '0551803424161.jpg', 100, 238),
(72, '4', '2021新款束脚卫裤男士春秋季车工装裤潮牌休闲裤子', '8835114324161.jpg', 100, 65),
(73, '4', '松紧裤2021爆款休闲裤面料棉特殊来料穿着极度舒适时尚', '8497292424161.jpg', 100, 238);

-- --------------------------------------------------------

--
-- 表的结构 `time`
--

CREATE TABLE `time` (
  `t_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `t_date` int(50) NOT NULL,
  `product_type` int(2) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `create_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `time`
--

INSERT INTO `time` (`t_id`, `product_id`, `t_date`, `product_type`, `product_price`, `product_name`, `create_time`) VALUES
(10, 72, 4, 4, '65.00', '2021新款束脚卫裤男士春秋季车工装裤潮牌休闲裤子', '2021-05-03 15:01:12.365547'),
(11, 39, 4, 1, '82.00', '2021春法式气质V领长袖碎花连衣裙女中长款收腰显瘦打底裙子', '2021-05-03 15:01:26.900568'),
(12, 35, 3, 1, '139.00', '2021春季中长款个性休闲时尚气质波点连衣裙长袖', '2021-05-03 15:01:32.003210'),
(13, 51, 2, 2, '156.00', '实拍 2020秋冬新款羽绒棉服情侣装立领拼色韩版ins保暖棉衣外套女6672', '2021-05-03 15:01:39.226427'),
(14, 35, 6, 1, '139.00', '2021春季中长款个性休闲时尚气质波点连衣裙长袖', '2021-05-03 15:01:46.506155'),
(15, 34, 2, 1, '999.00', 'SML春季新款荷叶边重工水钻蝴蝶结长袖连衣裙', '2021-05-03 15:01:53.498022'),
(16, 58, 4, 3, '90.00', '2021高端潮流纯棉长袖男装春秋款男士卫衣秋季圆领', '2021-05-03 15:02:00.570564'),
(17, 69, 3, 4, '200.00', '刺绣老鹰梭织工装裤情侣款', '2021-05-03 15:02:07.565147'),
(18, 42, 4, 1, '117.00', '不规则露肩蕾丝衬衫新款长袖显瘦小个子黑色裙子', '2021-05-03 16:54:59.850603'),
(19, 61, 8, 3, '55.00', '高端boyT恤情侣款秒杀', '2021-05-03 17:27:31.596201'),
(20, 41, 481, 1, '60.00', '2021春装新款连衣裙女复古小黑裙显瘦拼接翻领长袖收腰气质衬衫裙', '2021-05-03 18:12:33.797238');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(40) NOT NULL COMMENT '用户名',
  `user_password` varchar(30) NOT NULL COMMENT '用户密码',
  `user_addr` varchar(100) NOT NULL COMMENT '用户地址',
  `user_tel` varchar(20) NOT NULL COMMENT '用户电话',
  `time` datetime DEFAULT current_timestamp(),
  `power` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_addr`, `user_tel`, `time`, `power`) VALUES
(6, 'root', 'root', '北京市大庆区', '18749223166', '2021-04-15 20:10:58', 1),
(24, 'aaa', 'aaaaaa', '中国', '18749203147', '2021-04-27 20:54:09', 0),
(25, 'root22', 'root', '北京', '18925463841', '2021-04-27 20:55:48', 0),
(26, 'rootaaa', 'root', '广东省广州市', '18925463841', '2021-04-28 07:04:31', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- 表的索引 `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`t_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id', AUTO_INCREMENT=212;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言id', AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=57;

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id', AUTO_INCREMENT=121;

--
-- 使用表AUTO_INCREMENT `time`
--
ALTER TABLE `time`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
