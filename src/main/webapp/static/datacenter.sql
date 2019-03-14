/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : datacenter

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 18:09:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ballot_number
-- ----------------------------
DROP TABLE IF EXISTS `ballot_number`;
CREATE TABLE `ballot_number` (
  `ballot_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_four_digits` varchar(255) DEFAULT NULL,
  `last_five_digits` varchar(255) DEFAULT NULL,
  `last_six_digits` varchar(255) DEFAULT NULL,
  `last_seven_digits` varchar(255) DEFAULT NULL,
  `last_eight_digits` varchar(255) DEFAULT NULL,
  `last_nine_digits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ballot_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ballot_number
-- ----------------------------
INSERT INTO `ballot_number` VALUES ('1', '1049,3549,6049,8549', '51537', '632073,132073,504323', '3944272,5194272,6444272,7694272,8944272,0194272,1444272,2694272', '20034027,70034027', '008650301');
INSERT INTO `ballot_number` VALUES ('2', '1599,4099,6599,9099', '26342,38842,51342,63842,76342,88842,01342,13842', '376279,501279,626279,751279,876279,001279,126279,251279', '8224052,3224052,6895339', '41141244,61141244,81141244,01141244,21141244,40806665,65806665,90806665,15806665', '138857896');
INSERT INTO `ballot_number` VALUES ('3', '184,684', '17452,29952,42452,54952,67452,79952,92452,04952', '707846,207846,679581', '5299103,6549103,7799103,9049103,4049103,2799103,1549103,0299103,8775005', '65979854,78479854,90979854,53479854,40979854,28479854,15979854,03479854', null);
INSERT INTO `ballot_number` VALUES ('4', '6591,1591,3609', null, '012368,212368,412368,612368,812368,204469,454469,704469,954469', '4645759,6645759,8645759,0645759,2645759,0041493', '49795164', null);
INSERT INTO `ballot_number` VALUES ('5', '9742,4742,6561', '98562,18562,38562,58562,78562,12003,62003', '468775,718775,968775,218775', '9437085,1437085,3437085,5437085,7437085', '32940567', '194798504');
INSERT INTO `ballot_number` VALUES ('6', '6864,9364,4364,1864', '35557,48057,60557,73057,85557,98057,23057,10557,36891', '546323,046323', '6315293,7565293,8815293,5065293,3815293,2565293,1315293,0065293', '75205517,69924471,26911295,52383175,00759927,23748948', null);
INSERT INTO `ballot_number` VALUES ('7', '725', '25385', '835996,960996,710996,585996,460996,335996,210996,085996,103533', '6767641,8767641,4767641,2767641,0767641', '01227325,21227325,41227325,61227325,81227325,66748125,16748125', null);
INSERT INTO `ballot_number` VALUES ('8', '0808,5808,3878', '32460,82460', '471793', '7019193,9019193,1019193,3019193,5019193,8158077', '18295056,43295056,68295056,93295056', '102741010');

-- ----------------------------
-- Table structure for first_day_performance
-- ----------------------------
DROP TABLE IF EXISTS `first_day_performance`;
CREATE TABLE `first_day_performance` (
  `performance_id` int(11) NOT NULL AUTO_INCREMENT,
  `open_price` double DEFAULT NULL,
  `close_price` double DEFAULT NULL,
  `open_premium` double DEFAULT NULL,
  `closing_gains` double DEFAULT NULL,
  `turnover_rate` double DEFAULT NULL,
  `maximum_increase` double DEFAULT NULL,
  `first_day_open_date` date DEFAULT NULL,
  `total_gains` double DEFAULT NULL,
  `continuous_word_boards_number` int(11) DEFAULT NULL,
  `open_day_average_price` double DEFAULT NULL,
  `every_one_makes_profit` int(11) DEFAULT NULL,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_day_performance
-- ----------------------------
INSERT INTO `first_day_performance` VALUES ('1', '9.19', '11.03', '19.97', '43.99', '0.07', '43.99', '2019-02-21', '383.29', '13', '37.02', '14680');
INSERT INTO `first_day_performance` VALUES ('2', '35.22', '42.26', '20', '43.99', '0.11', '43.99', '2019-02-26', '146.1', '6', '72.23', '21440');
INSERT INTO `first_day_performance` VALUES ('3', '5.62', '6.74', '20.09', '44.02', '0.1', '44.02', null, null, null, null, null);
INSERT INTO `first_day_performance` VALUES ('4', '26.51', '31.81', '20.01', '44', '0.12', '44', null, null, null, null, null);
INSERT INTO `first_day_performance` VALUES ('5', '12.61', '15.13', '19.98', '43.96', '0.07', '43.96', null, null, null, null, null);
INSERT INTO `first_day_performance` VALUES ('6', '6.84', '8.21', '20', '44.04', '0.07', '44.04', null, null, null, null, null);
INSERT INTO `first_day_performance` VALUES ('7', '2.88', '2.88', '44', '44', '0.07', '44', null, null, null, null, null);
INSERT INTO `first_day_performance` VALUES ('8', '22.46', '26.96', '19.98', '44.02', '0.17', '44.02', '2019-02-18', '148.24', '6', '46.47', '13875');

-- ----------------------------
-- Table structure for industry_section
-- ----------------------------
DROP TABLE IF EXISTS `industry_section`;
CREATE TABLE `industry_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) DEFAULT NULL COMMENT '板块名称',
  `latest_price` double DEFAULT NULL COMMENT '最新价',
  `up_down_limit` double DEFAULT NULL COMMENT '涨跌额',
  `up_down_range` varchar(255) DEFAULT NULL COMMENT '涨跌幅',
  `total_market_value` double DEFAULT NULL,
  `total_market_unit` varchar(255) DEFAULT NULL COMMENT '总市值',
  `turnover_rate` varchar(255) DEFAULT NULL COMMENT '换手率',
  `rising_number` int(11) DEFAULT NULL COMMENT '上涨家数',
  `drop_number` int(11) DEFAULT NULL COMMENT '下跌家数',
  `leading_stock` varchar(255) DEFAULT NULL COMMENT '领涨股票',
  `up_downs` varchar(255) DEFAULT NULL COMMENT '涨跌幅',
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industry_section
-- ----------------------------
INSERT INTO `industry_section` VALUES ('1', '安防设备', '765.99', '-4.07', '-0.53%', '4696', '亿', '0.62%', '7', '13', '迪威迅', '1.41%');
INSERT INTO `industry_section` VALUES ('2', '包装材料', '523.71', '4.02', '0.77%', '1298', '亿', '0.91%', '11', '12', '顺灏股份', '10.06%');
INSERT INTO `industry_section` VALUES ('3', '保险', '1362.63', '2.75', '0.20%', '2.66', '万亿', '0.31%', '4', '3', '中国太保', '1.99%');
INSERT INTO `industry_section` VALUES ('4', '玻璃陶瓷', '16555.63', '41.19', '0.25%', '2376', '亿', '0.33%', '10', '12', '福莱特', '10.03%');
INSERT INTO `industry_section` VALUES ('5', '材料行业', '15391.47', '143.78', '0.94%', '5153', '亿', '2.10%', '43', '23', '乐凯胶片', '9.97%');
INSERT INTO `industry_section` VALUES ('6', '船舶制造', '377.32', '-1.21', '-0.32%', '1685', '亿', '0.25%', '2', '9', '*ST宝鼎', '4.94%');
INSERT INTO `industry_section` VALUES ('7', '电力行业', '8803.72', '0.89', '0.01%', '1.34', '万亿', '0.27%', '26', '31', '穗恒运A', '9.98%');
INSERT INTO `industry_section` VALUES ('8', '电信运营', '899.2', '-1.82', '-0.20%', '2279', '亿', '0.33%', '3', '2', '中国联通', '0.35%');
INSERT INTO `industry_section` VALUES ('9', '电子信息', '10887.27', '-66.79', '-0.61%', '7674', '亿', '1.09%', '24', '78', '中信国安', '6.15%');
INSERT INTO `industry_section` VALUES ('10', '电子元件', '9550.27', '-20.75', '-0.22%', '2.19', '万亿', '2.12%', '71', '141', '超频三', '10.03%');
INSERT INTO `industry_section` VALUES ('11', '多元金融', '509.33', '-2.97', '-0.58%', '3514', '亿', '1.25%', '5', '18', '易见股份', '9.99%');
INSERT INTO `industry_section` VALUES ('12', '房地产', '12569.74', '43.32', '0.35%', '2.11', '万亿', '0.51%', '76', '45', '粤泰股份', '8.81%');
INSERT INTO `industry_section` VALUES ('13', '纺织服装', '8756.69', '-34.37', '-0.39%', '4161', '亿', '0.34%', '28', '50', '多喜爱', '4.07%');
INSERT INTO `industry_section` VALUES ('14', '钢铁行业', '4607.55', '53.95', '1.18%', '7315', '亿', '0.42%', '35', '2', '沙钢股份', '5.57%');
INSERT INTO `industry_section` VALUES ('15', '港口水运', '6472.41', '-44.17', '-0.68%', '6356', '亿', '0.32%', '6', '21', '盐田港', '1.86%');
INSERT INTO `industry_section` VALUES ('16', '高速公路', '4557.17', '-8.48', '-0.19%', '2686', '亿', '0.18%', '6', '9', '城发环境', '2.44%');
INSERT INTO `industry_section` VALUES ('17', '工程建设', '14106.89', '-7.37', '-0.05%', '1.41', '万亿', '0.22%', '35', '35', '百利科技', '6.58%');
INSERT INTO `industry_section` VALUES ('18', '工艺商品', '23703.99', '12.21', '0.05%', '76.34', '亿', '0.58%', '2', '1', '德艺文创', '0.30%');
INSERT INTO `industry_section` VALUES ('19', '公用事业', '5584.57', '20.5', '0.37%', '2942', '亿', '0.36%', '21', '15', 'ST升达', '3.60%');
INSERT INTO `industry_section` VALUES ('20', '贵金属', '646.97', '12.48', '1.97%', '2450', '亿', '1.43%', '12', '0', '金贵银业', '5.54%');
INSERT INTO `industry_section` VALUES ('21', '国际贸易', '8485.47', '-69.27', '-0.81%', '1074', '亿', '0.40%', '6', '17', '物贸B股', '1.15%');
INSERT INTO `industry_section` VALUES ('22', '航天航空', '22429.56', '-344.16', '-1.51%', '4014', '亿', '0.33%', '0', '25', '炼石航空', '0.00%');
INSERT INTO `industry_section` VALUES ('23', '化肥行业', '633.17', '-0.1', '-0.02%', '1815', '亿', '0.23%', '8', '11', '*ST柳化', '1.64%');
INSERT INTO `industry_section` VALUES ('24', '化工行业', '11748.54', '-11.99', '-0.10%', '1.33', '万亿', '0.40%', '71', '105', '同益股份', '10.01%');
INSERT INTO `industry_section` VALUES ('25', '化纤行业', '9650.13', '-66.01', '-0.68%', '2881', '亿', '0.43%', '5', '17', '*ST尤夫', '4.79%');
INSERT INTO `industry_section` VALUES ('26', '环保工程', '510.47', '-3.23', '-0.63%', '2821', '亿', '0.73%', '14', '29', '博天环境', '3.23%');
INSERT INTO `industry_section` VALUES ('27', '机械行业', '14918.67', '-11.97', '-0.08%', '1.6', '万亿', '0.44%', '87', '136', '山东矿机', '10.16%');
INSERT INTO `industry_section` VALUES ('28', '家电行业', '9235.55', '27.5', '0.30%', '1.18', '万亿', '0.28%', '31', '16', '*ST德奥', '3.91%');
INSERT INTO `industry_section` VALUES ('29', '交运设备', '6392.46', '3.32', '0.05%', '3654', '亿', '0.20%', '10', '13', '华铁股份', '3.12%');
INSERT INTO `industry_section` VALUES ('30', '交运物流', '4825.06', '-10.23', '-0.21%', '7671', '亿', '0.26%', '16', '33', '德新交运', '7.64%');
INSERT INTO `industry_section` VALUES ('31', '金属制品', '626.27', '-1.21', '-0.19%', '3356', '亿', '0.51%', '26', '30', '经纬辉开', '4.57%');
INSERT INTO `industry_section` VALUES ('32', '旅游酒店', '11419.44', '-20.83', '-0.18%', '3112', '亿', '0.25%', '13', '22', '宋城演艺', '3.32%');
INSERT INTO `industry_section` VALUES ('33', '煤炭采选', '5141.34', '3.21', '0.06%', '9227', '亿', '0.20%', '13', '15', '*ST安泰', '2.97%');
INSERT INTO `industry_section` VALUES ('34', '民航机场', '4400.62', '-30.36', '-0.69%', '5996', '亿', '0.15%', '2', '11', '白云机场', '1.14%');
INSERT INTO `industry_section` VALUES ('35', '木业家具', '12297.42', '-11.07', '-0.09%', '2352', '亿', '0.42%', '14', '21', '顾家家居', '2.53%');
INSERT INTO `industry_section` VALUES ('36', '酿酒行业', '25371.52', '411.3', '1.65%', '1.95', '万亿', '0.37%', '37', '1', '今世缘', '5.25%');
INSERT INTO `industry_section` VALUES ('37', '农牧饲渔', '9459.19', '40.91', '0.43%', '8707', '亿', '0.46%', '34', '32', '朗源股份', '10.06%');
INSERT INTO `industry_section` VALUES ('38', '农药兽药', '743.18', '-1.62', '-0.22%', '2002', '亿', '0.48%', '8', '17', '扬农化工', '1.83%');
INSERT INTO `industry_section` VALUES ('39', '汽车行业', '15568.13', '-43.75', '-0.28%', '1.91', '万亿', '0.35%', '49', '94', '浙江仙通', '7.48%');
INSERT INTO `industry_section` VALUES ('40', '券商信托', '112982.34', '1335.85', '1.20%', '2.6', '万亿', '0.77%', '39', '1', '国盛金控', '10.03%');
INSERT INTO `industry_section` VALUES ('41', '软件服务', '605.67', '-4.72', '-0.77%', '1.61', '万亿', '0.84%', '42', '119', '顶点软件', '3.79%');
INSERT INTO `industry_section` VALUES ('42', '商业百货', '12429.84', '-61.58', '-0.49%', '7067', '亿', '0.53%', '16', '54', '商业城', '2.13%');
INSERT INTO `industry_section` VALUES ('43', '石油行业', '4138.25', '-39.56', '-0.95%', '2.52', '万亿', '0.08%', '5', '32', 'ST准油', '4.66%');
INSERT INTO `industry_section` VALUES ('44', '食品饮料', '13900.51', '-30.08', '-0.22%', '9827', '亿', '0.33%', '24', '42', '千禾味业', '5.52%');
INSERT INTO `industry_section` VALUES ('45', '输配电气', '11593.53', '-72.53', '-0.62%', '8858', '亿', '0.44%', '21', '83', '通达股份', '6.86%');
INSERT INTO `industry_section` VALUES ('46', '水泥建材', '19779.6', '458.48', '2.37%', '5965', '亿', '1.17%', '38', '7', '四川金顶', '10.05%');
INSERT INTO `industry_section` VALUES ('47', '塑胶制品', '7099.68', '-12.04', '-0.17%', '2846', '亿', '0.64%', '17', '34', '海达股份', '9.93%');
INSERT INTO `industry_section` VALUES ('48', '通讯行业', '8971.78', '-118.97', '-1.31%', '1.26', '万亿', '1.03%', '15', '80', '万隆光电', '10.01%');
INSERT INTO `industry_section` VALUES ('49', '文化传媒', '7579.91', '-65.56', '-0.86%', '9603', '亿', '0.55%', '17', '73', '紫天科技', '9.98%');
INSERT INTO `industry_section` VALUES ('50', '文教休闲', '540.1', '-3.04', '-0.56%', '2851', '亿', '0.68%', '8', '24', '姚记扑克', '4.22%');
INSERT INTO `industry_section` VALUES ('51', '医疗行业', '771.5', '-7.8', '-1.00%', '7429', '亿', '0.93%', '11', '48', '千山药机', '4.12%');
INSERT INTO `industry_section` VALUES ('52', '医药制造', '19134.73', '-108.78', '-0.57%', '2.88', '万亿', '0.64%', '59', '157', '龙津药业', '10.05%');
INSERT INTO `industry_section` VALUES ('53', '仪器仪表', '6739.42', '-33.88', '-0.50%', '2031', '亿', '0.51%', '14', '28', '凯发电气', '2.51%');
INSERT INTO `industry_section` VALUES ('54', '银行', '3106.77', '-4.15', '-0.13%', '10.29', '万亿', '0.06%', '2', '29', 'N西行', '44.02%');
INSERT INTO `industry_section` VALUES ('55', '有色金属', '8381.56', '-58.91', '-0.70%', '9989', '亿', '0.41%', '14', '58', 'XR贵研铂', '9.97%');
INSERT INTO `industry_section` VALUES ('56', '园林工程', '614.61', '-2.75', '-0.45%', '1129', '亿', '0.68%', '6', '17', '*ST毅达', '4.26%');
INSERT INTO `industry_section` VALUES ('57', '造纸印刷', '5829.04', '-81.77', '-1.38%', '2068', '亿', '0.95%', '5', '27', '美利云', '1.97%');
INSERT INTO `industry_section` VALUES ('58', '珠宝首饰', '488.99', '-4.04', '-0.82%', '792.5', '亿', '1.00%', '3', '11', '萃华珠宝', '2.37%');
INSERT INTO `industry_section` VALUES ('59', '专用设备', '1051.23', '-3.84', '-0.36%', '4639', '亿', '0.77%', '24', '62', '华菱星马', '10.07%');
INSERT INTO `industry_section` VALUES ('60', '装修装饰', '587.02', '-2.19', '-0.37%', '1394', '亿', '0.49%', '9', '18', '柯利达', '4.00%');
INSERT INTO `industry_section` VALUES ('61', '综合行业', '5351.1', '-57.78', '-1.07%', '1611', '亿', '0.54%', '4', '20', '*ST工新', '4.82%');

