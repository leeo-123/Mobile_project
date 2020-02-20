-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-01-20 10:07:16
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28
SET NAMES UTF8;
DROP DATABASE IF EXISTS epet;
CREATE DATABASE epet CHARSET=UTF8;
USE epet;






SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epet`
--

-- --------------------------------------------------------

--
-- 表的结构 `epet_user`
--

CREATE TABLE `epet_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `epet_user`
--

INSERT INTO `epet_user` (`uid`, `uname`, `upwd`) VALUES
(1, 'dingding', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'dangdang', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'doudou', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'yaya', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `eproducts`
--

CREATE TABLE `eproducts` (
  `lid` int(11) NOT NULL,
  `pclass` varchar(64) DEFAULT NULL,
  `dclass` varchar(64) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `judge` varchar(64) DEFAULT NULL,
  `sales` varchar(64) DEFAULT NULL,
  `pic1` varchar(128) DEFAULT NULL,
  `pic2` varchar(128) DEFAULT NULL,
  `pic3` varchar(128) DEFAULT NULL,
  `price1` decimal(10,2) DEFAULT NULL,
  `price2` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eproducts`
--

INSERT INTO `eproducts` (`lid`, `pclass`, `dclass`, `title`, `details`, `judge`, `sales`, `pic1`, `pic2`, `pic3`, `price1`, `price2`, `href`) VALUES
(1, '主粮', '进口', '百加世 GO!健康无限系列 无谷九种肉全猫粮 16磅', '丰富肉类蛋白 促进消化系统健康 增强免疫力', '96', '6988', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/30/182227_720594.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/30/182227_562095.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/30/182227_181827.jpg?x-oss-process=style/cut&$1=500&$2=500', '588.00', '619.00', '/details?lid=1'),
(2, '主粮', '进口', '百加世NOW FRESH 无谷成猫粮 8磅', '加拿大原装进口 护肤美毛 防软便', '96', '7899', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/07/1601047_61835.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/07/141824_123489.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/07/141828_272997.jpg?x-oss-process=style/cut&$1=500&$2=500', '388.00', '409.00', '/details?lid=2'),
(3, '主粮', '进口', '加拿大原装进口 原始猎食渴望 全肉配方 全猫粮 5.4kg', '加拿大原装进口 天然草本精华 营养丰富全面', '96', '5773', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/1142010_829491.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/1142010_281952.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/1142010_482677.jpg?x-oss-process=style/cut&$1=500&$2=500', '645.00', '688.00', '/details?lid=3'),
(4, '主粮', '进口', '加拿大原装进口 原始猎食渴望 六种鱼全猫粮 1.8kg', '加拿大原装 17新款鲜鱼成分提升到85% 美毛/健体', '97', '7896', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/114038_95529.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/114038_752533.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/21/114038_356765.jpg?x-oss-process=style/cut&$1=500&$2=500', '320.00', '388.00', '/details?lid=4'),
(5, '主粮', '国产', '海尔仕 海洋鱼肉味全期猫粮 10kg', '口感酥脆 味道鲜美 呵护肠道 维持体态 亮毛明目', '96', '662', 'https://img2.epetbar.com/2018-07/27/11/6c1bcc0c5f11169eeb7172b260188ce4.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-01/16/17/92d2fba746ef500e3595620fc441dd11.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-01/16/17/6d437cb9e1f95bc8ec2e322ebfc53db4.jpg?x-oss-process=style/cut&$1=500&$2=500', '126.00', '151.20', '/details?lid=5'),
(6, '主粮', '国产', '皇家royal canin 全能优选肠道舒适成猫粮2kg ', '新老包装更换中 随机发 ', '96', '789', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/14/0901000_614463.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/12/161409_496740.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/12/161409_711604.jpg?x-oss-process=style/cut&$1=500&$2=500', '154.00', '174.50', '/details?lid=6'),
(7, '主粮', '国产', '伯纳天纯 经典系列 幼猫粮 1.5kg ', ' 增强免疫力 母乳配方 防治腹泻 ', '96', '567', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/0101917_630849.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/0101917_873667.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/0101917_145831.jpg?x-oss-process=style/cut&$1=500&$2=500', '128.00', '153.60', '/details?lid=7'),
(8, '主粮', '国产', '伯纳天纯 无谷配方成猫猫粮 10kg', '进口金枪鱼肉 优化体态 保护泌尿系统 改善粪便臭味 去毛球', '97', '543', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/13/184344_18556.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/13/184344_171848.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/13/184344_856684.jpg?x-oss-process=style/cut&$1=500&$2=500', '489.00', '586.80', '/details?lid=8'),
(9, '主粮', '功能', '泰国进口渔极 高营养系列 成猫AD罐 70g', '日本品牌 帮助偏食成猫摄取能量 ', '97', '96', 'https://img2.epetbar.com/2015-01/27/991d553af862a8e3956a41b35bde4336.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-01/27/82137017505680fe6f04c8a99af56ee1.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-01/27/c02fe546093473311434d940276aee63.jpg?x-oss-process=style/cut&$1=500&$2=500', '11.00', '13.50', '/details?lid=9'),
(10, '主粮', '功能', 'K9 犬猫用处方罐 营养速补康复功能 170g', '严格选材 配方均衡 营养充分 适口性良好', '97', '88', 'https://img2.epetbar.com/2018-07/05/17/98f877cec546eaf13b6b21bff6368600.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/05/17/2a23e67ecff12f204897dbeb784d2c87.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/05/17/c1bc52231a180750c3840205591071b0.jpg?x-oss-process=style/cut&$1=500&$2=500', '25.00', '30.00', '/details?lid=10'),
(11, '主粮', '功能', '比瑞吉Nature Bridge 无谷草本系列 胃肠道全期猫粮 2kg', '添加山楂+山药 促进肠胃道蠕动 冻干技术保留食材本真 ', '97', '46', 'https://img2.epetbar.com/common/upload/commonfile/2020/01/09/155316_73230.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/18/0101817_430429.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/18/0101817_382376.jpg?x-oss-process=style/cut&$1=500&$2=500', '199.00', '238.00', '/details?lid=11'),
(12, '主粮', '功能', '安贝 亮眼生命粒成猫粮 1.5kg', '三文鱼+金枪鱼 添加牛磺酸 滋养眼睛 减少泪痕产生', '97', '57', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/23/092415_488092.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/23/092415_171139.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/23/092415_112208.jpg?x-oss-process=style/cut&$1=500&$2=500', '99.00', '185.00', '/details?lid=12'),
(13, '零食', '罐头', '希宝sheba 啫喱系列 白身吞拿鱼罐头 85g', '高营养 低脂肪 适口性佳', '97', '80', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/093344_180793.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/093344_47294.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/093344_564404.jpg?x-oss-process=style/cut&$1=500&$2=500', '9.95', '11.88', '/details?lid=13'),
(14, '零食', '罐头', '日本伊纳宝妙好 猫用鲜封包 鸡小胸肉与小银鱼 60g', '金味道系列 营养美味 不含合成色素及防腐剂 绿茶消臭零食 ', '97', '95', 'https://img2.epetbar.com/goods/sales/20190508154213_293573.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-08/19/16/bb4abda6b2de8011538ec3a46f3dcfbe.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-08/19/16/943b3f47318804424df91ea90203a7e7.jpg?x-oss-process=style/cut&$1=500&$2=500', '3.60', '4.50', '/details?lid=14'),
(15, '零食', '罐头', '日本金赏Golden 营养猫罐头 金枪鱼+虾仁 170g ', '食品营养专家 适口性强 增强免疫力 补充体能 ', '97', '37', 'https://img2.epetbar.com/2018-07/02/13/58a46b9dd71e065eb862b899d427c5bf.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/02/13/733ab9ef01413c6c30d41006d92c8305.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/02/13/733ab9ef01413c6c30d41006d92c8305.jpg?x-oss-process=style/cut&$1=500&$2=500', '5.70', '8.00', '/details?lid=15'),
(16, '零食', '罐头', '泰国进口雪诗雅Schesir 猫罐头系列 吞拿鱼+鲜虾 85g', '健康营养 补充水分 改善泌尿健康', '97', '66', 'https://img2.epetbar.com/2016-01/25/16/1408324eed9ee73e1590bd5c1ff95e17.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-01/04/16/eb10b9acca224a084a7aafc68d1fd588.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-01/04/16/35c954d4c71f71ebe9728e25345ac047.jpg?x-oss-process=style/cut&$1=500&$2=500', '13.00', '16.60', '/details?lid=16'),
(17, '零食', '猫碗', '路斯 猫用小鱼饼干 金枪鱼+鸡肉 80g ', '猫咪的专属饼干 营养均衡 健康美味 控制毛球', '97', '45', 'https://img2.epetbar.com/goods/sales/20190508171334_774898.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/16/10/c9f0b4df5bd4332915961694a0dde4c7.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/16/10/cebb816b67d75fb584f2b1ef2d7ee3a0.jpg?x-oss-process=style/cut&$1=500&$2=500', '9.90', '12.00', '/details?lid=17'),
(18, '零食', '猫碗', '哈乐喜Healthy 三效营养洁牙棒 鸡肉+猫薄荷味 10支', '补充营养 明目亮肤 清洁牙齿 健康骨骼 无谷配方', '97', '623', 'https://img2.epetbar.com/goods/sales/20190703183118_572786.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190703183118_572786.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190703183118_572786.jpg?x-oss-process=style/cut&$1=500&$2=500', '21.00', '26.50', '/details?lid=18'),
(19, '零食', '猫碗', '蒙贝 猫用酪咔奶酪 60g', '口感丝滑 味道醇香 添加益生菌和DHA 补钙护肠', '97', '77', 'https://img2.epetbar.com/goods/sales/20190703183418_795184.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-09/19/11/087a0a1ed6bfb03919014ef659c4a668.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-09/19/11/7d599ecae6fe9c56064fccaae3d7db97.jpg?x-oss-process=style/cut&$1=500&$2=500', '16.80', '20.16', '/details?lid=19'),
(20, '零食', '猫碗', 'Freshcat 猫零食综合营养装夹心酥 240g', '提供身体活力 保护牙齿健康 促进肠道消化', '97', '55', 'https://img2.epetbar.com/goods/sales/upload_file_2019368880.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_2019364240.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_2019368880.jpg?x-oss-process=style/cut&$1=500&$2=500', '48.00', '64.00', '/details?lid=20'),
(21, '零食', '猫草', 'Amycarol 天然猫草(猫薄荷） 175ml ', '原生态栽培 可促进肠胃蠕动 帮助消化 有排毛球的功效', '97', '77', 'https://img2.epetbar.com/goods/sales/20190508154235_156959.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-09/10/16/0859051a8bdf2e20237d193055a31575.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-09/10/16/5a027ab5b41ccab0c708ff9f5d2f92c9.jpg?x-oss-process=style/cut&$1=500&$2=500', '15.00', '20.00', '/details?lid=21'),
(22, '零食', '猫草', '魔金Magic 种植健康猫草 12g ', '去毛球护肠胃 改善消化系统 促进猫咪活力', '97', '37', 'https://img2.epetbar.com/2015-11/18/14/1cf6a4781f025bc8f933f33dad71cfbe.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/18/14/6b55ee973fa025c0cc8db2f7c8f97908.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/18/14/ec23790a44f03fc5b39a505673c2a5ac.jpg?x-oss-process=style/cut&$1=500&$2=500', '12.00', '24.00', '/details?lid=22'),
(23, '零食', '猫草', '猫咪旺农场 木天蓼(细棍) 5支装', ' 猫咪磨牙棒 增强食欲 舒缓神经', '99', '4563', 'https://img2.epetbar.com/goods/sales/20190612182938_263311.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-04/25/392b9bda0aa7065c4fb920c7bf6d920c.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-04/22/c22afa781b5a45ccbaff6adc8315a949.jpg?x-oss-process=style/cut&$1=500&$2=500', '5.60', '6.00', '/details?lid=23'),
(24, '零食', '猫草', '小野豹 天然猫草 猫草种子（蓝色 盒子18*11.5*6cm）', '排除毛球 调理肠胃 增加食欲', '99', '77', 'https://img2.epetbar.com/2016-08/26/16/c0116912d08e52731b99b25d530923ee.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-01/16/273a5ef69c88418298bef65d1e726215.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-01/16/c8df88d5509958f3c8ee8074c64c7228.jpg?x-oss-process=style/cut&$1=500&$2=500', '12.00', '14.40', '/details?lid=24'),
(25, '清洁', '猫草', '澳大利亚N1 天然玉米猫砂 7kg', '商品包装已更改 实物请以新包装为准 快速吸收 牢固结团 低粉尘 环保健康猫砂 ', '99', '165', 'https://img2.epetbar.com/2015-11/05/14/058102f268c73b8d2283b4deec05db73.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/05/14/32c110c6a56285dd0c0688fe6adb85eb.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/05/14/32c110c6a56285dd0c0688fe6adb85eb.jpg?x-oss-process=style/cut&$1=500&$2=500', '90.00', '108.00', '/details?lid=25'),
(26, '清洁', '猫草', 'LoveCat 原味豆腐砂 6L(2.82kg)', '安全健康 无粉尘可冲厕所 ', '99', '48', 'https://img2.epetbar.com/2018-08/30/11/53394b269499fabc70a520f39d0b2e5d.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-05/09/332b5a0b144f391046eff87666581786.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-05/09/bd1ca38107cafaa127f70d561d437fe1.jpg?x-oss-process=style/cut&$1=500&$2=500', '50.00', '78.00', '/details?lid=26'),
(27, '清洁', '猫草', '日本莎美特sanma 膨润土猫砂 10L（约7.5kg ）', ' 强力吸收臭味 多孔型 结团更快', '99', '355', 'https://img2.epetbar.com/goods/sales/upload_file_20193154722.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_20193158301.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_20193158301.jpg?x-oss-process=style/cut&$1=500&$2=500', '26.00', '38.00', '/details?lid=27'),
(28, '清洁', '猫草', '爱丽思IRIS 健康除臭猫砂 KCD80 6.1kg', '可以检查猫咪的健康状况 ', '98', '341', 'https://img2.epetbar.com/goods/sales/20190628182746_708308.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-11/09/fd1612ca29e7611a951213cd339d9d31.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-11/09/fd1612ca29e7611a951213cd339d9d31.jpg?x-oss-process=style/cut&$1=500&$2=500', '30.00', '45.00', '/details?lid=28'),
(29, '清洁', '厕所', '加拿大Earth rated 胶囊取袋器填充袋 清香味 120个/盒', '可降解材质 搭配胶囊取袋器 拾便袋外出好携带', '98', '63', 'https://img2.epetbar.com/2017-04/13/16/d84be304c6082c74d34450f45f871158.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-04/13/16/6e2fee4ada8e61b70ef9719e2cad3c0b.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-04/13/16/9a9039f51afe6efc194b3c473c858270.jpg?x-oss-process=style/cut&$1=500&$2=500', '48.00', '68.00', '/details?lid=29'),
(30, '清洁', '厕所', 'TOM CAT 自由舱猫砂盆 灰色 55*46*49cm', '双门设计 落砂踏板 双门折叠 活性炭片毛毡可清新净味', '98', '56', 'https://img2.epetbar.com/2018-07/24/14/186acf03328fdd68ee48f65e5f1eaaff.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/24/14/4e6045569223e77f32a28234eb0bae5f.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/24/14/4e6045569223e77f32a28234eb0bae5f.jpg?x-oss-process=style/cut&$1=500&$2=500', '239.00', '259.80', '/details?lid=30'),
(31, '清洁', '厕所', '美卡MAKAR 特大豪华封闭猫厕 粉色', '没有压抑感 落砂网格防止带出 ', '100', '45', 'https://img2.epetbar.com/goods/sales/20190628170641_513178.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2012-08/30/3261045563478cb9d4ff7e25781c8642.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2012-08/30/c004c6c64bea0cb580151f394673e1ca.jpg?x-oss-process=style/cut&$1=500&$2=500', '189.00', '260.00', '/details?lid=31'),
(32, '清洁', '厕所', '爱丽思IRIS 猫厕所 NE-550 大号 天蓝色', '附砂铲猫砂盆 抗菌材料 坚固耐用 55.7*45*15cm', '100', '45', 'https://img2.epetbar.com/2016-03/07/10/6a9ad7f20d095f9533420e7d9590b937.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/07/10/547641b853ccb96aee2fcd9a575316b8.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/07/10/60899159e5f1a372f4108cc6f424a391.jpg?x-oss-process=style/cut&$1=500&$2=500', '58.00', '69.60', '/details?lid=32'),
(33, '清洁', '除臭', '派锐 猫用眼睛湿巾 100片', '去除眼垢 温和无刺激 使眼睛干爽', '100', '33', 'https://img2.epetbar.com/2018-06/27/14/5b302a2c364cb7b1a1fa1009e71b5fb1.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-06/27/14/85fa53bc8847c215551c8834307e1033.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-06/27/14/d64aec9806803699832cd69ba4399a2f.jpg?x-oss-process=style/cut&$1=500&$2=500', '18.00', '25.00', '/details?lid=33'),
(34, '清洁', '除臭', '圣路薇 X1宠物抗菌除臭剂 400ml', '一瓶多用 分解异味 自然留香 消毒抑菌 喷洒方便', '100', '66', 'https://img2.epetbar.com/goods/sales/20190428153745_629430.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190428153745_629430.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190428153745_629430.jpg?x-oss-process=style/cut&$1=500&$2=500', '29.00', '34.80', '/details?lid=34'),
(35, '清洁', '除臭', '小宠EHD 宠物祛味消毒液 500ml', '全龄犬猫适用 植物萃取 无刺激 清新空气 减少臭味', '98', '57', 'https://img2.epetbar.com/goods/sales/20190726174147_586726.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-12/07/10/01ce99cb73e2df7b7ec6032004e227b5.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-12/07/10/01ce99cb73e2df7b7ec6032004e227b5.jpg?x-oss-process=style/cut&$1=500&$2=500', '35.00', '43.20', '/details?lid=35'),
(36, '清洁', '除臭', '俏尾巴SmartTail 宠物清洁除臭湿巾 80抽', '绿茶植物配方 清洁除臭 减少异味 不添加酒精 温和不刺激', '98', '33', 'https://img2.epetbar.com/2018-03/16/11/3adaf1097217593085a0f19f42429c22.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-03/16/11/1ee0dbf3d1714f193f7ce6a1779008e0.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-03/16/11/8b7587a0e4172ad12909f418f12b4cef.jpg?x-oss-process=style/cut&$1=500&$2=500', '12.50', '25.80', '/details?lid=36'),
(37, '日用', '猫碗', '爱丽思IRIS 树脂猫用食盆 D-160 中号 橘米色', '碗口直径13 高4.5cm 采用食用级PP树脂', '98', '51', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/16/155138_797677.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-10/25/338df64557bd4936b98c8db0b64d44ec.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-10/25/361dcc229a761a25207074604bffa339.jpg?x-oss-process=style/cut&$1=500&$2=500', '5.45', '6.00', '/details?lid=37'),
(38, '日用', '猫碗', ' 俏尾巴SmartTail 15度调节宠物碗 白色', '保护颈椎 避免皮肤病 环保材质 设计美观', '98', '66', 'https://img2.epetbar.com/goods/sales/upload_file_2019426302.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_2019426302.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_2019426302.jpg?x-oss-process=style/cut&$1=500&$2=500', '28.00', '35.00', '/details?lid=38'),
(39, '日用', '猫碗', '伊丽Elite 犬猫通用蓝色卡通大白陶瓷碗 15*15*6cm', '厚实陶瓷耐高温 800度烧制不易磨损 内部采用乳白色亚光釉', '98', '48', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/163252_614165.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/163252_268487.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/163252_256368.jpg?x-oss-process=style/cut&$1=500&$2=500', '20.00', '24.00', '/details?lid=39'),
(40, '日用', '猫碗', '伊丽Elite 犬猫通用红猫陶瓷碗 12*12*4.5cm', '乳白色亚光釉 光滑易洗 耐磨度高 洗碗机微波炉可用 ', '98', '80', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/160459_608599.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/160459_309191.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/12/17/160459_597378.jpg?x-oss-process=style/cut&$1=500&$2=500', '12.00', '14.40', '/details?lid=40'),
(41, '日用', '餐具', '波波BOBO 猫用奶瓶套装 120ml', '优质材料 专为幼宠设计 贴心呵护', '98', '77', 'https://img2.epetbar.com/2016-11/19/10/6ce9aa3b18eed26dbadccb811131ad78.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-05/13/5ff62432f8669614570fd9bc188d9c18.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-05/13/1680e5a9b9897f49df797017cb1cfec3.jpg?x-oss-process=style/cut&$1=500&$2=500', '10.00', '12.00', '/details?lid=41'),
(42, '日用', '餐具', '爱丽思IRIS 半透明密封干粮储粮桶 2kg MFS-2 绿色', '日本品牌 不送勺 可装约2kg干粮 优质健康树脂材料 内置干燥剂存储盒', '98', '88', 'https://img2.epetbar.com/2014-06/27/c6d571580ce05ca424874f0a08f850f5.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-06/27/996fab7c1ed3a6194db762d4a509e901.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-06/27/aca6dede2dd64901648f670555100a4c.jpg?x-oss-process=style/cut&$1=500&$2=500', '39.00', '95.00', '/details?lid=42'),
(43, '日用', '餐具', '霍曼HOMERUN 宠物智能活氧饮水机 2L', '循环喷泉 三重过滤 减少毛发杂质异味 智能模式 水量提醒', '98', '88', 'https://img2.epetbar.com/2018-02/22/15/1a6af49f173af06885acc93b0a1d2bf8.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-02/22/15/9831909e36d5bea4fbc95198d2b4d1be.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-02/22/15/a6e251eeb55ea45fadd08b3a68707ed3.jpg?x-oss-process=style/cut&$1=500&$2=500', '199.00', '214.20', '/details?lid=43'),
(44, '日用', '餐具', '日本GEX 猫用水机离子交换树脂替换过滤片 替换装 2pcs', '高级网状过滤层 快速有效吸附水中氯气异味 有害物质等 抑制细菌繁殖', '98', '22', 'https://img2.epetbar.com/2015-11/02/16/6935bcc08b7331a7aec5b4f049edb0a5.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/02/16/36da1b9e03959757dcf87965b7c9a52f.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/02/16/d8c010c34d18a1915bb480a225fb20db.jpg?x-oss-process=style/cut&$1=500&$2=500', '55.00', '66.00', '/details?lid=44'),
(45, '日用', '住所', '绒域坊 狮子短毛绒卡通圆窝 S号 45*45*16cm', '卡通造型 萌趣可爱 质地柔软 抗皱抗压', '98', '248', 'https://img2.epetbar.com/2016-10/22/14/c9ad79a1f036f05a71c6cf47026c8e5a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-10/22/14/b54131e0168a691f684da60fbc59dd86.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-10/22/14/c1396b5e37f9b49fb6b5356eb83ce340.jpg?x-oss-process=style/cut&$1=500&$2=500', '48.00', '89.00', '/details?lid=45'),
(46, '日用', '住所', 'CatS猫家具 复式带阳台木制猫屋 白色 48*38*80cm', '定制双纱线巴西剑麻 环保耐抓 进口PVC压膜 加厚耐划', '98', '68', 'https://img2.epetbar.com/2018-07/20/16/f7d36dd8af83ef197c8990fab4982d9b.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/20/16/f7d36dd8af83ef197c8990fab4982d9b.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/20/16/f7d36dd8af83ef197c8990fab4982d9b.jpg?x-oss-process=style/cut&$1=500&$2=500', '738.00', '885.60', '/details?lid=46'),
(47, '日用', '住所', '爱丽思IRIS 宠物扩展笼子 青色 S号 47*65*65cm', '可变换组合笼子 组装简单 拆卸方便 ', '100', '56', 'https://img2.epetbar.com/2018-07/03/11/bd37324eb320a88bde2cb830b4fc02a2.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/03/11/bd37324eb320a88bde2cb830b4fc02a2.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/03/11/bd37324eb320a88bde2cb830b4fc02a2.jpg?x-oss-process=style/cut&$1=500&$2=500', '398.00', '477.60', '/details?lid=47'),
(48, '日用', '住所', '瑞炫 柳编可拆洗宠物窝组合 象牙白 M号', '自然除臭 稳固美观 双重睡塌 四季通用', '96', '31', 'https://img2.epetbar.com/goods/sales/20190724154106_454332.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201907241541010_360782.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201907241541010_752789.jpg?x-oss-process=style/cut&$1=500&$2=500', '199.00', '238.80', '/details?lid=48'),
(49, '玩具', '磨爪', '田田猫 卡通加长猫抓板 明黄色 50*5.5cm', '趣味磨爪 告别无聊 好玩猫专属 ', '96', '2097', 'https://img2.epetbar.com/goods/sales/20190520114517_66899.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-04/15/12/623ffc64b8c004392774ba81721e69e9.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-04/15/12/469c444e73458ac934bbbea3a71c62ac.jpg?x-oss-process=style/cut&$1=500&$2=500', '9.90', '18.00', '/details?lid=49'),
(50, '玩具', '磨爪', '乐优派 碗形猫抓板 40*40*11cm', '环保玩楞纸材质 加厚加硬 搭配天然猫薄荷叶 ', '96', '135', 'https://img2.epetbar.com/goods/sales/20190520135904_770773.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190520135904_770773.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190520135904_770773.jpg?x-oss-process=style/cut&$1=500&$2=500', '43.00', '64.00', '/details?lid=50'),
(51, '玩具', '磨爪', '田田猫 太阳花系列骨形猫抓板 蓝色', '天然环保瓦楞纸材质', '96', '133', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/092632_394136.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/092632_347998.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/29/092632_390117.jpg?x-oss-process=style/cut&$1=500&$2=500', '23.00', '27.60', '/details?lid=51'),
(52, '玩具', '磨爪', '俏尾巴SmartTail 瓦楞纸猫抓板 s型 43*22*7.5cm', '柔韧性强 厚实耐抓 不伤猫爪 附赠猫薄荷', '96', '122', 'https://img2.epetbar.com/goods/sales/201904260101145_566771.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201904260101153_841433.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201904260101156_528065.jpg?x-oss-process=style/cut&$1=500&$2=500', '9.90', '12.00', '/details?lid=52'),
(53, '玩具', '爬架', '俏尾巴SmartTail 小圆凳猫爬架 草绳 28*28*29cm', '加粗加厚 稳固耐抓 四季可用 安全有趣', '96', '123', 'https://img2.epetbar.com/goods/sales/201905010144649_612823.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905010144653_885918.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905010144655_241741.jpg?x-oss-process=style/cut&$1=500&$2=500', '15.00', '18.00', '/details?lid=53'),
(54, '玩具', '爬架', '俏尾巴SmartTail W-16款多层猫爬架 40*40*118cm', '加粗加厚 稳固耐抓 四季可用 安全有趣', '96', '127', 'https://img2.epetbar.com/goods/sales/201905010143438_892526.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905010143441_256762.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905010143444_279345.jpg?x-oss-process=style/cut&$1=500&$2=500', '166.00', '208.00', '/details?lid=54'),
(55, '玩具', '爬架', 'CatS 猫家具 木制猫楼梯/猫爬台阶 高57cm', '巴西剑麻 环保耐抓 实木生态板 无油漆 更安全', '96', '63', 'https://img2.epetbar.com/2018-08/24/09/9fe43b70f083fc3feaf0d8bbd0d69678.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/24/09/85c1d164f388587548dd78ef01253bf8.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/24/09/85c1d164f388587548dd78ef01253bf8.jpg?x-oss-process=style/cut&$1=500&$2=500', '358.00', '429.60', '/details?lid=55'),
(56, '玩具', '爬架', 'CatS猫家具 木制弯曲剑麻猫爬架 白色 70*40*80cm', '定制双纱线巴西剑麻 环保耐抓 进口PVC压膜 加厚耐划', '96', '55', 'https://img2.epetbar.com/2018-07/20/17/c51a04f9913338667de9c795a996baec.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/20/17/c51a04f9913338667de9c795a996baec.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-07/20/17/c51a04f9913338667de9c795a996baec.jpg?x-oss-process=style/cut&$1=500&$2=500', '988.00', '1185.60', '/details?lid=56'),
(57, '玩具', '休闲', '经典猫猫玩具 老鼠款不倒球', ' 打不倒的鼠坚强 ', '96', '78', 'https://img2.epetbar.com/2012-08/31/d727351452849400655c12055d9db9bc.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2012-08/31/be995b898bca2e6911f317b7c97ea286.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2012-02/22/8966f5e146ac8eea163f0d1371507b7f.jpg?x-oss-process=style/cut&$1=500&$2=500', '5.00', '6.00', '/details?lid=57'),
(58, '玩具', '休闲', '田田猫 小球套装(4只装) 帆布小球 直径约5cm ', '耐抓耐咬 环保材料 放心玩耍', '96', '69', 'https://img2.epetbar.com/2016-01/26/14/a33ad7b8aa6630f974d6e858c211eed9.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-10/31/16/64a4a8be0ec7577f76ae33c1ac5e1ef1.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-10/31/16/3da942e68d34371abc7d6769bfab375e.jpg?x-oss-process=style/cut&$1=500&$2=500', '8.50', '9.60', '/details?lid=58'),
(59, '玩具', '休闲', '未卡Vetreska 猫咪玲珑球玩具 22g', '磨牙洁齿 催吐毛球 清新口腔 调节肠胃', '96', '46', 'https://img2.epetbar.com/2018-09/21/11/777f2cfa7748c01b97a3c83f4608cf3a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/21/11/609a0a887d766a3b1ba8b2adf4d0576a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/21/11/ba8bc6730cd0532a8d7ca27210d552d8.jpg?x-oss-process=style/cut&$1=500&$2=500', '28.00', '35.00', '/details?lid=59'),
(60, '玩具', '休闲', '可食用丝瓜络猫咪玩具 蜻蜓', '磨爪磨牙 去除牙垢 舒缓情绪 长9.5cm', '96', '37', 'https://img2.epetbar.com/2016-02/15/10/c5c0214764a738390cecd613c08e57e8.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-02/15/10/e5de66fbb4a800c04027c5f7c61f88b7.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-02/15/10/0e4139ab7b1d4cbba9b20192d0cff2a0.jpg?x-oss-process=style/cut&$1=500&$2=500', '2.50', '5.00', '/details?lid=60'),
(61, '美容', '疏剪', 'Amycarol 猫用美容圆点针梳 舒适耐用 M号', '舒适耐用', '96', '246', 'https://img2.epetbar.com/goods/sales/upload_file_20194222030.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-04/30/3df2fdb41a58ea628fe200b336aeb497.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2014-04/30/cd474abb22a99e8354d7f0d809f98fd4.jpg?x-oss-process=style/cut&$1=500&$2=500', '18.00', '21.00', '/details?lid=61'),
(62, '美容', '疏剪', '科德士 猫用电推剪 CP-3100', '电推剪好品牌 特惠 高性价比 ', '96', '200', 'https://img2.epetbar.com/goods/sales/upload_file_2019422187.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-11/09/90e846644911330b2746def68da3cec4.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2013-11/09/8ca31cd7bdb87fb19871cceafb337d4b.jpg?x-oss-process=style/cut&$1=500&$2=500', '49.00', '82.80', '/details?lid=62'),
(63, '美容', '疏剪', 'TOM CAT PAKEWAY双子座长毛宠物梳子 浪漫樱花', '弹性按摩梳&刀头祛毛 双重功能 按摩止痒 开结祛毛', '96', '186', 'https://img2.epetbar.com/2018-09/11/13/1f13ba19c648711919bf0a51ab76c002.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/11/13/deb22849b90c63807ad1d10e14adbb3c.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/11/13/38b9f35d5b61fddc2aa5f002668e600c.jpg?x-oss-process=style/cut&$1=500&$2=500', '39.00', '47.80', '/details?lid=63'),
(64, '美容', '疏剪', '得乐 犬猫用自洁钢针刷 粉色 10*18.5cm', '梳理造型 按摩皮肤 创意除毛结构 一键清理浮毛 ', '96', '186', 'https://img2.epetbar.com/2018-02/28/15/b9ebd95c4a06c9104c68669c2b66c8ac.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-02/28/15/acdb5331babf5a1de182ffc143365ac6.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-02/28/15/acdb5331babf5a1de182ffc143365ac6.jpg?x-oss-process=style/cut&$1=500&$2=500', '26.00', '33.20', '/details?lid=64'),
(65, '美容', '护理', '波波BOBO 猫用指甲剪 小号 长12cm*刀口长约1.2cm', '外销精品 精巧使用 指甲护理', '96', '177', 'https://img2.epetbar.com/2015-05/25/fee02f436f37de176ac532bc85082d67.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-05/25/0bd5b04e1b456d21ccce6c2ac558942a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-05/25/097e957650fb81edd6598e0ee9abc14e.jpg?x-oss-process=style/cut&$1=500&$2=500', '8.50', '15.00', '/details?lid=65'),
(66, '美容', '护理', '美芙 猫咪专用 弯头款指甲剪 粉色 10*6.3cm', '不锈钢半月切口设计 3种款式 安全修剪	', '96', '177', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/180608_798027.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/180608_798027.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/20/180608_798027.jpg?x-oss-process=style/cut&$1=500&$2=500', '16.00', '24.00', '/details?lid=66'),
(67, '美容', '护理', '宝丽Petiy 猫用精钢宠物指甲剪长10cm ', '进口不锈钢材 省力弹簧 刀头无比锋利', '96', '166', 'https://img2.epetbar.com/2015-06/13/fc3e3fbce206ee8e8e46d756c716f847.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-06/13/308ec72edda65980e3bf68e8a04c622a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-06/13/1872ee859dbea6388ddbc49402a53fc3.jpg?x-oss-process=style/cut&$1=500&$2=500', '19.00', '24.40', '/details?lid=67'),
(68, '美容', '护理', '美国瑞斯克Resco 猫用指甲剪 长约12cm ', '圆弧刀口 安全剪甲', '96', '166', 'https://img2.epetbar.com/2015-11/18/14/66cd7e1f259efac2ce959e444e5bca61.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/18/14/7f49997ce5455a861d872065c7005c26.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-11/18/14/c1c250e29b73eec003f269e3044567a7.jpg?x-oss-process=style/cut&$1=500&$2=500', '145.00', '208.00', '/details?lid=68'),
(69, '美容', '美容', 'Bioline 宠物除臭香水 情书 207ml', '除臭香料 祛除体臭', '96', '166', 'https://img2.epetbar.com/2018-04/28/09/08545a994e82a9d6ffb4c34b9db861bb.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-04/28/09/08545a994e82a9d6ffb4c34b9db861bb.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-04/28/09/08545a994e82a9d6ffb4c34b9db861bb.jpg?x-oss-process=style/cut&$1=500&$2=500', '30.00', '36.00', '/details?lid=69'),
(70, '美容', '美容', '中国台湾Yu东方森草 猫用樱花香水 145ml ', '保养型香水 保湿顺泽毛发 去宠物/环境异味 ', '96', '166', 'https://img2.epetbar.com/2015-07/08/326c943dc36a94eb8578f985a48f7678.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-07/08/ecac8bc5cdf0098e8a010666471c635d.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-07/08/b1b003e9650cb26f44502ea9c0afc8b9.jpg?x-oss-process=style/cut&$1=500&$2=500', '78.00', '93.60', '/details?lid=70'),
(71, '美容', '美容', '中国台湾Yu东方森草 猫用牡丹闪耀香水 145ml ', '保养型香水 保湿顺泽毛发 去宠物/环境异味 ', '96', '166', 'https://img2.epetbar.com/2015-09/12/16/67799b16b1243954a1a978d7e226f843.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-09/12/16/6550ad04373c50f45bc0289d2f9f85bb.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2015-09/12/16/5b35d9e03e02f346b33f2e2f2cd089ee.jpg?x-oss-process=style/cut&$1=500&$2=500', '78.00', '93.60', '/details?lid=71'),
(72, '美容', '美容', ' 美国原装进口 皇冠CrownRoyal 猫用赛级美容白粉 1lb/454g ', ' 去除污渍 性质温和不伤毛发', '96', '155', 'https://img2.epetbar.com/2016-03/30/14/d2cd081f7d8e37106220e17330f66770.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/30/14/3094fa74475ac8581a062e3994f59265.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/30/14/dbe6be55be79744d0e1370a4fce63366.jpg?x-oss-process=style/cut&$1=500&$2=500', '139.00', '200.00', '/details?lid=72'),
(73, '保健', '强化', '美国麦德氏 In-Basic猫用左旋赖氨酸 10g', '形成保护力 远离猫鼻支 维护猫咪眼睛健康 独立铝箔包装', '96', '1288', 'https://img2.epetbar.com/2018-09/11/15/fd0bcdbd0ad162af4f7389599e60b9bf.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/11/15/471fdaa0b11f145dc71c6d453adf5f9a.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-09/11/15/9c08a3b6418e7befa01cd720efee7906.jpg?x-oss-process=style/cut&$1=500&$2=500', '45.00', '66.00', '/details?lid=73'),
(74, '保健', '强化', '卫仕 猫牛磺酸 复合牛磺酸片 200片', '猫咪所需牛磺酸、氨基酸 明亮眼眸 视力养护', '96', '1288', 'https://img2.epetbar.com/2018-08/16/15/ef12454840a07d7777320bac5722c433.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/16/15/1edbe5f74990a6183befee03094fa605.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/16/15/98e87f9de8721a3e1b5df5322a688df7.jpg?x-oss-process=style/cut&$1=500&$2=500', '68.00', '85.00', '/details?lid=74'),
(75, '保健', '强化', '维斯康VitsCan V+系列 猫用多糖免疫速补营养膏 120.5g', '告别虚弱 远离疾病 增强免疫 纳米技术 营养直达', '96', '1288', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/15/174306_709122.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/15/174306_620943.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/15/174306_218665.jpg?x-oss-process=style/cut&$1=500&$2=500', '88.00', '105.60', '/details?lid=75'),
(76, '保健', '强化', '英国MAG 猫胺膏 120g', '高溶解易吸收 补充赖氨酸 强化体质', '96', '1288', 'https://img2.epetbar.com/2018-10/23/17/48843534237825c61aba69f1240fc0c3.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-10/28/16/e3e0a323450f1bc9cb041052f42616b5.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-10/23/17/d7723f10c1714724c60a0e719a88ac0f.jpg?x-oss-process=style/cut&$1=500&$2=500', '98.00', '110.00', '/details?lid=76'),
(77, '保健', '美化', '红狗RedDog 猫用营养化毛膏 120g/支 ', '安全物理去毛球 补营养 美毛促消化', '96', '1288', 'https://img2.epetbar.com/common/upload/commonfile/2019/010/31/180834_96692.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/common/upload/commonfile/2019/011/04/135230_439933.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190911143835_138590.jpg?x-oss-process=style/cut&$1=500&$2=500', '98.00', '117.60', '/details?lid=77'),
(78, '保健', '美化', '美国麦德氏 IN-KAT 猫咪专用护毛磷虾卵磷脂 65g', '美毛/增毛 比海藻粉适口性好 恢复毛色 少掉毛', '96', '1288', 'https://img2.epetbar.com/goods/sales/20190529095952_580662.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905290100000_331764.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201905290100000_704303.jpg?x-oss-process=style/cut&$1=500&$2=500', '42.00', '52.50', '/details?lid=78'),
(79, '保健', '美化', '德国原装进口俊宝 猫用麦芽毛球营养膏 50g', '添加麦芽纤维成分 适口性佳', '96', '126', 'https://img2.epetbar.com/goods/sales/upload_file_20193132372.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-12/13/15/24e0a8d92366fb21f45f31e174f86953.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2017-12/13/15/2fc27d0be38db9b11f1e28b8cd0fea92.jpg?x-oss-process=style/cut&$1=500&$2=500', '59.00', '142.00', '/details?lid=79'),
(80, '保健', '美化', '谷登GOLDEN 猫用金装优加化毛膏 排毛球120g', '植物草本精华 促进肠胃 排除毛球', '96', '126', 'https://img2.epetbar.com/goods/sales/upload_file_20193213435.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_20193215802.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/upload_file_20193218329.jpg?x-oss-process=style/cut&$1=500&$2=500', '68.00', '81.60', '/details?lid=80'),
(81, '保健', '肠胃', '小宠 猫咪专用益生菌 35g', '针对拉稀便臭/应激 补充有益活菌 改善消化', '96', '126', 'https://img2.epetbar.com/goods/sales/201906010183341_734958.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-03/04/10/080e859d9190392547d18213f2522dff.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/201906010183348_47779.jpg?x-oss-process=style/cut&$1=500&$2=500', '58.00', '69.60', '/details?lid=81'),
(82, '保健', '肠胃', '美国麦德氏 IN-KAT 猫用益生菌 2g*10袋', '迅速改善 肠道不适 应对腹泻/便秘/肠炎等', '96', '126', 'https://img2.epetbar.com/2016-11/16/16/c27fd80cfecc7f83dc8f1e5b85c64178.png?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-10/22/16/629a2a72ce082dc416d6792dd0f9a8f8.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-11/16/16/a5cc8bbebe381e8aa11834eb91be57ec.png?x-oss-process=style/cut&$1=500&$2=500', '52.00', '65.00', '/details?lid=82'),
(83, '保健', '肠胃', '卫仕 猫力肠 复合益生菌片 200片', '益生菌升级版 帮助吸收 缓解便臭 健康肠道 ', '96', '126', 'https://img2.epetbar.com/2018-08/16/15/598b0c7cc21a999a3fe9cbce1705f8cc.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/16/15/61eadfcf466371e9ed6d76d625b95a8b.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2018-08/16/15/10f98a4a297343a1d1323749a01e1b51.jpg?x-oss-process=style/cut&$1=500&$2=500', '68.00', '85.00', '/details?lid=83'),
(84, '保健', '肠胃', '谷登GOLDEN 六种益生菌3gx8袋', '6种有益复合菌种 有助于分解蛋白质', '96', '126', 'https://img2.epetbar.com/goods/sales/20190516142047_591744.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/2016-05/21/10/0e687281f213dd2f58f53e83d119dda0.jpg?x-oss-process=style/cut&$1=500&$2=500', 'https://img2.epetbar.com/goods/sales/20190516142051_325386.jpg?x-oss-process=style/cut&$1=500&$2=500', '59.00', '70.80', '/details?lid=84');

CREATE TABLE `epet_cart` (
  `cid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic1` varchar(128) DEFAULT NULL,
  `price1` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `count` int(11) DEFAULT 1,
  `uid` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




--
-- Indexes for dumped tables
--

--
-- Indexes for table `epet_user`
--
ALTER TABLE `epet_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `eproducts`
--
ALTER TABLE `eproducts`
  ADD PRIMARY KEY (`lid`);


--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `epet_user`
--
ALTER TABLE `epet_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `eproducts`
--
ALTER TABLE `eproducts`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
