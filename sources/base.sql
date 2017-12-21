/*
Navicat MySQL Data Transfer

Source Server         : OS
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : epg

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-12-21 12:44:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `custom_config_list`
-- ----------------------------
DROP TABLE IF EXISTS `custom_config_list`;
CREATE TABLE `custom_config_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `config_desc` varchar(200) DEFAULT NULL,
  `config_key` varchar(50) DEFAULT NULL,
  `config_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_config_list
-- ----------------------------
INSERT INTO `custom_config_list` VALUES ('3', '2017-06-25 16:37:17', '2017-08-27 17:11:12', 'github网址', 'github', 'https://12312414');
INSERT INTO `custom_config_list` VALUES ('7', '2017-06-25 16:42:02', '2017-08-27 17:11:48', 'DEMO', 'china', '123');
INSERT INTO `custom_config_list` VALUES ('8', '2017-06-25 16:43:07', '2017-06-25 16:46:38', 'DEMO', 'DEMO', 'DEMO');
INSERT INTO `custom_config_list` VALUES ('9', '2017-08-27 01:20:34', '2017-08-27 16:26:44', 'DEMO', 'DEMO34', 'DEMO3');

-- ----------------------------
-- Table structure for `hot_city_location`
-- ----------------------------
DROP TABLE IF EXISTS `hot_city_location`;
CREATE TABLE `hot_city_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `n` varchar(50) DEFAULT NULL,
  `pinyin_full` varchar(100) DEFAULT NULL,
  `pinyin_short` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_task_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5052 DEFAULT CHARSET=utf8 COMMENT='城市地区表';

-- ----------------------------
-- Records of hot_city_location
-- ----------------------------
INSERT INTO `hot_city_location` VALUES ('290', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '北京', 'Beijing', 'bj', '190');
INSERT INTO `hot_city_location` VALUES ('291', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '重庆', 'Chongqing', 'cq', '186');
INSERT INTO `hot_city_location` VALUES ('292', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '上海', 'Shanghai', 'sh', '242');
INSERT INTO `hot_city_location` VALUES ('293', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '天津', 'Tianjin', 'tj', '81');
INSERT INTO `hot_city_location` VALUES ('295', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '合肥', 'Hefei', 'hf', '70');
INSERT INTO `hot_city_location` VALUES ('296', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '安庆', 'Anqing', 'aq', '20');
INSERT INTO `hot_city_location` VALUES ('297', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '蚌埠', 'Bengbu', 'bb', '19');
INSERT INTO `hot_city_location` VALUES ('298', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '巢湖', 'Chaohu', 'ch', '3');
INSERT INTO `hot_city_location` VALUES ('299', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '池州', 'Chizhou', 'cz', '6');
INSERT INTO `hot_city_location` VALUES ('300', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '滁州', 'Chuzhou', 'cz', '23');
INSERT INTO `hot_city_location` VALUES ('301', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '阜阳', 'Fuyang', 'fy', '20');
INSERT INTO `hot_city_location` VALUES ('302', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '亳州', 'Bozhou', 'bz', '12');
INSERT INTO `hot_city_location` VALUES ('303', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '淮北', 'Huaibei', 'hb', '8');
INSERT INTO `hot_city_location` VALUES ('304', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '淮南', 'Huainan', 'hn', '11');
INSERT INTO `hot_city_location` VALUES ('305', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '黄山', 'Huangshan', 'hs', '14');
INSERT INTO `hot_city_location` VALUES ('311', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '界首', 'Jieshou', 'js', '1');
INSERT INTO `hot_city_location` VALUES ('312', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '六安', 'luan', 'la', '22');
INSERT INTO `hot_city_location` VALUES ('313', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '马鞍山', 'Maanshan', 'mas', '18');
INSERT INTO `hot_city_location` VALUES ('316', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '桐城', 'Tongcheng', 'tc', '1');
INSERT INTO `hot_city_location` VALUES ('317', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '铜陵', 'Tongling', 'tl', '6');
INSERT INTO `hot_city_location` VALUES ('318', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '宿州', 'Suzhou', 'sz', '12');
INSERT INTO `hot_city_location` VALUES ('320', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '芜湖', 'Wuhu', 'wh', '33');
INSERT INTO `hot_city_location` VALUES ('321', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '宣城', 'Xuancheng', 'xc', '15');
INSERT INTO `hot_city_location` VALUES ('323', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '厦门', 'Xiamen', 'xm', '38');
INSERT INTO `hot_city_location` VALUES ('324', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '长乐', 'Changle', 'cl', '4');
INSERT INTO `hot_city_location` VALUES ('325', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '福安', 'Fuan', 'fa', '2');
INSERT INTO `hot_city_location` VALUES ('326', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '福鼎', 'Fuding', 'fd', '1');
INSERT INTO `hot_city_location` VALUES ('327', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '福清', 'Fuqing', 'fq', '8');
INSERT INTO `hot_city_location` VALUES ('328', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '福州', 'Fuzhou', 'fz', '40');
INSERT INTO `hot_city_location` VALUES ('331', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '晋江', 'Jinjiang', 'jj', '8');
INSERT INTO `hot_city_location` VALUES ('332', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '龙海', 'Longhai', 'lh', '1');
INSERT INTO `hot_city_location` VALUES ('333', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '龙岩', 'Longyan', 'ly', '14');
INSERT INTO `hot_city_location` VALUES ('334', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '南安', 'Nanan', 'na', '4');
INSERT INTO `hot_city_location` VALUES ('335', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '南平', 'Nanping', 'np', '13');
INSERT INTO `hot_city_location` VALUES ('336', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '宁德', 'Ningde', 'nd', '9');
INSERT INTO `hot_city_location` VALUES ('337', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '莆田', 'Putian', 'pt', '15');
INSERT INTO `hot_city_location` VALUES ('338', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '泉州', 'Quanzhou', 'qz', '24');
INSERT INTO `hot_city_location` VALUES ('339', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '三明', 'Sanming', 'sm', '14');
INSERT INTO `hot_city_location` VALUES ('340', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '邵武', 'Shaowu', 'sw', '3');
INSERT INTO `hot_city_location` VALUES ('341', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '石狮', 'Shishi', 'ss', '2');
INSERT INTO `hot_city_location` VALUES ('343', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '永安', 'Yongan', 'ya', '2');
INSERT INTO `hot_city_location` VALUES ('344', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '漳平', 'Zhangping', 'zp', '1');
INSERT INTO `hot_city_location` VALUES ('345', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '漳州', 'Zhangzhou', 'zz', '16');
INSERT INTO `hot_city_location` VALUES ('347', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '兰州', 'Lanzhou', 'lz', '30');
INSERT INTO `hot_city_location` VALUES ('349', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '白银', 'Baiyin', 'by', '9');
INSERT INTO `hot_city_location` VALUES ('350', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '定西', 'Dingxi', 'dx', '5');
INSERT INTO `hot_city_location` VALUES ('352', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '嘉峪关', 'Jiayuguan', 'jyg', '2');
INSERT INTO `hot_city_location` VALUES ('353', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '金昌', 'Jinchang', 'jc', '4');
INSERT INTO `hot_city_location` VALUES ('354', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '酒泉', 'Jiuquan', 'jq', '6');
INSERT INTO `hot_city_location` VALUES ('355', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '陇南', 'Longnan', 'ln', '6');
INSERT INTO `hot_city_location` VALUES ('356', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '临夏', 'Linxia', 'lx', '3');
INSERT INTO `hot_city_location` VALUES ('357', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '甘南', 'Gannan', 'gn', '1');
INSERT INTO `hot_city_location` VALUES ('358', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '平凉', 'Pingliang', 'pl', '9');
INSERT INTO `hot_city_location` VALUES ('359', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '庆阳', 'Qingyang', 'qy', '5');
INSERT INTO `hot_city_location` VALUES ('360', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '天水', 'Tianshui', 'ts', '7');
INSERT INTO `hot_city_location` VALUES ('361', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '武威', 'Wuwei', 'ww', '4');
INSERT INTO `hot_city_location` VALUES ('363', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '张掖', 'Zhangye', 'zy', '3');
INSERT INTO `hot_city_location` VALUES ('365', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '广州', 'Guangzhou', 'gz', '147');
INSERT INTO `hot_city_location` VALUES ('366', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '深圳', 'Shenzhen', 'sz', '212');
INSERT INTO `hot_city_location` VALUES ('367', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '汕头', 'Shantou', 'st', '21');
INSERT INTO `hot_city_location` VALUES ('368', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '珠海', 'Zhuhai', 'zh', '27');
INSERT INTO `hot_city_location` VALUES ('369', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '潮州', 'Chaozhou', 'cz', '9');
INSERT INTO `hot_city_location` VALUES ('370', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '从化', 'Conghua', 'ch', '3');
INSERT INTO `hot_city_location` VALUES ('371', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '东莞', 'Dongguan', 'dg', '106');
INSERT INTO `hot_city_location` VALUES ('372', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '恩平', 'Enping', 'ep', '1');
INSERT INTO `hot_city_location` VALUES ('373', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '佛山', 'Foshan', 'fs', '93');
INSERT INTO `hot_city_location` VALUES ('375', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '高州', 'Gaozhou', 'gz', '3');
INSERT INTO `hot_city_location` VALUES ('376', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '鹤山', 'Heshan', 'hs', '3');
INSERT INTO `hot_city_location` VALUES ('377', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '河源', 'Heyuan', 'hy', '17');
INSERT INTO `hot_city_location` VALUES ('378', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '化州', 'Huazhou', 'hz', '3');
INSERT INTO `hot_city_location` VALUES ('379', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '惠州', 'Huizhou', 'hz', '47');
INSERT INTO `hot_city_location` VALUES ('380', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '江门', 'Jiangmen', 'jm', '33');
INSERT INTO `hot_city_location` VALUES ('381', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '揭阳', 'Jieyang', 'jy', '15');
INSERT INTO `hot_city_location` VALUES ('385', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '廉江', 'Lianjiang', 'lj', '4');
INSERT INTO `hot_city_location` VALUES ('387', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '陆丰', 'Lufeng', 'lf', '1');
INSERT INTO `hot_city_location` VALUES ('389', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '茂名', 'Maoming', 'mm', '11');
INSERT INTO `hot_city_location` VALUES ('390', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '梅州', 'Meizhou', 'mz', '15');
INSERT INTO `hot_city_location` VALUES ('394', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '清远', 'Qingyuan', 'qy', '9');
INSERT INTO `hot_city_location` VALUES ('395', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '汕尾', 'Shanwei', 'sw', '8');
INSERT INTO `hot_city_location` VALUES ('396', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '韶关', 'Shaoguan', 'sg', '18');
INSERT INTO `hot_city_location` VALUES ('397', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '四会', 'Sihui', 'sh', '1');
INSERT INTO `hot_city_location` VALUES ('399', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '吴川', 'Wuchuan', 'wc', '2');
INSERT INTO `hot_city_location` VALUES ('400', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '兴宁', 'Xingning', 'xn', '1');
INSERT INTO `hot_city_location` VALUES ('401', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '信宜', 'Xinyi', 'xy', '2');
INSERT INTO `hot_city_location` VALUES ('403', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '阳江', 'Yangjiang', 'yj', '14');
INSERT INTO `hot_city_location` VALUES ('404', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '英德', 'Yingde', 'yd', '2');
INSERT INTO `hot_city_location` VALUES ('405', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '云浮', 'Yunfu', 'yf', '9');
INSERT INTO `hot_city_location` VALUES ('407', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '湛江', 'Zhanjiang', 'zj', '20');
INSERT INTO `hot_city_location` VALUES ('408', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '肇庆', 'Zhaoqing', 'zq', '16');
INSERT INTO `hot_city_location` VALUES ('409', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '中山', 'Zhongshan', 'zs', '46');
INSERT INTO `hot_city_location` VALUES ('411', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '南宁', 'Nanning', 'nn', '35');
INSERT INTO `hot_city_location` VALUES ('412', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '百色', 'Baise', 'bs', '9');
INSERT INTO `hot_city_location` VALUES ('413', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '北海', 'Beihai', 'bh', '8');
INSERT INTO `hot_city_location` VALUES ('414', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '北流', 'Beiliu', 'bl', '3');
INSERT INTO `hot_city_location` VALUES ('415', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '岑溪', 'Cenxi', 'cx', '1');
INSERT INTO `hot_city_location` VALUES ('416', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '崇左', 'Chongzuo', 'cz', '5');
INSERT INTO `hot_city_location` VALUES ('417', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '东兴', 'Dongxing', 'dx', '2');
INSERT INTO `hot_city_location` VALUES ('418', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '防城港', 'Fangchenggang', 'fcg', '8');
INSERT INTO `hot_city_location` VALUES ('419', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '贵港', 'Guigang', 'gg', '3');
INSERT INTO `hot_city_location` VALUES ('420', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '桂林', 'Guilin', 'gl', '25');
INSERT INTO `hot_city_location` VALUES ('422', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '贺州', 'Hezhou', 'hz', '3');
INSERT INTO `hot_city_location` VALUES ('423', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '河池', 'Hechi', 'hc', '4');
INSERT INTO `hot_city_location` VALUES ('424', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '来宾', 'Laibin', 'lb', '3');
INSERT INTO `hot_city_location` VALUES ('425', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '柳州', 'Liuzhou', 'lz', '17');
INSERT INTO `hot_city_location` VALUES ('426', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '钦州', 'Qinzhou', 'qz', '6');
INSERT INTO `hot_city_location` VALUES ('428', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '梧州', 'Wuzhou', 'wz', '9');
INSERT INTO `hot_city_location` VALUES ('430', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '宜州', 'Yizhou', 'yz', '2');
INSERT INTO `hot_city_location` VALUES ('431', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '玉林', 'Yulin', 'yl', '11');
INSERT INTO `hot_city_location` VALUES ('433', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '贵阳', 'Guiyang', 'gy', '31');
INSERT INTO `hot_city_location` VALUES ('434', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '安顺', 'Anshun', 'as', '12');
INSERT INTO `hot_city_location` VALUES ('435', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '毕节', 'Bijie', 'bj', '7');
INSERT INTO `hot_city_location` VALUES ('439', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '凯里', 'Kaili', 'kl', '4');
INSERT INTO `hot_city_location` VALUES ('440', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '六盘水', 'Liupanshui', 'lps', '7');
INSERT INTO `hot_city_location` VALUES ('441', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '黔西南州', 'Qianxinan', 'qxn', '4');
INSERT INTO `hot_city_location` VALUES ('442', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '黔南州', 'Qiannan', 'qn', '9');
INSERT INTO `hot_city_location` VALUES ('443', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '清镇', 'Qingzhen', 'qz', '1');
INSERT INTO `hot_city_location` VALUES ('444', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '仁怀', 'Renhuai', 'rh', '1');
INSERT INTO `hot_city_location` VALUES ('445', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '铜仁', 'Tongren', 'tr', '6');
INSERT INTO `hot_city_location` VALUES ('446', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '黔东南', 'Qiandongnan', 'qdn', '3');
INSERT INTO `hot_city_location` VALUES ('447', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '兴义', 'Xingyi', 'xy', '5');
INSERT INTO `hot_city_location` VALUES ('448', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '遵义', 'Zunyi', 'zy', '23');
INSERT INTO `hot_city_location` VALUES ('450', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '海口', 'Haikou', 'hk', '26');
INSERT INTO `hot_city_location` VALUES ('451', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '三亚', 'Sanya', 'sy', '14');
INSERT INTO `hot_city_location` VALUES ('453', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '石家庄', 'Shijiazhuang', 'sjz', '52');
INSERT INTO `hot_city_location` VALUES ('455', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '保定', 'Baoding', 'bd', '20');
INSERT INTO `hot_city_location` VALUES ('456', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '霸州', 'Bazhou', 'bz', '2');
INSERT INTO `hot_city_location` VALUES ('457', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '泊头', 'Botou', 'bt', '1');
INSERT INTO `hot_city_location` VALUES ('458', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '沧州', 'Cangzhou', 'cz', '13');
INSERT INTO `hot_city_location` VALUES ('459', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '承德', 'Chengde', 'cd', '10');
INSERT INTO `hot_city_location` VALUES ('460', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '定州', 'Dingzhou', 'dz', '4');
INSERT INTO `hot_city_location` VALUES ('462', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '高碑店', 'Gaobeidian', 'gbd', '2');
INSERT INTO `hot_city_location` VALUES ('464', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '邯郸', 'Handan', 'hd', '27');
INSERT INTO `hot_city_location` VALUES ('465', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '河间', 'Hejian', 'hj', '1');
INSERT INTO `hot_city_location` VALUES ('466', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '衡水', 'Hengshui', 'hs', '9');
INSERT INTO `hot_city_location` VALUES ('470', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '廊坊', 'Langfang', 'lf', '14');
INSERT INTO `hot_city_location` VALUES ('474', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '迁安', 'Qianan', 'qa', '2');
INSERT INTO `hot_city_location` VALUES ('475', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '秦皇岛', 'Qinhuangdao', 'qhd', '11');
INSERT INTO `hot_city_location` VALUES ('476', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '任丘', 'Renqiu', 'rq', '2');
INSERT INTO `hot_city_location` VALUES ('477', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '三河', 'Sanhe', 'sh', '6');
INSERT INTO `hot_city_location` VALUES ('478', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '沙河', 'Shahe', 'sh', '3');
INSERT INTO `hot_city_location` VALUES ('480', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '唐山', 'Tangshan', 'ts', '23');
INSERT INTO `hot_city_location` VALUES ('481', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '武安', 'Wuan', 'wa', '2');
INSERT INTO `hot_city_location` VALUES ('482', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '邢台', 'Xingtai', 'xt', '10');
INSERT INTO `hot_city_location` VALUES ('483', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '辛集', 'Xinji', 'xj', '1');
INSERT INTO `hot_city_location` VALUES ('485', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '张家口', 'Zhangjiakou', 'zjk', '18');
INSERT INTO `hot_city_location` VALUES ('486', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '涿州', 'Zhuozhou', 'zz', '4');
INSERT INTO `hot_city_location` VALUES ('487', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '遵化', 'Zunhua', 'zh', '2');
INSERT INTO `hot_city_location` VALUES ('489', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '郑州', 'Zhengzhou', 'zz', '69');
INSERT INTO `hot_city_location` VALUES ('490', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '安阳', 'Anyang', 'ay', '14');
INSERT INTO `hot_city_location` VALUES ('491', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '长葛', 'Changge', 'cg', '2');
INSERT INTO `hot_city_location` VALUES ('493', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '邓州', 'Dengzhou', 'dz', '1');
INSERT INTO `hot_city_location` VALUES ('494', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '巩义', 'Gongyi', 'gy', '2');
INSERT INTO `hot_city_location` VALUES ('495', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '鹤壁', 'Hebi', 'hb', '6');
INSERT INTO `hot_city_location` VALUES ('496', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '辉县', 'Huixian', 'hx', '1');
INSERT INTO `hot_city_location` VALUES ('497', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '焦作', 'Jiaozuo', 'jz', '16');
INSERT INTO `hot_city_location` VALUES ('498', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '济源', 'Jiyuan', 'jy', '5');
INSERT INTO `hot_city_location` VALUES ('499', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '开封', 'Kaifeng', 'kf', '14');
INSERT INTO `hot_city_location` VALUES ('500', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '林州', 'Linzhou', 'lz', '1');
INSERT INTO `hot_city_location` VALUES ('502', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '漯河', 'Luohe', 'lh', '12');
INSERT INTO `hot_city_location` VALUES ('503', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '洛阳', 'Luoyang', 'ly', '28');
INSERT INTO `hot_city_location` VALUES ('504', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '孟州', 'Mengzhou', 'mz', '1');
INSERT INTO `hot_city_location` VALUES ('505', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '南阳', 'Nanyang', 'ny', '27');
INSERT INTO `hot_city_location` VALUES ('506', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '平顶山', 'Pingdingshan', 'pds', '20');
INSERT INTO `hot_city_location` VALUES ('507', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '濮阳', 'Puyang', 'py', '12');
INSERT INTO `hot_city_location` VALUES ('509', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '汝州', 'Ruzhou', 'rz', '1');
INSERT INTO `hot_city_location` VALUES ('510', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '三门峡', 'Sanmenxia', 'smx', '7');
INSERT INTO `hot_city_location` VALUES ('511', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '商丘', 'Shangqiu', 'sq', '22');
INSERT INTO `hot_city_location` VALUES ('514', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '项城', 'Xiangcheng', 'xc', '3');
INSERT INTO `hot_city_location` VALUES ('515', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '信阳', 'Xinyang', 'xy', '18');
INSERT INTO `hot_city_location` VALUES ('516', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '新密', 'Xinmi', 'xm', '1');
INSERT INTO `hot_city_location` VALUES ('517', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '新乡', 'Xinxiang', 'xx', '24');
INSERT INTO `hot_city_location` VALUES ('518', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '新郑', 'Xinzheng', 'xz', '2');
INSERT INTO `hot_city_location` VALUES ('520', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '许昌', 'Xuchang', 'xc', '9');
INSERT INTO `hot_city_location` VALUES ('523', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '永城', 'Yongcheng', 'yc', '1');
INSERT INTO `hot_city_location` VALUES ('524', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '禹州', 'Yuzhou', 'yz', '3');
INSERT INTO `hot_city_location` VALUES ('525', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '周口', 'Zhoukou', 'zk', '20');
INSERT INTO `hot_city_location` VALUES ('526', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '驻马店', 'Zhumadian', 'zmd', '13');
INSERT INTO `hot_city_location` VALUES ('528', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '哈尔滨', 'Harbin', 'heb', '43');
INSERT INTO `hot_city_location` VALUES ('530', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '安达', 'Anda', 'ad', '3');
INSERT INTO `hot_city_location` VALUES ('531', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '北安', 'Beian', 'ba', '2');
INSERT INTO `hot_city_location` VALUES ('533', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '大庆', 'Daqing', 'dq', '28');
INSERT INTO `hot_city_location` VALUES ('534', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '大兴安岭', 'Daxinganling', 'dxal', '3');
INSERT INTO `hot_city_location` VALUES ('536', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '鹤岗', 'Hegang', 'hg', '5');
INSERT INTO `hot_city_location` VALUES ('537', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '黑河', 'Heihe', 'hh', '4');
INSERT INTO `hot_city_location` VALUES ('539', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '虎林', 'Hulin', 'hl', '1');
INSERT INTO `hot_city_location` VALUES ('540', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '佳木斯', 'Jiamusi', 'jms', '10');
INSERT INTO `hot_city_location` VALUES ('541', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '鸡西', 'Jixi', 'jx', '2');
INSERT INTO `hot_city_location` VALUES ('544', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '牡丹江', 'Mudanjiang', 'mdj', '13');
INSERT INTO `hot_city_location` VALUES ('545', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '讷河', 'Nehe', 'nh', '1');
INSERT INTO `hot_city_location` VALUES ('547', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '齐齐哈尔', 'Qiqihar', 'qqhe', '11');
INSERT INTO `hot_city_location` VALUES ('548', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '七台河', 'Qitaihe', 'qth', '3');
INSERT INTO `hot_city_location` VALUES ('549', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '尚志', 'Shangzhi', 'sz', '2');
INSERT INTO `hot_city_location` VALUES ('550', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '双城', 'Shuangcheng', 'sc', '2');
INSERT INTO `hot_city_location` VALUES ('551', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '双鸭山', 'Shuangyashan', 'sys', '8');
INSERT INTO `hot_city_location` VALUES ('553', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '绥化', 'Suihua', 'sh', '11');
INSERT INTO `hot_city_location` VALUES ('554', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '铁力', 'Tieli', 'tl', '1');
INSERT INTO `hot_city_location` VALUES ('556', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '五常', 'Wuchang', 'wc', '2');
INSERT INTO `hot_city_location` VALUES ('557', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '五大连池', 'Wudalianchi', 'wdlc', '1');
INSERT INTO `hot_city_location` VALUES ('558', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '伊春', 'Yichun', 'yc', '1');
INSERT INTO `hot_city_location` VALUES ('561', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '武汉', 'Wuhan', 'wh', '99');
INSERT INTO `hot_city_location` VALUES ('563', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '赤壁', 'Chibi', 'cb', '3');
INSERT INTO `hot_city_location` VALUES ('564', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '丹江口', 'Danjiangkou', 'djk', '2');
INSERT INTO `hot_city_location` VALUES ('565', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '大冶', 'Daye', 'dy', '1');
INSERT INTO `hot_city_location` VALUES ('566', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '当阳', 'Dangyang', 'dy', '2');
INSERT INTO `hot_city_location` VALUES ('567', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '恩施', 'Enshi', 'es', '11');
INSERT INTO `hot_city_location` VALUES ('568', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '鄂州', 'Ezhou', 'ez', '5');
INSERT INTO `hot_city_location` VALUES ('569', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '广水', 'Guangshui', 'gs', '4');
INSERT INTO `hot_city_location` VALUES ('571', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '洪湖', 'Honghu', 'hh', '3');
INSERT INTO `hot_city_location` VALUES ('572', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '黄冈', 'Huanggang', 'hg', '18');
INSERT INTO `hot_city_location` VALUES ('573', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '黄石', 'Huangshi', 'hs', '12');
INSERT INTO `hot_city_location` VALUES ('574', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '荆门', 'Jingmen', 'jm', '14');
INSERT INTO `hot_city_location` VALUES ('575', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '荆州', 'Jingzhou', 'jz', '15');
INSERT INTO `hot_city_location` VALUES ('576', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '老河口', 'Laohekou', 'lhk', '2');
INSERT INTO `hot_city_location` VALUES ('577', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '利川', 'Lichuan', 'lc', '2');
INSERT INTO `hot_city_location` VALUES ('578', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '麻城', 'Macheng', 'mc', '3');
INSERT INTO `hot_city_location` VALUES ('579', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '潜江', 'Qianjiang', 'qj', '5');
INSERT INTO `hot_city_location` VALUES ('581', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '十堰', 'Shiyan', 'sy', '16');
INSERT INTO `hot_city_location` VALUES ('582', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '松滋', 'Songzi', 'sz', '3');
INSERT INTO `hot_city_location` VALUES ('583', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '随州', 'Suizhou', 'sz', '4');
INSERT INTO `hot_city_location` VALUES ('584', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '天门', 'Tianmen', 'tm', '3');
INSERT INTO `hot_city_location` VALUES ('586', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '襄阳', 'Xiangyang', 'xy', '19');
INSERT INTO `hot_city_location` VALUES ('587', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '咸宁', 'Xianning', 'xn', '14');
INSERT INTO `hot_city_location` VALUES ('588', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '仙桃', 'Xiantao', 'xt', '9');
INSERT INTO `hot_city_location` VALUES ('589', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '孝感', 'Xiaogan', 'xg', '14');
INSERT INTO `hot_city_location` VALUES ('590', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '宜昌', 'Yichang', 'yc', '12');
INSERT INTO `hot_city_location` VALUES ('592', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '宜都', 'Yidu', 'yd', '2');
INSERT INTO `hot_city_location` VALUES ('593', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '应城', 'Yingcheng', 'yc', '1');
INSERT INTO `hot_city_location` VALUES ('595', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '枝江', 'Zhijiang', 'zj', '2');
INSERT INTO `hot_city_location` VALUES ('598', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '长沙', 'Changsha', 'cs', '70');
INSERT INTO `hot_city_location` VALUES ('599', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '郴州', 'Chenzhou', 'cz', '25');
INSERT INTO `hot_city_location` VALUES ('600', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '常德', 'Changde', 'cd', '31');
INSERT INTO `hot_city_location` VALUES ('601', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '常宁', 'Changning', 'cn', '1');
INSERT INTO `hot_city_location` VALUES ('602', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '衡阳', 'Hengyang', 'hy', '23');
INSERT INTO `hot_city_location` VALUES ('604', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '怀化', 'Huaihua', 'hh', '19');
INSERT INTO `hot_city_location` VALUES ('606', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '吉首', 'Jishou', 'js', '2');
INSERT INTO `hot_city_location` VALUES ('607', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '耒阳', 'Leiyang', 'ly', '3');
INSERT INTO `hot_city_location` VALUES ('608', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '冷水江', 'Lengshuijiang', 'lsj', '2');
INSERT INTO `hot_city_location` VALUES ('609', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '涟源', 'Lianyuan', 'ly', '2');
INSERT INTO `hot_city_location` VALUES ('610', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '醴陵', 'Liling', 'll', '2');
INSERT INTO `hot_city_location` VALUES ('611', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '临湘', 'Linxiang', 'lx', '1');
INSERT INTO `hot_city_location` VALUES ('612', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '浏阳', 'Liuyang', 'ly', '9');
INSERT INTO `hot_city_location` VALUES ('613', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '娄底', 'Loudi', 'ld', '13');
INSERT INTO `hot_city_location` VALUES ('614', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '汨罗', 'Miluo', 'ml', '1');
INSERT INTO `hot_city_location` VALUES ('616', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '沅江', 'Yuanjiang', 'yj', '1');
INSERT INTO `hot_city_location` VALUES ('617', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '邵阳', 'Shaoyang', 'sy', '11');
INSERT INTO `hot_city_location` VALUES ('618', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '湘潭', 'Xiangtan', 'xt', '19');
INSERT INTO `hot_city_location` VALUES ('619', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '湘西', 'Xiangxi', 'xx', '9');
INSERT INTO `hot_city_location` VALUES ('620', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '湘乡', 'Xiangxiang', 'xx', '3');
INSERT INTO `hot_city_location` VALUES ('621', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '益阳', 'Yiyang', 'yy', '14');
INSERT INTO `hot_city_location` VALUES ('622', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '永州', 'Yongzhou', 'yz', '14');
INSERT INTO `hot_city_location` VALUES ('623', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '岳阳', 'Yueyang', 'yy', '16');
INSERT INTO `hot_city_location` VALUES ('624', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '张家界', 'Zhangjiajie', 'zgj', '5');
INSERT INTO `hot_city_location` VALUES ('625', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '株洲', 'Zhuzhou', 'zz', '20');
INSERT INTO `hot_city_location` VALUES ('628', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '南京', 'Nanjing', 'nj', '72');
INSERT INTO `hot_city_location` VALUES ('629', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '常熟', 'Changshu', 'cs', '13');
INSERT INTO `hot_city_location` VALUES ('630', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '常州', 'Changzhou', 'cz', '35');
INSERT INTO `hot_city_location` VALUES ('631', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '大丰', 'Dafeng', 'df', '3');
INSERT INTO `hot_city_location` VALUES ('632', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '丹阳', 'Danyang', 'dy', '8');
INSERT INTO `hot_city_location` VALUES ('633', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '东台', 'Dongtai', 'dt', '2');
INSERT INTO `hot_city_location` VALUES ('634', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '高邮', 'Gaoyou', 'gy', '3');
INSERT INTO `hot_city_location` VALUES ('635', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '海门', 'Haimen', 'hm', '8');
INSERT INTO `hot_city_location` VALUES ('636', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '淮安', 'Huaian', 'ha', '28');
INSERT INTO `hot_city_location` VALUES ('639', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '江都', 'Jiangdu', 'jd', '4');
INSERT INTO `hot_city_location` VALUES ('640', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '姜堰', 'Jiangyan', 'jy', '2');
INSERT INTO `hot_city_location` VALUES ('641', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '江阴', 'Jiangyin', 'jy', '16');
INSERT INTO `hot_city_location` VALUES ('642', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '靖江', 'Jingjiang', 'jj', '8');
INSERT INTO `hot_city_location` VALUES ('643', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '金坛', 'Jintan', 'jt', '3');
INSERT INTO `hot_city_location` VALUES ('644', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '句容', 'Jurong', 'jr', '5');
INSERT INTO `hot_city_location` VALUES ('645', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '昆山', 'Kunshan', 'ks', '17');
INSERT INTO `hot_city_location` VALUES ('646', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '连云港', 'Lianyungang', 'lyg', '15');
INSERT INTO `hot_city_location` VALUES ('647', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '溧阳', 'Liyang', 'ly', '5');
INSERT INTO `hot_city_location` VALUES ('649', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '南通', 'Nantong', 'nt', '35');
INSERT INTO `hot_city_location` VALUES ('651', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '邳州', 'Pizhou', 'pz', '3');
INSERT INTO `hot_city_location` VALUES ('652', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '启东', 'Qidong', 'qd', '10');
INSERT INTO `hot_city_location` VALUES ('653', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '如皋', 'Rugao', 'rg', '7');
INSERT INTO `hot_city_location` VALUES ('654', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '宿迁', 'Suqian', 'sq', '23');
INSERT INTO `hot_city_location` VALUES ('655', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '太仓', 'Taicang', 'tc', '6');
INSERT INTO `hot_city_location` VALUES ('656', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '泰兴', 'Taixing', 'tx', '6');
INSERT INTO `hot_city_location` VALUES ('657', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '泰州', 'Taizhou', 'tz', '16');
INSERT INTO `hot_city_location` VALUES ('660', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '吴江', 'Wujiang', 'wj', '8');
INSERT INTO `hot_city_location` VALUES ('662', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '无锡', 'Wuxi', 'wx', '54');
INSERT INTO `hot_city_location` VALUES ('663', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '兴化', 'Xinghua', 'xh', '4');
INSERT INTO `hot_city_location` VALUES ('664', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '徐州', 'Xuzhou', 'xz', '29');
INSERT INTO `hot_city_location` VALUES ('665', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '盐城', 'Yancheng', 'yc', '29');
INSERT INTO `hot_city_location` VALUES ('666', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '扬中', 'Yangzhong', 'yz', '4');
INSERT INTO `hot_city_location` VALUES ('667', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '扬州', 'Yangzhou', 'yz', '21');
INSERT INTO `hot_city_location` VALUES ('668', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '宜兴', 'Yixing', 'yx', '10');
INSERT INTO `hot_city_location` VALUES ('669', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '仪征', 'Yizheng', 'yz', '3');
INSERT INTO `hot_city_location` VALUES ('670', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '张家港', 'Zhangjiagang', 'zjg', '16');
INSERT INTO `hot_city_location` VALUES ('671', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '镇江', 'Zhenjiang', 'zj', '15');
INSERT INTO `hot_city_location` VALUES ('674', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '南昌', 'Nanchang', 'nc', '42');
INSERT INTO `hot_city_location` VALUES ('675', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '德兴', 'Dexing', 'dx', '1');
INSERT INTO `hot_city_location` VALUES ('676', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '丰城', 'Fengcheng', 'fc', '4');
INSERT INTO `hot_city_location` VALUES ('677', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '赣州', 'Ganzhou', 'gz', '38');
INSERT INTO `hot_city_location` VALUES ('678', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '高安', 'Gaoan', 'ga', '3');
INSERT INTO `hot_city_location` VALUES ('679', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '贵溪', 'Guixi', 'gx', '4');
INSERT INTO `hot_city_location` VALUES ('680', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '九江', 'Jiujiang', 'jj', '30');
INSERT INTO `hot_city_location` VALUES ('681', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '景德镇', 'Jingdezhen', 'jdz', '7');
INSERT INTO `hot_city_location` VALUES ('682', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '吉安', 'Jian', 'ja', '19');
INSERT INTO `hot_city_location` VALUES ('684', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '乐平', 'Leping', 'lp', '2');
INSERT INTO `hot_city_location` VALUES ('686', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '瑞昌', 'Ruichang', 'rc', '1');
INSERT INTO `hot_city_location` VALUES ('687', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '瑞金', 'Ruijin', 'rj', '2');
INSERT INTO `hot_city_location` VALUES ('688', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '上饶', 'Shangrao', 'sr', '30');
INSERT INTO `hot_city_location` VALUES ('689', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '新余', 'Xinyu', 'xy', '11');
INSERT INTO `hot_city_location` VALUES ('690', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '鹰潭', 'Yingtan', 'yt', '6');
INSERT INTO `hot_city_location` VALUES ('691', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '樟树', 'Zhangshu', 'zs', '3');
INSERT INTO `hot_city_location` VALUES ('693', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '长春', 'Changchun', 'cc', '44');
INSERT INTO `hot_city_location` VALUES ('694', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '白城', 'Baicheng', 'bc', '4');
INSERT INTO `hot_city_location` VALUES ('695', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '白山', 'Baishan', 'bs', '8');
INSERT INTO `hot_city_location` VALUES ('697', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '德惠', 'Dehui', 'dh', '1');
INSERT INTO `hot_city_location` VALUES ('698', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '敦化', 'Dunhua', 'dh', '5');
INSERT INTO `hot_city_location` VALUES ('699', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '公主岭', 'Gongzhuling', 'gzl', '4');
INSERT INTO `hot_city_location` VALUES ('701', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '桦甸', 'Huadian', 'hd', '3');
INSERT INTO `hot_city_location` VALUES ('702', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '珲春', 'Huichun', 'hc', '4');
INSERT INTO `hot_city_location` VALUES ('703', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '吉林市', 'Jilin', 'jls', '16');
INSERT INTO `hot_city_location` VALUES ('704', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '蛟河', 'Jiaohe', 'jh', '1');
INSERT INTO `hot_city_location` VALUES ('706', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '辽源', 'Liaoyuan', 'ly', '6');
INSERT INTO `hot_city_location` VALUES ('708', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '龙井', 'Longjing', 'lj', '1');
INSERT INTO `hot_city_location` VALUES ('709', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '梅河口', 'Meihekou', 'mhk', '3');
INSERT INTO `hot_city_location` VALUES ('710', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '磐石', 'Panshi', 'pd', '1');
INSERT INTO `hot_city_location` VALUES ('711', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '双辽', 'Shuangliao', 'sl', '3');
INSERT INTO `hot_city_location` VALUES ('713', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '四平', 'Siping', 'sp', '10');
INSERT INTO `hot_city_location` VALUES ('714', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '松原', 'Songyuan', 'sy', '9');
INSERT INTO `hot_city_location` VALUES ('715', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '洮南', 'Taonan', 'tn', '2');
INSERT INTO `hot_city_location` VALUES ('716', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '通化', 'Tonghua', 'th', '11');
INSERT INTO `hot_city_location` VALUES ('717', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '图门', 'Tumen', 'tm', '1');
INSERT INTO `hot_city_location` VALUES ('718', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '延边', 'Yanbian', 'yb', '6');
INSERT INTO `hot_city_location` VALUES ('719', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '延吉', 'Yanji', 'yj', '3');
INSERT INTO `hot_city_location` VALUES ('722', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '沈阳', 'Shenyang', 'sy', '63');
INSERT INTO `hot_city_location` VALUES ('724', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '鞍山', 'Anshan', 'as', '13');
INSERT INTO `hot_city_location` VALUES ('727', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '本溪', 'Benxi', 'bx', '6');
INSERT INTO `hot_city_location` VALUES ('728', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '朝阳', 'Chaoyang', 'cy', '9');
INSERT INTO `hot_city_location` VALUES ('729', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '大连', 'Dalian', 'dl', '45');
INSERT INTO `hot_city_location` VALUES ('730', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '丹东', 'Dandong', 'dd', '8');
INSERT INTO `hot_city_location` VALUES ('731', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '大石桥', 'Dashiqiao', 'ddq', '2');
INSERT INTO `hot_city_location` VALUES ('732', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '灯塔', 'Dengta', 'dd', '1');
INSERT INTO `hot_city_location` VALUES ('733', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '调兵山', 'Diaobingshan', 'dbs', '2');
INSERT INTO `hot_city_location` VALUES ('734', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '东港', 'Donggang', 'dg', '2');
INSERT INTO `hot_city_location` VALUES ('735', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '抚顺', 'Fushun', 'fs', '10');
INSERT INTO `hot_city_location` VALUES ('736', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '阜新', 'Fuxin', 'fx', '7');
INSERT INTO `hot_city_location` VALUES ('737', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '盖州', 'Gaizhou', 'gz', '3');
INSERT INTO `hot_city_location` VALUES ('738', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '海城', 'Haicheng', 'hc', '2');
INSERT INTO `hot_city_location` VALUES ('739', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '葫芦岛', 'Huludao', 'hld', '11');
INSERT INTO `hot_city_location` VALUES ('740', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '开原', 'Kaiyuan', 'ky', '2');
INSERT INTO `hot_city_location` VALUES ('741', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '辽阳', 'Liaoyang', 'ly', '8');
INSERT INTO `hot_city_location` VALUES ('744', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '盘锦', 'Panjin', 'pj', '11');
INSERT INTO `hot_city_location` VALUES ('745', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '普兰店', 'Pulandian', 'pld', '2');
INSERT INTO `hot_city_location` VALUES ('746', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '铁岭', 'Tieling', 'tl', '6');
INSERT INTO `hot_city_location` VALUES ('747', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '瓦房店', 'Wafangdian', 'wfd', '3');
INSERT INTO `hot_city_location` VALUES ('749', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '兴城', 'Xingcheng', 'xc', '1');
INSERT INTO `hot_city_location` VALUES ('750', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '营口', 'Yingkou', 'yk', '13');
INSERT INTO `hot_city_location` VALUES ('751', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '庄河', 'Zhuanghe', 'zh', '2');
INSERT INTO `hot_city_location` VALUES ('753', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '呼和浩特', 'Hohhot', 'hhht', '24');
INSERT INTO `hot_city_location` VALUES ('756', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '包头', 'Baotou', 'bt', '17');
INSERT INTO `hot_city_location` VALUES ('757', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '巴彦淖尔', 'Bayannaoer', 'byze', '7');
INSERT INTO `hot_city_location` VALUES ('758', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '赤峰', 'Chifeng', 'cf', '16');
INSERT INTO `hot_city_location` VALUES ('759', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '鄂尔多斯', 'Eerduosi', 'eeds', '16');
INSERT INTO `hot_city_location` VALUES ('761', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '二连浩特', 'Elianhot', 'elht', '1');
INSERT INTO `hot_city_location` VALUES ('764', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '呼伦贝尔', 'Hulun Buir', 'hlbe', '11');
INSERT INTO `hot_city_location` VALUES ('766', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '满洲里', 'Manzhouli', 'mzl', '5');
INSERT INTO `hot_city_location` VALUES ('767', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '通辽', 'Tongliao', 'tl', '9');
INSERT INTO `hot_city_location` VALUES ('768', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '乌海', 'Wuhai', 'wh', '5');
INSERT INTO `hot_city_location` VALUES ('769', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '乌兰察布', 'Wulanchabu', 'wlcb', '5');
INSERT INTO `hot_city_location` VALUES ('770', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '乌兰浩特', 'Wulanhot', 'wlht', '6');
INSERT INTO `hot_city_location` VALUES ('771', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '锡林郭勒', 'Xilinguole', 'xlgl', '2');
INSERT INTO `hot_city_location` VALUES ('772', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '锡林浩特', 'Xilinhot', 'xlht', '4');
INSERT INTO `hot_city_location` VALUES ('777', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '银川', 'Yinchuan', 'yc', '24');
INSERT INTO `hot_city_location` VALUES ('778', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '固原', 'Guyuan', 'gy', '2');
INSERT INTO `hot_city_location` VALUES ('781', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '石嘴山', 'Shizuishan', 'szs', '4');
INSERT INTO `hot_city_location` VALUES ('782', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '吴忠', 'Wuzhong', 'wz', '3');
INSERT INTO `hot_city_location` VALUES ('783', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '中卫', 'Zhongwei', 'zw', '3');
INSERT INTO `hot_city_location` VALUES ('785', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '西宁', 'Xining', 'xn', '14');
INSERT INTO `hot_city_location` VALUES ('787', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '格尔木', 'Geermu', 'gem', '2');
INSERT INTO `hot_city_location` VALUES ('791', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '西安', 'Xian', 'xa', '84');
INSERT INTO `hot_city_location` VALUES ('792', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '安康', 'Ankang', 'ak', '10');
INSERT INTO `hot_city_location` VALUES ('793', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '宝鸡', 'Baoji', 'bj', '18');
INSERT INTO `hot_city_location` VALUES ('796', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '汉中', 'Hanzhong', 'hz', '11');
INSERT INTO `hot_city_location` VALUES ('797', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '华阴', 'Huayin', 'hy', '1');
INSERT INTO `hot_city_location` VALUES ('798', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '商洛', 'Shangluo', 'sl', '9');
INSERT INTO `hot_city_location` VALUES ('799', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '铜川', 'Tongchuan', 'tc', '4');
INSERT INTO `hot_city_location` VALUES ('800', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '渭南', 'Weinan', 'wn', '17');
INSERT INTO `hot_city_location` VALUES ('801', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '咸阳', 'Xianyang', 'xy', '19');
INSERT INTO `hot_city_location` VALUES ('803', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '延安', 'Yanan', 'ya', '21');
INSERT INTO `hot_city_location` VALUES ('805', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '济南', 'Jinan', 'jn', '34');
INSERT INTO `hot_city_location` VALUES ('807', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '昌邑', 'Changyi', 'cy', '3');
INSERT INTO `hot_city_location` VALUES ('808', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '德州', 'Dezhou', 'dz', '15');
INSERT INTO `hot_city_location` VALUES ('809', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '东营', 'Dongying', 'dy', '15');
INSERT INTO `hot_city_location` VALUES ('810', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '肥城', 'Feicheng', 'fc', '2');
INSERT INTO `hot_city_location` VALUES ('811', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '高密', 'Gaomi', 'gm', '2');
INSERT INTO `hot_city_location` VALUES ('813', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '菏泽', 'Heze', 'hz', '18');
INSERT INTO `hot_city_location` VALUES ('816', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '胶州', 'Jiaozhou', 'jz', '2');
INSERT INTO `hot_city_location` VALUES ('817', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '即墨', 'Jimo', 'jm', '6');
INSERT INTO `hot_city_location` VALUES ('818', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '济宁', 'Jining', 'jn', '18');
INSERT INTO `hot_city_location` VALUES ('819', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '莱西', 'Laixi', 'lx', '1');
INSERT INTO `hot_city_location` VALUES ('820', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '莱芜', 'Laiwu', 'lw', '4');
INSERT INTO `hot_city_location` VALUES ('821', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '莱阳', 'Laiyang', 'ly', '3');
INSERT INTO `hot_city_location` VALUES ('822', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '莱州', 'Laizhou', 'lz', '2');
INSERT INTO `hot_city_location` VALUES ('823', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '聊城', 'Liaocheng', 'lc', '9');
INSERT INTO `hot_city_location` VALUES ('824', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '临清', 'Linqing', 'lq', '1');
INSERT INTO `hot_city_location` VALUES ('826', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '龙口', 'Longkou', 'lk', '3');
INSERT INTO `hot_city_location` VALUES ('827', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '蓬莱', 'Penglai', 'pl', '3');
INSERT INTO `hot_city_location` VALUES ('828', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '平度', 'Pingdu', 'pd', '2');
INSERT INTO `hot_city_location` VALUES ('829', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '青岛', 'QingDao', 'qd', '50');
INSERT INTO `hot_city_location` VALUES ('830', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '青州', 'Qingzhou', 'qz', '4');
INSERT INTO `hot_city_location` VALUES ('832', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '曲阜', 'Qufu', 'qf', '1');
INSERT INTO `hot_city_location` VALUES ('833', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '日照', 'Rizhao', 'rz', '14');
INSERT INTO `hot_city_location` VALUES ('834', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '荣成', 'Rongcheng', 'rc', '2');
INSERT INTO `hot_city_location` VALUES ('835', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '乳山', 'Rushan', 'rs', '1');
INSERT INTO `hot_city_location` VALUES ('836', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '寿光', 'Shouguang', 'sg', '7');
INSERT INTO `hot_city_location` VALUES ('837', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '泰安', 'Taian', 'ta', '14');
INSERT INTO `hot_city_location` VALUES ('838', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '滕州', 'Tengzhou', 'tz', '4');
INSERT INTO `hot_city_location` VALUES ('839', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '潍坊', 'Weifang', 'wf', '20');
INSERT INTO `hot_city_location` VALUES ('840', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '威海', 'Weihai', 'wh', '19');
INSERT INTO `hot_city_location` VALUES ('843', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '烟台', 'Yantai', 'yt', '28');
INSERT INTO `hot_city_location` VALUES ('844', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '兖州', 'Yanzhou', 'yz', '2');
INSERT INTO `hot_city_location` VALUES ('847', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '枣庄', 'Zaozhuang', 'zz', '12');
INSERT INTO `hot_city_location` VALUES ('848', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '章丘', 'Zhangqiu', 'zq', '3');
INSERT INTO `hot_city_location` VALUES ('849', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '招远', 'Zhaoyuan', 'zy', '1');
INSERT INTO `hot_city_location` VALUES ('850', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '诸城', 'Zhucheng', 'zc', '2');
INSERT INTO `hot_city_location` VALUES ('851', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '淄博', 'Zibo', 'zb', '23');
INSERT INTO `hot_city_location` VALUES ('852', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '邹城', 'Zoucheng', 'zc', '2');
INSERT INTO `hot_city_location` VALUES ('854', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '太原', 'Taiyuan', 'ty', '29');
INSERT INTO `hot_city_location` VALUES ('855', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '长治', 'Changzhi', 'cz', '13');
INSERT INTO `hot_city_location` VALUES ('857', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '大同', 'Datong', 'dt', '13');
INSERT INTO `hot_city_location` VALUES ('858', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '汾阳', 'Fenyang', 'fy', '2');
INSERT INTO `hot_city_location` VALUES ('859', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '高平', 'Gaoping', 'gp', '3');
INSERT INTO `hot_city_location` VALUES ('861', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '河津', 'Hejin', 'hj', '2');
INSERT INTO `hot_city_location` VALUES ('862', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '侯马', 'Houma', 'hm', '3');
INSERT INTO `hot_city_location` VALUES ('863', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '霍州', 'Huozhou', 'hz', '1');
INSERT INTO `hot_city_location` VALUES ('864', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '介休', 'Jiexiu', 'jx', '2');
INSERT INTO `hot_city_location` VALUES ('865', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '晋城', 'Jincheng', 'jc', '9');
INSERT INTO `hot_city_location` VALUES ('866', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '晋中', 'Jinzhong', 'jz', '7');
INSERT INTO `hot_city_location` VALUES ('867', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '临汾', 'Linfen', 'lf', '18');
INSERT INTO `hot_city_location` VALUES ('868', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '潞城', 'Lucheng', 'lc', '1');
INSERT INTO `hot_city_location` VALUES ('869', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '吕梁', 'Lvliang', 'll', '12');
INSERT INTO `hot_city_location` VALUES ('871', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '朔州', 'Shuozhou', 'sz', '7');
INSERT INTO `hot_city_location` VALUES ('872', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '孝义', 'Xiaoyi', 'xy', '3');
INSERT INTO `hot_city_location` VALUES ('873', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '忻州', 'Xinzhou', 'xz', '4');
INSERT INTO `hot_city_location` VALUES ('874', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '阳泉', 'Yangquan', 'yq', '6');
INSERT INTO `hot_city_location` VALUES ('878', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '运城', 'Yuncheng', 'yc', '19');
INSERT INTO `hot_city_location` VALUES ('880', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '成都', 'Chengdu', 'cd', '136');
INSERT INTO `hot_city_location` VALUES ('882', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '巴中', 'Bazhong', 'bz', '7');
INSERT INTO `hot_city_location` VALUES ('884', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '崇州', 'Chongzhou', 'cz', '2');
INSERT INTO `hot_city_location` VALUES ('885', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '达州', 'Dazhou', 'dz', '10');
INSERT INTO `hot_city_location` VALUES ('886', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '德阳', 'Deyang', 'dy', '16');
INSERT INTO `hot_city_location` VALUES ('887', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '都江堰', 'Dujiangyan', 'djy', '1');
INSERT INTO `hot_city_location` VALUES ('888', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '峨眉山', 'Emeishan', 'ems', '3');
INSERT INTO `hot_city_location` VALUES ('891', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '广安', 'Guangan', 'ga', '6');
INSERT INTO `hot_city_location` VALUES ('892', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '广汉', 'Guanghan', 'gh', '1');
INSERT INTO `hot_city_location` VALUES ('893', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '广元', 'Guangyuan', 'gy', '9');
INSERT INTO `hot_city_location` VALUES ('894', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '华蓥', 'Huaying', 'hy', '1');
INSERT INTO `hot_city_location` VALUES ('895', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '江油', 'Jiangyou', 'jy', '4');
INSERT INTO `hot_city_location` VALUES ('897', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '阆中', 'Langzhong', 'lz', '2');
INSERT INTO `hot_city_location` VALUES ('898', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '乐山', 'Leshan', 'ls', '15');
INSERT INTO `hot_city_location` VALUES ('900', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '泸州', 'Luzhou', 'lz', '11');
INSERT INTO `hot_city_location` VALUES ('901', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '绵阳', 'Mianyang', 'my', '17');
INSERT INTO `hot_city_location` VALUES ('902', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '绵竹', 'Mianzhu', 'mz', '2');
INSERT INTO `hot_city_location` VALUES ('903', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '眉山', 'Meishan', 'ms', '12');
INSERT INTO `hot_city_location` VALUES ('904', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '南充', 'Nanchong', 'nc', '24');
INSERT INTO `hot_city_location` VALUES ('905', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '内江', 'Neijiang', 'nj', '11');
INSERT INTO `hot_city_location` VALUES ('906', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '攀枝花', 'Panzhihua', 'pzh', '7');
INSERT INTO `hot_city_location` VALUES ('910', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '遂宁', 'Suining', 'sn', '13');
INSERT INTO `hot_city_location` VALUES ('912', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '西昌', 'Xichang', 'xc', '3');
INSERT INTO `hot_city_location` VALUES ('913', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '雅安', 'Yaan', 'ya', '5');
INSERT INTO `hot_city_location` VALUES ('914', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '宜宾', 'Yibin', 'yb', '20');
INSERT INTO `hot_city_location` VALUES ('915', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '自贡', 'Zigong', 'zg', '9');
INSERT INTO `hot_city_location` VALUES ('916', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '资阳', 'Ziyang', 'zy', '6');
INSERT INTO `hot_city_location` VALUES ('918', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '拉萨', 'Lhasa', 'ls', '3');
INSERT INTO `hot_city_location` VALUES ('926', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '乌鲁木齐', 'Wulumuqi', 'wlmq', '28');
INSERT INTO `hot_city_location` VALUES ('927', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '阿克苏', 'Akesu', 'aks', '4');
INSERT INTO `hot_city_location` VALUES ('929', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '阿勒泰', 'Aletai', 'alt', '2');
INSERT INTO `hot_city_location` VALUES ('931', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '博乐', 'Bole', 'bl', '2');
INSERT INTO `hot_city_location` VALUES ('932', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '昌吉', 'Changji', 'cj', '4');
INSERT INTO `hot_city_location` VALUES ('934', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '哈密', 'Hami', 'hm', '2');
INSERT INTO `hot_city_location` VALUES ('936', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '伊犁', 'Yili', 'yl', '6');
INSERT INTO `hot_city_location` VALUES ('937', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '克拉玛依', 'Karamay', 'klmy', '3');
INSERT INTO `hot_city_location` VALUES ('938', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '喀什', 'Kashgar', 'ks', '5');
INSERT INTO `hot_city_location` VALUES ('939', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '库尔勒', 'Korla', 'kel', '4');
INSERT INTO `hot_city_location` VALUES ('942', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '石河子', 'Shihezi', 'shz', '6');
INSERT INTO `hot_city_location` VALUES ('943', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '塔城', 'Tacheng', 'tc', '2');
INSERT INTO `hot_city_location` VALUES ('945', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '吐鲁番', 'Turpan', 'tlf', '3');
INSERT INTO `hot_city_location` VALUES ('946', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '五家渠', 'Wujiaqu', 'wgq', '2');
INSERT INTO `hot_city_location` VALUES ('948', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '伊宁', 'Yining', 'yn', '5');
INSERT INTO `hot_city_location` VALUES ('950', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '昆明', 'Kunming', 'km', '55');
INSERT INTO `hot_city_location` VALUES ('952', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '保山', 'Baoshan', 'bs', '7');
INSERT INTO `hot_city_location` VALUES ('953', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '楚雄', 'Chuxiong', 'cx', '3');
INSERT INTO `hot_city_location` VALUES ('954', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '大理', 'Dali', 'dl', '10');
INSERT INTO `hot_city_location` VALUES ('955', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '德宏', 'Dehong', 'dh', '3');
INSERT INTO `hot_city_location` VALUES ('956', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '迪庆', 'Diqing', 'dq', '1');
INSERT INTO `hot_city_location` VALUES ('958', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '红河', 'Honghe', 'hh', '11');
INSERT INTO `hot_city_location` VALUES ('960', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '临沧', 'Lincang', 'lc', '3');
INSERT INTO `hot_city_location` VALUES ('961', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '丽江', 'Lijiang', 'lj', '3');
INSERT INTO `hot_city_location` VALUES ('964', '2017-08-07 23:39:32', '2017-08-07 23:39:32', '曲靖', 'Qujing', 'qj', '14');
INSERT INTO `hot_city_location` VALUES ('966', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '思茅', 'Simao', 'sm', '7');
INSERT INTO `hot_city_location` VALUES ('968', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '文山', 'Wenshan', 'ws', '7');
INSERT INTO `hot_city_location` VALUES ('969', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '西双版纳', 'Xishuangbanna', 'xsbn', '4');
INSERT INTO `hot_city_location` VALUES ('970', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '宣威', 'Xuanwei', 'xw', '3');
INSERT INTO `hot_city_location` VALUES ('971', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '玉溪', 'Yuxi', 'yx', '11');
INSERT INTO `hot_city_location` VALUES ('972', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '昭通', 'Zhaotong', 'zt', '3');
INSERT INTO `hot_city_location` VALUES ('974', '2017-08-07 23:39:26', '2017-08-07 23:39:26', '杭州', 'Hangzhou', 'hz', '124');
INSERT INTO `hot_city_location` VALUES ('975', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '慈溪', 'Cixi', 'cx', '10');
INSERT INTO `hot_city_location` VALUES ('976', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '东阳', 'Dongyang', 'dy', '6');
INSERT INTO `hot_city_location` VALUES ('977', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '奉化', 'Fenghua', 'fh', '3');
INSERT INTO `hot_city_location` VALUES ('978', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '富阳', 'Fuyang', 'fy', '4');
INSERT INTO `hot_city_location` VALUES ('979', '2017-08-07 23:39:35', '2017-08-07 23:39:35', '海宁', 'Haining', 'hn', '8');
INSERT INTO `hot_city_location` VALUES ('980', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '湖州', 'Huzhou', 'hz', '29');
INSERT INTO `hot_city_location` VALUES ('981', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '嘉兴', 'Jiaxing', 'jx', '22');
INSERT INTO `hot_city_location` VALUES ('982', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '建德', 'Jiande', 'jd', '2');
INSERT INTO `hot_city_location` VALUES ('984', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '金华', 'Jinhua', 'jh', '22');
INSERT INTO `hot_city_location` VALUES ('986', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '兰溪', 'Lanxi', 'lx', '2');
INSERT INTO `hot_city_location` VALUES ('987', '2017-08-07 23:39:38', '2017-08-07 23:39:38', '乐清', 'Leqing', 'lq', '5');
INSERT INTO `hot_city_location` VALUES ('988', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '临海', 'Linhai', 'lh', '6');
INSERT INTO `hot_city_location` VALUES ('989', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '临安', 'Linan', 'la', '4');
INSERT INTO `hot_city_location` VALUES ('990', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '丽水', 'Lishui', 'ls', '25');
INSERT INTO `hot_city_location` VALUES ('992', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '宁波', 'Ningbo', 'nb', '48');
INSERT INTO `hot_city_location` VALUES ('993', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '平湖', 'Pinghu', 'ph', '2');
INSERT INTO `hot_city_location` VALUES ('994', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '衢州', 'Quzhou', 'qz', '16');
INSERT INTO `hot_city_location` VALUES ('995', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '瑞安', 'Ruian', 'ra', '7');
INSERT INTO `hot_city_location` VALUES ('996', '2017-08-07 23:39:39', '2017-08-07 23:39:39', '上虞', 'Shangyu', 'sy', '4');
INSERT INTO `hot_city_location` VALUES ('997', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '绍兴', 'Shaoxing', 'sx', '22');
INSERT INTO `hot_city_location` VALUES ('998', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '嵊州', 'Shengzhou', 'sz', '3');
INSERT INTO `hot_city_location` VALUES ('999', '2017-08-07 23:39:36', '2017-08-07 23:39:36', '桐乡', 'Tongxiang', 'tx', '8');
INSERT INTO `hot_city_location` VALUES ('1000', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '温岭', 'Wenling', 'wl', '11');
INSERT INTO `hot_city_location` VALUES ('1001', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '温州', 'Wenzhou', 'wz', '61');
INSERT INTO `hot_city_location` VALUES ('1003', '2017-08-07 23:39:31', '2017-08-07 23:39:31', '义乌', 'Yiwu', 'yw', '15');
INSERT INTO `hot_city_location` VALUES ('1004', '2017-08-07 23:39:37', '2017-08-07 23:39:37', '永康', 'Yongkang', 'yk', '6');
INSERT INTO `hot_city_location` VALUES ('1005', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '余姚', 'Yuyao', 'yy', '10');
INSERT INTO `hot_city_location` VALUES ('1006', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '舟山', 'Zhoushan', 'zs', '13');
INSERT INTO `hot_city_location` VALUES ('1007', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '诸暨', 'Zhuji', 'zj', '10');
INSERT INTO `hot_city_location` VALUES ('1332', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '苏州', 'Suzhou', 'sz', '58');
INSERT INTO `hot_city_location` VALUES ('1342', '2017-08-07 23:39:33', '2017-08-07 23:39:33', '滨州', 'Binzhou', 'bz', '12');
INSERT INTO `hot_city_location` VALUES ('1344', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '海安', 'Haian', 'ha', '3');
INSERT INTO `hot_city_location` VALUES ('1345', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '锦州', 'Jinzhou', 'jz', '10');
INSERT INTO `hot_city_location` VALUES ('1349', '2017-08-07 23:39:34', '2017-08-07 23:39:34', '萍乡', 'Pingxiang', 'px', '10');
INSERT INTO `hot_city_location` VALUES ('1353', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '简阳', 'Jianyang', 'jy', '1');
INSERT INTO `hot_city_location` VALUES ('1355', '2017-08-07 23:39:27', '2017-08-07 23:39:27', '台州', 'Taizhou', 'tz', '41');
INSERT INTO `hot_city_location` VALUES ('1687', '2017-08-07 23:39:28', '2017-08-07 23:39:28', '临沂', 'Linyi', 'ly', '30');
INSERT INTO `hot_city_location` VALUES ('1744', '2017-08-07 23:39:30', '2017-08-07 23:39:30', '宜春', 'Yichun', 'yc', '18');
INSERT INTO `hot_city_location` VALUES ('1745', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '抚州', 'Fuzhou', 'fz', '22');
INSERT INTO `hot_city_location` VALUES ('1746', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '神农架', 'Shennongjia', 'snjlo', '1');
INSERT INTO `hot_city_location` VALUES ('1748', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '琼海', 'Qionghai', 'qh', '2');
INSERT INTO `hot_city_location` VALUES ('1749', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '儋州市', 'danzhou', 'dzs', '3');
INSERT INTO `hot_city_location` VALUES ('1750', '2017-08-07 23:39:41', '2017-08-07 23:39:41', '文昌', 'wenchang', 'wc', '3');
INSERT INTO `hot_city_location` VALUES ('1751', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '万宁', 'wanning', 'wn', '1');
INSERT INTO `hot_city_location` VALUES ('1752', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '东方', 'dongfang', 'df', '3');
INSERT INTO `hot_city_location` VALUES ('1754', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '屯昌县', 'Tunchangxian', 'tcx', '2');
INSERT INTO `hot_city_location` VALUES ('1755', '2017-08-07 23:39:42', '2017-08-07 23:39:42', '澄迈县', 'Chengmaixian', 'cmx', '2');
INSERT INTO `hot_city_location` VALUES ('1758', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '昌江', 'changjiang', 'cj', '1');
INSERT INTO `hot_city_location` VALUES ('1759', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '乐东', 'ledong', 'ld', '1');
INSERT INTO `hot_city_location` VALUES ('1760', '2017-08-07 23:39:46', '2017-08-07 23:39:46', '陵水', 'Lingshui', 'ls', '1');
INSERT INTO `hot_city_location` VALUES ('1763', '2017-08-07 23:39:29', '2017-08-07 23:39:29', '榆林', 'Yulin', 'yl', '23');
INSERT INTO `hot_city_location` VALUES ('1764', '2017-08-07 23:39:43', '2017-08-07 23:39:43', '海东', 'haidong', 'hd', '2');
INSERT INTO `hot_city_location` VALUES ('1774', '2017-08-07 23:39:45', '2017-08-07 23:39:45', '巴音郭楞', 'bayinguoleng', 'bygl', '1');
INSERT INTO `hot_city_location` VALUES ('4914', '2017-08-07 23:39:40', '2017-08-07 23:39:40', '海盐', 'Haiyan', 'hy', '3');
INSERT INTO `hot_city_location` VALUES ('4954', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '射阳', 'Sheyangshi', 'sys', '2');
INSERT INTO `hot_city_location` VALUES ('4966', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '芒市', 'Mangshi', 'ms', '2');
INSERT INTO `hot_city_location` VALUES ('5005', '2017-08-07 23:39:47', '2017-08-07 23:39:47', '洋浦市', 'yangpushi', 'xps', '1');
INSERT INTO `hot_city_location` VALUES ('5051', '2017-08-07 23:39:44', '2017-08-07 23:39:44', '时光市', 'Shiguangshi', '', '2');

-- ----------------------------
-- Table structure for `menu_task`
-- ----------------------------
DROP TABLE IF EXISTS `menu_task`;
CREATE TABLE `menu_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `menu_title` varchar(50) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `menu_target` varchar(50) DEFAULT NULL,
  `menu_sub_id` int(11) DEFAULT NULL,
  `menu_visible` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_task_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='菜单数据库表';

-- ----------------------------
-- Records of menu_task
-- ----------------------------
INSERT INTO `menu_task` VALUES ('27', '2017-08-26 19:07:40', '2017-08-26 19:07:40', '首页', 'home', 'home', '0', '1');
INSERT INTO `menu_task` VALUES ('28', '2017-08-26 19:07:56', '2017-08-26 19:07:56', '音乐', 'music', 'music', '0', '1');
INSERT INTO `menu_task` VALUES ('29', '2017-08-26 19:08:14', '2017-08-26 19:08:14', '个人列表', 'person', 'person', '0', '1');

-- ----------------------------
-- Table structure for `roles_permission_link`
-- ----------------------------
DROP TABLE IF EXISTS `roles_permission_link`;
CREATE TABLE `roles_permission_link` (
  `roles_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_modified` datetime DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_permission_link
-- ----------------------------
INSERT INTO `roles_permission_link` VALUES ('25', '5', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles_permission_link` VALUES ('24', '10', '34', '2017-12-20 10:58:07', '2017-12-20 10:58:07');
INSERT INTO `roles_permission_link` VALUES ('16', '5', '35', '2017-12-20 11:35:32', '2017-12-20 11:35:32');
INSERT INTO `roles_permission_link` VALUES ('16', '10', '36', '2017-12-20 11:35:32', '2017-12-20 11:35:32');

-- ----------------------------
-- Table structure for `users_list`
-- ----------------------------
DROP TABLE IF EXISTS `users_list`;
CREATE TABLE `users_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `user_login_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_list_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_list
-- ----------------------------
INSERT INTO `users_list` VALUES ('77', '2017-12-16 19:36:51', '2017-12-16 19:36:51', 'admind', 'dsd', 'admin1', null);
INSERT INTO `users_list` VALUES ('78', '2017-12-16 19:39:55', '2017-12-16 19:39:55', 'admi', '', 'admin', null);
INSERT INTO `users_list` VALUES ('79', '2017-12-17 00:19:21', '2017-12-17 00:19:21', 'admin123', 'admin', 'admin', null);
INSERT INTO `users_list` VALUES ('81', '2017-12-17 22:20:50', '2017-12-17 22:20:50', 'adsadassad', 'dsadadas', 'addsds', null);

-- ----------------------------
-- Table structure for `users_permission`
-- ----------------------------
DROP TABLE IF EXISTS `users_permission`;
CREATE TABLE `users_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_permission
-- ----------------------------
INSERT INTO `users_permission` VALUES ('5', '/users/menus/', '2017-11-29 23:17:45', '2017-11-29 23:17:45');
INSERT INTO `users_permission` VALUES ('7', '/users/menus/users/info', '2017-12-06 22:24:12', '2017-12-06 22:24:12');
INSERT INTO `users_permission` VALUES ('10', '/users/menus/users/roles', '2017-12-19 23:32:40', '2017-12-19 23:32:40');

-- ----------------------------
-- Table structure for `users_roles`
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles_name` varchar(50) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('16', 'ADMIN_SUPER_USER', '2017-12-04 23:14:55', '2017-12-19 23:20:59');
INSERT INTO `users_roles` VALUES ('24', 'DOUBLE_PLAY_USER', '2017-12-19 23:20:14', '2017-12-19 23:20:14');
INSERT INTO `users_roles` VALUES ('25', 'REGISTER_ONLY_USER', '2017-12-19 23:20:34', '2017-12-19 23:20:34');
INSERT INTO `users_roles` VALUES ('26', 'NORMAL_ADMIN_USER', '2017-12-19 23:20:53', '2017-12-19 23:20:53');
INSERT INTO `users_roles` VALUES ('27', 'admin', '2017-12-19 23:32:20', '2017-12-19 23:32:20');

-- ----------------------------
-- Table structure for `users_roles_link`
-- ----------------------------
DROP TABLE IF EXISTS `users_roles_link`;
CREATE TABLE `users_roles_link` (
  `user_id` int(11) DEFAULT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles_link
-- ----------------------------
INSERT INTO `users_roles_link` VALUES ('77', '26', '17', '2017-12-20 23:35:23', '2017-12-20 23:35:23');