-- ----------------------------
-- Table structure for issue_mode
-- ----------------------------
DROP TABLE IF EXISTS `issue_mode`;
CREATE TABLE `issue_mode` (
  `mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_type` varchar(255) DEFAULT NULL,
  `mode_descrip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_mode
-- ----------------------------
INSERT INTO `issue_mode` VALUES ('1', '市值申购，网下询价配售，网上定价发行', '采用网下向配售对象询价配售与网上市值申购定价发行相结合的方式;或采用中国证监会要求或认可的其他方式');
INSERT INTO `issue_mode` VALUES ('2', '市值申购，网下询价配售，网上定价发行', '采用网下向投资者询价配售和网上向社会公众投资者定价发行相结合的方式或中国证监会等监管审核部门认可的其他发行方式');
INSERT INTO `issue_mode` VALUES ('3', '市值申购，网下询价配售，网上定价发行', '采用网下向询价对象配售和网上向符合资格的社会公众投资者定价发行相结合的方式或中国证监会认可的其他发行方式');
INSERT INTO `issue_mode` VALUES ('4', '市值申购，网下询价配售，网上定价发行', '网下向配售对象询价配售和网上按市值申购方式向社会公众投资者定价发行相结合的方式进行;或采用中国证监会核准的其他发行方式');
INSERT INTO `issue_mode` VALUES ('5', '市值申购，网下询价配售，网上定价发行', '采用网下向询价对象配售和网上向社会公众投资者定价发行相结合的方式或中国证监会认可的其他发行方式');
INSERT INTO `issue_mode` VALUES ('6', '市值申购，网下询价配售，网上定价发行', '本次发行采用网下向投资者询价配售和网上向持有深圳市场非限售A股和非限售存托凭证市值的社会公众投资者定价发行相结合的方式进行');
INSERT INTO `issue_mode` VALUES ('7', '市值申购，网下询价配售，网上定价发行', '采用网下向询价对象配售和网上向社会公众投资者定价发行相结合的方式');
INSERT INTO `issue_mode` VALUES ('8', '市值申购，网下询价配售，网上定价发行', '采用网下向投资者询价配售与网上按市值申购定价发行相结合的方式或证券监管部门认可的其他发行方式');
INSERT INTO `issue_mode` VALUES ('9', '市值申购，网下询价配售，网上定价发行', '	采用网下向投资者询价配售和网上按市值申购向持有上海市场非限售A股份市值的社会公众投资者定价发行相结合的方式,或采用中国证监会核准的其他发行方式');
INSERT INTO `issue_mode` VALUES ('10', '市值申购，网下询价配售，网上定价发行', '采用网下向询价对象配售和网上向社会公众投资者定价发行相结合的方式或中国证监会认可的其他方式');

-- ----------------------------
-- Table structure for issue_status
-- ----------------------------
DROP TABLE IF EXISTS `issue_status`;
CREATE TABLE `issue_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_code` varchar(255) DEFAULT NULL,
  `stock_name` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `listing_place` varchar(255) DEFAULT NULL,
  `issue_price` double DEFAULT NULL,
  `ipo_pe_ratio` double DEFAULT NULL,
  `pe_ratio_reference_industry` varchar(255) DEFAULT NULL,
  `reference_industry_pe_ratio` double DEFAULT NULL,
  `issue_face_value` double DEFAULT NULL COMMENT '发行面值（元）',
  `total_actual_fund_raised` double DEFAULT NULL COMMENT '实际募集资金总额(亿元)',
  `online_release_date` date DEFAULT NULL COMMENT '网上发行日期',
  `offline_distribution_date` date DEFAULT NULL COMMENT '网下配售日期',
  `number_online_issuance` int(11) DEFAULT NULL COMMENT '网上发行数量（股）',
  `offline_distribution_quantity` int(11) DEFAULT NULL COMMENT '网下配售数量(股)',
  `number_old_stock_transfers` int(11) DEFAULT NULL COMMENT '老股转让数量(股)',
  `total_issue_quantity` int(11) DEFAULT NULL COMMENT '总发行数量（股）',
  `purchase_limit` int(11) DEFAULT NULL COMMENT '申购数量上限(股)',
  `payment_date` date DEFAULT NULL COMMENT '中签缴款日期',
  `online_market_capitalization` double DEFAULT NULL COMMENT '网上顶格申购需配市值(万元)',
  `online_purchase_market_value_confirm_date` date DEFAULT NULL COMMENT '网上申购市值确认日',
  `offline_purchase_market_value` double DEFAULT NULL COMMENT '网下申购需配市值(万元)',
  `offline_purchase_market_value_confirm_date` date DEFAULT NULL COMMENT '网下申购市值确认日',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_status
-- ----------------------------
INSERT INTO `issue_status` VALUES ('1', '603681', '永冠新材', '732681', '上海证券交易所', '10', '22.98', '化学原料和化学制品制造业', '17.6', '1', '4.16', '2019-03-14', '2019-03-14', '16659000', '24988901', null, '41647901', '16000', '2019-03-18', '16', null, '6000', '2019-02-12');
INSERT INTO `issue_status` VALUES ('2', '002958', '青农商行', '002958', '深证证券交易所', '3.96', '10.74', '货币金融服务', '6.79', '1', '22', '2019-03-13', '2019-03-13', '166666500', '388889056', null, '555555556', '166500', '2019-03-15', '166.5', null, '1000', '2019-02-12');
INSERT INTO `issue_status` VALUES ('3', '002950 ', '奥美医疗', '002950', '深圳证券交易所 ', '11.03', '22.03', '专用设备制造业', '35.53', '1', '5.29', '2019-02-27', '2019-02-27', '43200000', '4800000', null, '48000000', '14000', '2019-03-01', '14', null, '1000', '2019-02-19');
INSERT INTO `issue_status` VALUES ('4', '300761', '立华股份', '300761', '深圳证券交易所', '29.35', '16.05', '畜牧业', '26.63', '1', '12.12', '2019-01-30', '2019-01-30', '37152000', '4128000', null, '41280000', '12000', '2019-02-01', '12', null, '1000', '2019-01-22');
INSERT INTO `issue_status` VALUES ('5', '600928', ' 西安银行', '730928', '上海证券交易所', '4.68', '10.28', '货币金融服务', '6.49', '1', '20.8', '2019-02-19', '2019-02-19', '400001000', '44443445', null, '44444445', '133000', '2019-02-21', '133', null, '1000', '2019-01-15');
INSERT INTO `issue_status` VALUES ('6', '300758', '七彩化学', '300758', '深圳证券交易所', '22.09', '22.99', '化学原料和化学制品制造业', '17.11', '1', '5.89', '2019-02-13', '2019-02-13', '24012000', '2668000', null, '26680000', '10500', '2019-02-15', '10.5', null, '1000', '2019-01-09');
INSERT INTO `issue_status` VALUES ('7', '002949', '华阳国际', '002949', '深圳证券交易所', '10.51', '22.99', '专业技术服务业', '30.11', '1', '5.15', '2019-02-13', '2019-02-13', '44127000', '4903000', null, '49030000', '19500', '2019-02-15', '19.5', null, '1000', '2019-01-29');
INSERT INTO `issue_status` VALUES ('8', '603956', '威派格', '732956', '上海证券交易所', '5.7', '22.97', '专用设备制造业', '33.9', '1', '2.43', '2019-02-12', '2019-02-12', '38337000', '4259100', null, '42596100', '12000', '2019-02-14', '12', null, '6000', '2019-01-28');
INSERT INTO `issue_status` VALUES ('9', '601865', '福莱特', '780865', '上海证券交易所', '2', '9.56', '非金属矿物制品业', '15.45', '0.25', '3', '2019-01-29', '2019-01-29', '135000000', '15000000', null, '150000000', '45000', '2019-01-31', '45', null, '5000', '2019-01-21');
INSERT INTO `issue_status` VALUES ('10', '002947', '恒铭达', '002947', '深圳证券交易所', '18.72', '22.99', '计算机、通信和其他电子设备制造业', '25.47', '1', '5.69', '2019-01-23', '2019-01-23', '27340500', '3037503', null, '30378003', '12000', '2019-01-25', '12', null, '1000', '2019-01-14');

-- ----------------------------
-- Table structure for new_stock_market
-- ----------------------------
DROP TABLE IF EXISTS `new_stock_market`;
CREATE TABLE `new_stock_market` (
  `new_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `corporate_name` varchar(255) DEFAULT NULL,
  `declaration_date` date DEFAULT NULL,
  `meet_date` date DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `quantity_issued` double DEFAULT NULL,
  `place_listed` varchar(255) DEFAULT NULL,
  `underwriter` varchar(255) DEFAULT NULL,
  `declaration_form` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`new_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_stock_market
-- ----------------------------
INSERT INTO `new_stock_market` VALUES ('1', '南通超达装备股份有限公司', '2018-11-02', '2019-01-29', '上会未通过', null, '1820', '上交所', '中泰证券', null);
INSERT INTO `new_stock_market` VALUES ('2', '广东南方新媒体股份有限公司', '2018-07-06', '2019-01-29', '上会通过', null, '3210', '创业板', '华西证券', null);
INSERT INTO `new_stock_market` VALUES ('3', '信利光电股份有限公司', '2017-12-19', '2019-01-29', '上会未通过', null, '8000', '中小板', '中国银河证券', null);
INSERT INTO `new_stock_market` VALUES ('4', '江苏国茂减速机股份有限公司', '2018-04-23', '2019-01-15', '暂缓表决', null, '15000', '上交所', '国泰君安证券', null);
INSERT INTO `new_stock_market` VALUES ('5', '南京泉峰汽车精密技术股份有限公司', '2018-07-31', '2019-01-08', '上会通过', null, '5000', '上交所', '中国国际金融证券', null);
INSERT INTO `new_stock_market` VALUES ('6', '云南震安减震科技股份有限公司', '2018-06-15', '2019-01-08', '上会通过', null, '2000', '创业板', '民生证券', null);
INSERT INTO `new_stock_market` VALUES ('7', '博通集成电路(上海)股份有限公司', '2018-05-18', '2019-01-03', '上会通过', null, '3467.84', '上交所', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('8', '亚世光电股份有限公司', '2018-04-09', '2019-01-03', '上会通过', null, '1927', '中小板', '招商证券', null);
INSERT INTO `new_stock_market` VALUES ('9', '奥美医疗用品股份有限公司', '2018-06-05', '2018-12-25', '上会通过', '2019-02-27', '4800', '中小板', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('10', '厦门纵横集团股份有限公司', '2018-03-26', '2018-12-25', '取消审核', null, '5834', '上交所', '太平洋证券', null);
INSERT INTO `new_stock_market` VALUES ('11', '宁波锦浪新能源科技股份有限公司', '2018-05-11', '2018-12-21', '上会通过', null, '2000', '创业板', '海通证券', null);
INSERT INTO `new_stock_market` VALUES ('12', '苏州富士莱医药股份有限公司', '2018-10-18', '2018-12-18', '上会未通过', null, '2200', '上交所', '华林证券', null);
INSERT INTO `new_stock_market` VALUES ('13', '上海永冠众诚新材料科技(集团)股份有限公司', '2018-04-09', '2018-12-18', '上会通过', '2019-03-14', '4164.79', '上交所', '东兴证券', null);
INSERT INTO `new_stock_market` VALUES ('14', '中创物流股份有限公司', '2018-03-26', '2018-12-18', '上会通过', null, '6666.67', '上交所', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('15', '浙江三美化工股份有限公司', '2018-10-18', '2018-12-11', '上会通过', null, '5973.38', '上交所', '长江证券', null);
INSERT INTO `new_stock_market` VALUES ('16', '石药集团新诺威制药股份有限公司', '2018-09-07', '2018-12-11', '上会通过', null, '5000', '创业板', '安信证券', null);
INSERT INTO `new_stock_market` VALUES ('17', '浙江每日互动网络科技股份有限公司', '2018-05-02', '2018-12-11', '上会通过', null, '4010', '创业板', '东方花旗证券', null);
INSERT INTO `new_stock_market` VALUES ('18', '四川金时科技股份有限公司', '2018-08-22', '2018-12-04', '上会通过', null, '4500', '中小板', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('19', '上海威派格智慧水务股份有限公司', '2018-07-24', '2018-12-04', '上会通过', '2019-02-12', '4259.61', '上交所', '中信建投证券', null);
INSERT INTO `new_stock_market` VALUES ('20', '常州银河世纪微电子股份有限公司', '2018-04-12', '2018-12-04', '上会未通过', null, '3193.34', '创业板', '中信建投证券', null);
INSERT INTO `new_stock_market` VALUES ('21', '深圳市华阳国际工程设计股份有限公司', '2018-07-13', '2018-11-27', '上会通过', '2019-02-13', '4903', '中小板', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('22', '国科恒泰(北京)医疗科技股份有限公司', '2018-05-15', '2018-11-27', '上会未通过', null, '5000', '上交所', '长城证券', null);
INSERT INTO `new_stock_market` VALUES ('23', '上海瀚讯信息技术股份有限公司', '2018-03-29', '2018-11-27', '上会通过', null, '3336', '创业板', '长城证券', null);
INSERT INTO `new_stock_market` VALUES ('24', '陕西西凤酒股份有限公司', '2018-05-02', '2018-11-20', '取消审核', null, '10000', '上交所', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('25', '青岛农村商业银行股份有限公司', '2018-01-10', '2018-11-20', '上会通过', '2019-03-13', '0', '中小板', '招商证券', null);
INSERT INTO `new_stock_market` VALUES ('26', '江苏立华牧业股份有限公司', '2017-11-14', '2018-11-20', '上会通过', '2019-01-30', '5000', '创业板', '中泰证券', null);
INSERT INTO `new_stock_market` VALUES ('27', '明阳智慧能源集团股份公司', '2018-07-20', '2018-11-13', '上会通过', '2019-01-11', '27590', '上交所', '申万宏源证券', null);
INSERT INTO `new_stock_market` VALUES ('28', '苏州恒铭达电子科技股份有限公司', '2018-05-11', '2018-11-13', '上会通过', '2019-01-23', '3037.8', '中小板', '国金证券', null);
INSERT INTO `new_stock_market` VALUES ('29', '华致酒行连锁管理股份有限公司', '2017-10-25', '2018-11-13', '上会通过', '2019-01-17', '5788.87', '创业板', '西部证券', null);
INSERT INTO `new_stock_market` VALUES ('30', '广东日丰电缆股份有限公司', '2018-05-24', '2018-11-06', '取消审核', null, '4302', '中小板', '东莞证券', null);
INSERT INTO `new_stock_market` VALUES ('31', '康龙化成(北京)新药技术股份有限公司', '2018-04-13', '2018-11-06', '上会通过', '2019-01-15', '6563', '创业板', '东方花旗证券', null);
INSERT INTO `new_stock_market` VALUES ('32', '鞍山七彩化学股份有限公司', '2018-04-12', '2018-11-06', '上会通过', '2019-02-13', '2668', '创业板', '长江证券', null);
INSERT INTO `new_stock_market` VALUES ('33', '罗博特科智能科技股份有限公司', '2018-04-09', '2018-10-30', '上会通过', '2018-12-26', '2000', '创业板', '民生证券', null);
INSERT INTO `new_stock_market` VALUES ('34', '西安银行股份有限公司', '2018-03-29', '2018-10-30', '上会通过', '2018-02-19', '133333.33', '上交所', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('35', '常州通宝光电股份有限公司', '2018-03-28', '2018-10-30', '取消审核', null, '1880', '创业板', '招商证券', null);
INSERT INTO `new_stock_market` VALUES ('36', '苏州龙杰特种纤维股份有限公司', '2018-08-29', '2018-10-23', '上会通过', '2019-01-04', '2973.5', '上交所', '国信证券', null);
INSERT INTO `new_stock_market` VALUES ('37', '浙江力邦合信智能制动系统股份有限公司', '2018-05-28', '2018-10-23', '上会未通过', null, '4200', '上交所', '中信证券', null);
INSERT INTO `new_stock_market` VALUES ('38', '青岛蔚蓝生物股份有限公司', '2018-04-17', '2018-10-23', '上会通过', '2019-01-03', '3866.7', '上交所', '广发证券', null);
INSERT INTO `new_stock_market` VALUES ('39', '上海秦森园林股份有限公司', '2018-01-17', '2018-10-10', '上会未通过', null, '7093.86', '上交所', '光大证券', null);
INSERT INTO `new_stock_market` VALUES ('40', '有友食品股份有限公司', '2017-12-27', '2018-10-10', '上会通过', null, '7950', '上交所', '东北证券', null);
INSERT INTO `new_stock_market` VALUES ('41', '珠海安联锐视科技股份有限公司', '2018-05-08', '2018-09-27', '上会未通过', null, '1720', '创业板', '兴业证券', null);

-- ----------------------------
-- Table structure for purchase_status
-- ----------------------------
DROP TABLE IF EXISTS `purchase_status`;
CREATE TABLE `purchase_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `open_date` date DEFAULT NULL,
  `listing_date` date DEFAULT NULL,
  `lottery_rate_online_distribution` decimal(10,5) DEFAULT NULL,
  `lottery_rate_offline_distribution` decimal(10,5) DEFAULT NULL COMMENT '网下配售中签率',
  `date_announcement_result_successful_signature` date DEFAULT NULL COMMENT '中签结果公告日期',
  `subscription_multiples_offline_distribution` decimal(10,2) DEFAULT NULL COMMENT '网下配售认购倍数',
  `accumulated_number_quoted_shares` decimal(10,2) DEFAULT NULL COMMENT '初步询价累计报价股数（万股）',
  `accumulative_quotation_multiple` decimal(10,2) DEFAULT NULL COMMENT '初步询价累计报价倍数',
  `number_valid_online_subscribers` int(11) DEFAULT NULL COMMENT '网上有效申购户数(户)',
  `number_valid_offline_subscribers` int(11) DEFAULT NULL COMMENT '网下有效申购户数（户）',
  `number_effective_shares_purchased_online` decimal(10,2) DEFAULT NULL COMMENT '网上有效申购股数（万股）',
  `number_effective_shares_purchased_offline` decimal(10,2) DEFAULT NULL COMMENT '网上有效申购股数（万股）',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_status
-- ----------------------------
INSERT INTO `purchase_status` VALUES ('1', '2019-03-18', null, null, null, '2019-03-18', null, '1686100.00', '675.00', null, null, null, null);
INSERT INTO `purchase_status` VALUES ('2', '2019-03-15', null, null, null, '2019-03-15', null, '7335940.00', '189.00', null, null, null, null);
INSERT INTO `purchase_status` VALUES ('3', '2019-03-01', null, '0.04138', '0.01650', '2019-03-01', '6054.00', '2956210.00', '879.82', '14085664', '4887', '10439091.40', '2906110.00');
INSERT INTO `purchase_status` VALUES ('4', '2019-02-01', '2019-02-18', '0.04884', '0.02850', '2019-02-01', '3512.79', '1470100.00', '508.76', '10366519', '4933', '7606878.55', '1450080.00');
INSERT INTO `purchase_status` VALUES ('5', '2019-02-21', '2019-03-01', '0.20840', '0.03840', '2019-02-21', '2602.21', '12057210.00', '387.55', '12188695', '4079', '19194034.90', '11565100.00');
INSERT INTO `purchase_status` VALUES ('6', '2019-02-15', '2019-02-22', '0.03096', '0.02790', '2019-02-15', '3579.76', '1475680.00', '921.84', '11591176', '3240', '7755297.05', '955080.00');
INSERT INTO `purchase_status` VALUES ('7', '2019-02-15', '2019-02-26', '0.03745', '0.01810', '2019-02-15', '5520.64', '2770370.00', '941.73', '13265840', '4565', '11782637.75', '2706770.00');
INSERT INTO `purchase_status` VALUES ('8', '2019-02-14', '2019-02-22', '0.04929', '0.01100', '2019-02-14', '9122.70', '3944250.00', '1322.77', '11652780', '3903', '7778144.80', '3885450.00');
INSERT INTO `purchase_status` VALUES ('9', '2019-01-31', '2019-02-15', '0.10196', '0.01120', '2019-01-31', '8903.99', '13481980.00', '1284.00', '10877522', '4457', '13240844.10', '13355980.00');
INSERT INTO `purchase_status` VALUES ('10', '2019-01-25', '2019-02-01', '0.03216', '0.02100', '2019-01-25', '4769.31', '1496160.00', '820.85', '12188031', '4860', '8500135.75', '1448680.00');

-- ----------------------------
-- Table structure for research_report
-- ----------------------------
DROP TABLE IF EXISTS `research_report`;
CREATE TABLE `research_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) DEFAULT NULL COMMENT '研报',
  `organization_name` varchar(255) DEFAULT NULL COMMENT '机构名称',
  `rating_change` varchar(255) DEFAULT NULL COMMENT '评级变动',
  `rating_category` varchar(255) DEFAULT NULL COMMENT '评级类别',
  `report_date` date DEFAULT NULL COMMENT '报告日期',
  `report_industry` int(11) NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `report_industry` (`report_industry`),
  CONSTRAINT `research_report_ibfk_1` FOREIGN KEY (`report_industry`) REFERENCES `industry_section` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of research_report
-- ----------------------------
INSERT INTO `research_report` VALUES ('1', '储能设备行业重大事项点评:广东调频辅助服务市场启动,储能市场再迎利好', '华创证券', '维持', '持有', '2018-08-22', '1');
INSERT INTO `research_report` VALUES ('2', '国防军工2018行业投资策略：站在军工高景气周期的起点', '天风证券', '无', '增持', '2017-12-12', '1');
INSERT INTO `research_report` VALUES ('3', '国防军工行业事件点评：美国重返月球 太空经济启航', '东兴证券', '维持', '持有', '2017-12-12', '1');
INSERT INTO `research_report` VALUES ('4', '多元金融行业简评：资金信托新规呼之欲出,关注信托基本面改善进程', '中信建投', '调高', '增持', '2019-03-01', '40');
INSERT INTO `research_report` VALUES ('5', '证券行业事件点评：资本市场改革与制度创新有序推进,券商拥抱发展良机', '中银国际', '无', null, '2019-02-28', '40');
INSERT INTO `research_report` VALUES ('6', '非银金融：粤港澳大湾区专题报告-险种迎发展机遇 金融政策持续向好', '平安证券', '维持', '持有', '2019-02-28', '40');
INSERT INTO `research_report` VALUES ('7', '证监会2月27日新闻发布会解析：奠定监管基调,引导行业改善发展', '华泰证券', '维持', '增持', '2019-02-28', '40');
INSERT INTO `research_report` VALUES ('8', '非银行金融专业：关于《证券基金经营机...', '长城证券', '维持', '持有', '2019-02-27', '40');
INSERT INTO `research_report` VALUES ('9', '非银行金融行业：交投活跃度提升,券商Beta业绩贡献显著', '东方证券', '维持', '持有', '2019-02-27', '40');
INSERT INTO `research_report` VALUES ('10', '轻工行业周报：底部推荐并继续看好裕同科技和盈趣科技', '中泰证券', '维持', '增持', '2019-02-28', '2');
INSERT INTO `research_report` VALUES ('11', '包装印刷行业研究报告：包装行业投资逻辑： 按海外巨头发展之图,', '东吴证券', '首次', '增持', '2018-09-12', '2');
INSERT INTO `research_report` VALUES ('12', '保险行业即时点评：投资端持续改善,价值增长前景可期', '华泰证券', '维持', '增持', '2019-02-28', '3');
INSERT INTO `research_report` VALUES ('13', '保险行业跟踪报告：牛市如何配保险？', '华创证券', '维持', '持有', '2019-02-26', '3');
INSERT INTO `research_report` VALUES ('14', '上市险企1月保费数据点评：寿险负债端好转,财险增速超预期', '中信建投', '维持', '买入', '2019-02-22', '3');
INSERT INTO `research_report` VALUES ('15', '2019年1月上市险企保费收入综评：寿险略显压力,产险继续向好', '群益证券', '无', null, '2019-02-22', '3');
INSERT INTO `research_report` VALUES ('16', '保险行业点评：保费端和利率端预期正在好转,大湾区建设对于保险业', '天风证券', '维持', '增持', '2019-02-19', '3');
INSERT INTO `research_report` VALUES ('17', '2019年1月上市险企保费数据点评：新单承压下NBV增速预期平稳关注', '申万宏源', '无', '持有', '2019-02-18', '3');
INSERT INTO `research_report` VALUES ('18', '保险业2018年报前瞻：龙头险企保费与价值稳定增长,投资收益波动', '申万宏源', '无', '持有', '2019-02-11', '3');
INSERT INTO `research_report` VALUES ('19', '保险行业2018年年报业绩前瞻：低估值已反映悲观预期边际改善凸显', '平安证券', '维持', '持有', '2019-02-11', '3');
INSERT INTO `research_report` VALUES ('20', '保险行业：2019年年度投资策略：保险结构持续改善,估值底部边际凸', '华融证券', '首次', '持有', '2019-02-01', '3');
INSERT INTO `research_report` VALUES ('21', '中国寿险市场：下一个五年的增长引擎：产品保障升级与创新', '麦肯锡咨询', '无', null, '2019-02-01', '3');
INSERT INTO `research_report` VALUES ('22', '保险行业重大事件快评：短期波动不掩长期价值', '国信证券', '无', '增持', '2019-01-31', '3');
INSERT INTO `research_report` VALUES ('23', '12月保费数据点评：保费增速缓行,新单保费平安实现正增长', '中银国际', '无', null, '2019-01-30', '3');
INSERT INTO `research_report` VALUES ('24', '关于保险投资端松绑事项的点评：新规投资端松绑有望缓解市场投资', '长城证券', '无', null, '2019-01-30', '3');
INSERT INTO `research_report` VALUES ('25', '保险行业1-12月数据点评：人身险翘尾收官,财险增速仍下滑', '万联证券', '维持', '增持', '2019-01-30', '3');
INSERT INTO `research_report` VALUES ('26', '保险行业跟踪报告：增速回暖,利率还寒‚最难将息', '华创证券', '维持', '持有', '2019-01-25', '3');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_code` varchar(255) DEFAULT NULL COMMENT '股票代码',
  `stock_name` varchar(255) DEFAULT NULL COMMENT '股票简称',
  `purchase_code` varchar(255) DEFAULT NULL COMMENT '申购代码',
  `total_num` int(11) DEFAULT NULL,
  `online_distribution` int(11) DEFAULT NULL COMMENT '网上发行',
  `market_capitalization` double DEFAULT NULL,
  `purchase_ceiling` double DEFAULT NULL,
  `issue_price` double DEFAULT NULL,
  `latest_price` double DEFAULT NULL,
  `first_day_close` double DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `date_publication_winning_number` date DEFAULT NULL,
  `date_successful_payment` date DEFAULT NULL,
  `listing_date` date DEFAULT NULL,
  `announcement_date_online_signing_rate` date DEFAULT NULL,
  `ipo_pe_ratio` double DEFAULT NULL,
  `winning_rate` double DEFAULT NULL,
  `money_for_each` int(11) DEFAULT NULL,
  `frozen_funds_online` int(11) DEFAULT NULL,
  `frozen_funds_offline` int(11) DEFAULT NULL,
  `frozen_funds` int(11) DEFAULT NULL,
  `first_day_open` double DEFAULT NULL,
  `first_day_gain` varchar(255) DEFAULT NULL,
  `turnover_rate` varchar(255) DEFAULT NULL,
  `sum_money` int(11) DEFAULT NULL,
  `thaw_date` date DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `stock_code` (`stock_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '603681', '永冠新材', '732681', '4165', '1666', '16', '1.6', '10', '10', null, '2019-03-14', '2019-03-18', '2019-03-18', null, null, '22.98', null, '415', '125', '155', '4865', '3.5', '45%', '20%', '486', null);
INSERT INTO `stock` VALUES ('2', '002958', '青农商行', '002958', '55556', '16667', '166.5', '16.65', '3.96', '3.96', null, '2019-03-13', '2019-03-15', '2019-03-15', null, null, '10.74', null, '820', '851', '412', '487', '1.5', '25%', '25%', '456', null);
INSERT INTO `stock` VALUES ('3', '002950', '奥美医疗', '002950', '4800', '1440', '14', '1.4', '11.03', null, null, '2019-02-27', '2019-03-01', '2019-03-01', null, null, '22.03', null, '96', '434', '451', '4697', null, '69%', '14%', '485', '2019-02-15');
INSERT INTO `stock` VALUES ('4', '600928', '西安银行', '730928', '44444', '40000', '133', '13.3', '4.68', '4.68', null, '2019-02-19', '2019-02-21', '2019-01-21', '2019-03-01', '2019-02-20', '10.28', '0.2084', '167', '361', '125', '416', null, '54%', '36%', '745', null);
INSERT INTO `stock` VALUES ('5', '300758', '七彩化学', '300758', '2668', '2401', '10.5', '1.05', '22.09', '31.81', null, '2019-02-13', '2019-02-15', '2019-02-15', '2019-02-22', null, '22.99', '0.031', '161', '145', '412', '8964', '6.2', '48%', '14%', '756', null);
INSERT INTO `stock` VALUES ('6', '002949', '华阳国际', '002949', '4903', '4413', '19.5', '1.95', '10.51', '10.51', null, '2019-02-13', '2019-02-15', '2019-02-15', '2019-02-26', '2019-03-02', '22.99', '0.0375', '119', '145', '451', '4946', '4.3', '36%', '15%', '478', '2019-02-22');
INSERT INTO `stock` VALUES ('7', '603956', '威派格', '732956', '4260', '3834', '12', '1.2', '5.7', '8.21', '0.001', '2019-02-12', '2019-02-14', '2019-02-14', '2019-02-22', null, '22.97', '0.0493', '176', '545', '124', '794', '0.4', '45%', '45%', '964', null);
INSERT INTO `stock` VALUES ('8', '300761', '立华股份', '300761', '4128', '3715', '12', '1.2', '29.35', '61.88', '42.26', '2019-01-30', '2019-02-01', '2019-02-01', '2019-02-18', null, '16.05', '0.0488', '111', '264', '450', '4671', '0.9', '48%', '34%', '874', '2019-02-23');
INSERT INTO `stock` VALUES ('9', '601865', '福莱特', '780865', '15000', '13500', '45', '4.5', '2', '4.64', '2.88', '2019-01-29', '2019-01-31', '2019-01-31', '2019-02-15', '2019-02-28', '9.56', '0.102', '104', '256', '145', '1647', '1.25', '48%', '15%', '415', null);
INSERT INTO `stock` VALUES ('10', '002947', '恒铭达', '002947', '3038', '2734', '12', '1.2', '18.72', '53.6', '26.96', '2019-01-23', '2019-01-25', '2019-01-25', '2019-02-01', null, '22.99', '0.0322', '107', '456', '156', '3512', '3.36', '47%', '15%', '784', null);
INSERT INTO `stock` VALUES ('11', '300755', '华致酒行', '300755', '5789', '5210', '23', '2.3', '16.79', '28.66', '24.18', '2019-01-17', '2019-01-21', '2019-01-21', '2019-01-29', null, '22.98', '0.0467', '198', '452', '145', '451', '2.28', '36%', '41%', '876', '2019-02-24');
INSERT INTO `stock` VALUES ('12', '603351', '威尔药业', '732351', '1667', '1667', '16', '1.6', '35.5', '60.21', '51.12', '2019-01-16', '2019-01-18', '2019-01-18', '2019-01-30', '2019-02-20', '22.99', '0.0183', '163', '147', '136', '1547', '1.35', '49%', '14%', '786', null);
INSERT INTO `stock` VALUES ('13', '002946', '新乳业', '002946', '8537', '7683', '25.5', '2.55', '5.45', '18.91', '7.85', '2019-01-16', '2019-01-18', '2019-01-18', '2019-01-25', null, '22.96', '0.0602', '255', '156', '149', '1546', '1.01', '48%', '35%', '784', null);
INSERT INTO `stock` VALUES ('14', '300759', '康龙化成', '300759', '6563', '5907', '19.5', '1.95', '7.66', '37.29', '11.03', '2019-01-15', '2019-01-17', '2019-01-17', '2019-01-28', '2019-02-26', '22.99', '0.0567', '389', '457', '105', '4613', '2.05', '44%', '28%', '786', null);

-- ----------------------------
-- Table structure for stock_items
-- ----------------------------
DROP TABLE IF EXISTS `stock_items`;
CREATE TABLE `stock_items` (
  `itme_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_status` int(11) DEFAULT NULL,
  `stock_code` varchar(11) DEFAULT NULL,
  `issue_mode` int(11) DEFAULT NULL,
  `purchase_status` int(11) DEFAULT NULL,
  `items_underwriter` int(11) DEFAULT NULL,
  `items_ballot` int(11) DEFAULT NULL,
  `items_perform` int(11) DEFAULT NULL,
  `business_scope` varchar(255) DEFAULT NULL,
  `main_business` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itme_id`),
  KEY `issue_status` (`issue_status`),
  KEY `issue_mode` (`issue_mode`),
  KEY `purchase_status` (`purchase_status`),
  KEY `stock_items_ibfk_2` (`stock_code`),
  KEY `items_underwriter` (`items_underwriter`),
  KEY `items_ballot` (`items_ballot`),
  KEY `items_perform` (`items_perform`),
  CONSTRAINT `stock_items_ibfk_1` FOREIGN KEY (`issue_status`) REFERENCES `issue_status` (`status_id`),
  CONSTRAINT `stock_items_ibfk_2` FOREIGN KEY (`stock_code`) REFERENCES `stock` (`stock_code`),
  CONSTRAINT `stock_items_ibfk_3` FOREIGN KEY (`issue_mode`) REFERENCES `issue_mode` (`mode_id`),
  CONSTRAINT `stock_items_ibfk_4` FOREIGN KEY (`purchase_status`) REFERENCES `purchase_status` (`status_id`),
  CONSTRAINT `stock_items_ibfk_5` FOREIGN KEY (`items_underwriter`) REFERENCES `underwriter` (`underwriter_id`),
  CONSTRAINT `stock_items_ibfk_6` FOREIGN KEY (`items_ballot`) REFERENCES `ballot_number` (`ballot_number_id`),
  CONSTRAINT `stock_items_ibfk_7` FOREIGN KEY (`items_perform`) REFERENCES `first_day_performance` (`performance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_items
-- ----------------------------
INSERT INTO `stock_items` VALUES ('1', '1', '603681', '1', '1', '1', null, null, '生产胶带,包装装潢印刷(限分支经营),经营本企业自产产品的出口业务和本企业所需的机械设备、零配件、原辅材料的进口业务(不另附进出口上面目录),销售橡胶制品、粘胶制品、日用百货、纸制品、胶带原纸,离型纸,化工产品及原料(除危险化学品)、纺织品 、离型膜、包装材料,实业投资,投资管理。但国家限制公司经营或禁止进出口的商品及技术除外。', '各类胶带产品的研发、生产和销售。');
INSERT INTO `stock_items` VALUES ('2', '2', '002958', '2', '2', '6', null, null, '吸收本外币公众存款;发放本外币短期、中期和长期贷款;办理国内外结算;办理票据承兑与贴现;代理发行、代理兑付、承销政府债券;买卖政府债券、金融债券;从事本外币同业拆借;从事银行卡(借记卡)业务; 代理收付款项及代理保险业务;提供保管箱服务; 外汇汇款; 买卖、代理买卖外汇;提供信用证服务及担保; 外汇资信调查、咨询和见证业务;基金销售;经中国银行业监督管理委员会批准的其他业务。( 依法须经批准的项目,经相关部门批准后方可开展经营活动)。', '本行主营业务主要包括公司银行业务、零售银行业务、资金业务及国际业务。');
INSERT INTO `stock_items` VALUES ('3', '3', '002950', '3', '3', '7', '1', null, '生产、销售、研发医用卫生材料、无纺布制品及其它医疗用品、卫生用品、体育用品、婴儿用品、纺织、服装;货物进出口贸易(不包括进口商品分销业务;国家限制公司经营或限制进出口的商品或技术除外);机械设备租赁;房屋出租;商务信息咨询服务、会务会展服务(按许可证或批准文件核定内容经营,未取得相关有效许可或批准文件的,不得经营)', '医用敷料等一次性医用耗材的研发、生产和销售');
INSERT INTO `stock_items` VALUES ('4', '4', '300761', '4', '4', '2', '2', '2', '鸡:雪山鸡(配套系)(祖代)生产(限分支机构生产)、鸡:雪山鸡(配套系)(父母代)经营(限分支机构经营)【国家禁止类的除外】;苗鸡、商品鸡饲养(限分支机构饲养);(肉鸡)配合饲料生产;粮食收购(限于自用)。商品鸡、饲料原料、饲料添加剂的国内采购、批发(不涉及国营贸易管理商品,涉及配额、许可证管理商品的,按国家有关规定办理申请)。(依法须经批准的项目,经相关部门批准后方可开展经营活动)', '黄羽鸡、生猪、肉鹅的生产与销售');
INSERT INTO `stock_items` VALUES ('5', '5', '600928', '5', '5', '3', '3', '3', '吸收公众存款;发放短期、中期和长期贷款;办理国内结算;办理票据贴现;发行金融债券;代理发行、代理兑付、承销政府债券;买卖政府债券;从事同业拆借;提供担保;代理收付款项及代理保险业务;提供保管箱业务;办理地方财政信用周转使用资金的委托贷款业务;外汇存款、外汇贷款、外汇汇款、外汇兑换、国际结算、外汇票据的承兑和贴现;结汇、售汇、代客外汇买卖;资信调查、咨询、见证业务;经中国银行业监督管理委员会批准的其他业务。', '金融业务、零售金融业务和资金业务等');
INSERT INTO `stock_items` VALUES ('6', '6', '300758', '6', '6', '4', '4', '4', '许可经营项目:1,8-萘二甲酸酐生产。一般经营项目:染、颜料和染、颜料中间体、水处理剂、化工机械、化工防腐剂、润滑剂、医药中间体、农药中间体、精细化工产品、化工原料生产销售。经营货物及技术进出口。(依法须经批准的项目,经相关部门批准后方可开展经营活动。)', '高性能有机颜料、溶剂染料及相关中间体的研发、生产与销售');
INSERT INTO `stock_items` VALUES ('7', '7', '002949', '7', '7', '5', '5', '5', '工程设计及咨询,工程监理,项目管理;工程总承包及所需设备材料的采购和销售;兴办实业(具体项目另行申报);经营进出口业务。(以上内容法律、行政法规、国务院决定禁止的项目除外,限制的项目取得许可后方可经营)。', '建筑设计和研发及其延伸业务');
INSERT INTO `stock_items` VALUES ('8', '8', '603956', '8', '8', '8', '6', '6', '在水资源专业领域内从事技术开发、技术咨询、技术转让、技术服务,给排水成套设备、金属制品生产、销售,直饮水设备生产、销售,软件开发、销售,机电设备、电气设备、五金交电批兼零,普通机电设备维修,商务信息咨询,从事货物及技术的进出口业务,环保工程专业承包、机电安装建设工程施工,电子建设工程专业施工,建筑智能化建设工程专业施工,建筑装修装饰建设工程专业施工。(依法须经批准的项目,经相关部门批准后方可开展经营活动)', '从事二次供水设备的研发、生产、销售与服务,同时公司逐步开展二次供水智慧管理平台系统的研发、搭建和运维,为二次供水设备的集中化管理提供支持');
INSERT INTO `stock_items` VALUES ('9', '9', '601865', '9', '9', '9', '7', '7', '特种玻璃、镜子、玻璃制品的生产,建筑材料、贵金属的批发,码头货物装卸服务,玻璃、镜子、设备、玻璃原材料及相关辅料、玻璃窑炉材料的进出口业务。以上涉及许可证的凭证经营。', '光伏玻璃、浮法玻璃、工程玻璃和家居玻璃的研发、生产和销售,以及玻璃用石英矿的开采和销售和EPC光伏电站工程建设');
INSERT INTO `stock_items` VALUES ('10', '10', '002947', '10', '10', '10', '8', '8', '电子材料及器件、绝缘材料及器件、光学材料及器件、纳米材料及器件、精密结构件、纸制品的研发、设计、加工、生产、销售;货物及技术的进出口业务;包装装潢印刷品印刷(按《印刷许可证》核定范围核定类别经营)(前述经营项目中法律、行政法规规定前置许可经营、限制经营、禁止经营的除外)(依法须经批准的项目,经相关部门批准后方可开展经营活动)', '消费电子功能性器件、消费电子防护产品、消费电子外盒保护膜的设计、研发、生产与销售');

-- ----------------------------
-- Table structure for underwriter
-- ----------------------------
DROP TABLE IF EXISTS `underwriter`;
CREATE TABLE `underwriter` (
  `underwriter_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_underwriter` varchar(255) DEFAULT NULL,
  `underwriter_manner` varchar(255) DEFAULT NULL,
  `preissue_net_assets_per_share` double DEFAULT NULL,
  `net_assets_per_share_after_issuance` double DEFAULT NULL,
  `dividend_policy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`underwriter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of underwriter
-- ----------------------------
INSERT INTO `underwriter` VALUES ('1', '东兴证券股份有限公司', '余额包销', '6.97', '7.39', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('2', '中泰证券股份有限公司', '余额包销', '9.34', '11.23', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('3', '中信证券股份有限公司', '余额包销', '4.68', '4.66', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('4', '长江证券承销保荐有限公司', '余额包销', '5.78', '9.43', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('5', '中信证券股份有限公司', '余额包销', '3.38', '4.94', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('6', '招商证券股份有限公司', '余额包销', '3.95', '3.94', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('7', '中信证券股份有限公司	', '余额包销', '3.28', '4.04', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('8', '中信建投证券股份有限公司', '余额包销', '1.97', '2.25', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('9', '广发证券股份有限公司', '余额包销', '1.92', '1.91', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('10', '国金证券股份有限公司', '余额包销', '5.12', '8.17', '股票发行前公司滚存未分配利润由发行后的新老股东按持股比例共享。');
INSERT INTO `underwriter` VALUES ('11', null, null, null, null, null);
