/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : moa

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2013-07-16 12:51:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `html`
-- ----------------------------
DROP TABLE IF EXISTS `html`;
CREATE TABLE `html` (
  `id` int(11) NOT NULL auto_increment,
  `company` varchar(200) default NULL,
  `url` varchar(220) character set gbk default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of html
-- ----------------------------
INSERT INTO `html` VALUES ('26826', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('26827', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('26828', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('26829', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('26830', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('26831', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('26832', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('26833', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('26834', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('26835', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('26836', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('26837', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('26838', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('26839', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('26840', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('26841', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('26842', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('26843', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('26844', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('26845', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('26846', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('26847', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('26848', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('26849', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('26850', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('26851', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('26852', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('26853', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('26854', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('26855', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('26856', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('26857', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('26858', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('26859', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('26860', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('26861', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('26862', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('26863', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('26864', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('26865', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('26866', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('26867', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('26868', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('26869', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('26870', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('26871', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('26872', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('26873', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('26874', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('26875', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('26876', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('26877', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('26878', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('26879', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('26880', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('26881', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('26882', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('26883', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('26884', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('26885', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('26886', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('26887', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('26888', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('26889', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('26890', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('26891', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('26892', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('26893', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('26894', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('26895', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('26896', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('26897', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('26898', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('26899', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('26900', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('26901', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('26902', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('26903', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('26904', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('26905', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('26906', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('26907', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('26908', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('26909', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('26910', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('26911', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('26912', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('26913', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('26914', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('26915', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('26916', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('26917', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26918', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26919', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26920', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26921', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26922', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26923', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26924', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('26925', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('26926', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('26927', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('26928', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('26929', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('26930', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('26931', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('26932', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('26933', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('26934', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('26935', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('26936', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('26937', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('26938', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('26939', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('26940', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('26941', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('26942', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('26943', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('26944', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('26945', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('26946', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('26947', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('26948', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('26949', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('26950', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('26951', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('26952', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('26953', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('26954', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('26955', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('26956', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('26957', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('26958', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('26959', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('26960', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('26961', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('26962', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('26963', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('26964', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('26965', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('26966', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('26967', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('26968', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('26969', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('26970', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('26971', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('26972', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('26973', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('26974', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('26975', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('26976', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('26977', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('26978', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('26979', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('26980', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('26981', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('26982', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('26983', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('26984', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('26985', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('26986', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('26987', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('26988', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('26989', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('26990', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('26991', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('26992', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('26993', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('26994', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('26995', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('26996', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('26997', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('26998', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('26999', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27000', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27001', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27002', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27003', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27004', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27005', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27006', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27007', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27008', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27009', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27010', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27011', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27012', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27013', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27014', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27015', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27016', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27017', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27018', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27019', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27020', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27021', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27022', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27023', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27024', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('27025', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('27026', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('27027', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('27028', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('27029', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('27030', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('27031', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('27032', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('27033', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('27034', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('27035', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('27036', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('27037', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('27038', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('27039', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('27040', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('27041', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('27042', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('27043', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('27044', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('27045', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('27046', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('27047', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('27048', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('27049', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('27050', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('27051', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('27052', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('27053', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('27054', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('27055', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('27056', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('27057', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('27058', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('27059', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('27060', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('27061', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('27062', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('27063', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('27064', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('27065', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('27066', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('27067', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('27068', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('27069', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('27070', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('27071', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('27072', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('27073', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('27074', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('27075', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('27076', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('27077', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('27078', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('27079', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('27080', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('27081', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('27082', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('27083', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('27084', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('27085', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('27086', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('27087', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('27088', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('27089', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('27090', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('27091', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('27092', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('27093', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('27094', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('27095', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('27096', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('27097', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('27098', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27099', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27100', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27101', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27102', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27103', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27104', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27105', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27106', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27107', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27108', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27109', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27110', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27111', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27112', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27113', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27114', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27115', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27116', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27117', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27118', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27119', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27120', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27121', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27122', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27123', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('27124', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('27125', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('27126', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('27127', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('27128', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('27129', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('27130', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('27131', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('27132', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('27133', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('27134', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('27135', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('27136', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('27137', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('27138', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('27139', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('27140', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('27141', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('27142', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('27143', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('27144', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('27145', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('27146', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('27147', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('27148', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('27149', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('27150', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('27151', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('27152', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('27153', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('27154', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('27155', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('27156', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('27157', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('27158', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('27159', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('27160', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('27161', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('27162', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('27163', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('27164', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('27165', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('27166', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('27167', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('27168', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('27169', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('27170', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('27171', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('27172', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('27173', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('27174', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('27175', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('27176', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('27177', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('27178', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('27179', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('27180', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('27181', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('27182', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('27183', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('27184', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('27185', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('27186', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('27187', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('27188', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('27189', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('27190', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('27191', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('27192', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('27193', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('27194', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('27195', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('27196', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('27197', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27198', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27199', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27200', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27201', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27202', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27203', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27204', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27205', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27206', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27207', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27208', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27209', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27210', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27211', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27212', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27213', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27214', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27215', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27216', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27217', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27218', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27219', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27220', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27221', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27222', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('27223', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('27224', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('27225', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('27226', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('27227', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('27228', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('27229', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('27230', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('27231', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('27232', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('27233', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('27234', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('27235', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('27236', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('27237', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('27238', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('27239', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('27240', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('27241', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('27242', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('27243', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('27244', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('27245', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('27246', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('27247', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('27248', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('27249', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('27250', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('27251', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('27252', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('27253', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('27254', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('27255', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('27256', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('27257', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('27258', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('27259', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('27260', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('27261', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('27262', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('27263', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('27264', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('27265', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('27266', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('27267', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('27268', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('27269', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('27270', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('27271', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('27272', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('27273', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('27274', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('27275', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('27276', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('27277', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('27278', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('27279', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('27280', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('27281', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('27282', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('27283', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('27284', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('27285', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('27286', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('27287', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('27288', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('27289', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('27290', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('27291', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('27292', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('27293', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('27294', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('27295', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('27296', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27297', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27298', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27299', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27300', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27301', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27302', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27303', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27304', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27305', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27306', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27307', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27308', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27309', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27310', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27311', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27312', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27313', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27314', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27315', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27316', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27317', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27318', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27319', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27320', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27321', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('27322', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('27323', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('27324', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('27325', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('27326', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('27327', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('27328', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('27329', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('27330', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('27331', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('27332', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('27333', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('27334', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('27335', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('27336', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('27337', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('27338', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('27339', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('27340', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('27341', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('27342', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('27343', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('27344', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('27345', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('27346', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('27347', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('27348', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('27349', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('27350', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('27351', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('27352', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('27353', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('27354', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('27355', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('27356', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('27357', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('27358', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('27359', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('27360', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('27361', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('27362', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('27363', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('27364', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('27365', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('27366', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('27367', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('27368', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('27369', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('27370', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('27371', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('27372', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('27373', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('27374', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('27375', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('27376', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('27377', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('27378', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('27379', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('27380', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('27381', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('27382', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('27383', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('27384', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('27385', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('27386', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('27387', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('27388', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('27389', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('27390', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('27391', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('27392', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('27393', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('27394', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('27395', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27396', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27397', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27398', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27399', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27400', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27401', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27402', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27403', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27404', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27405', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27406', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27407', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27408', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27409', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27410', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27411', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27412', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27413', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27414', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27415', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27416', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27417', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27418', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27419', '[末页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27420', '更多>>', 'http://user.goodjobs.cn/dispatcher.php/action/Vip');
INSERT INTO `html` VALUES ('27421', '?安徽省交通建设有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=13867');
INSERT INTO `html` VALUES ('27422', '资料员', 'http://ehr.goodjobs.cn/show.php?jobID=387952');
INSERT INTO `html` VALUES ('27423', '?中国光大银行蚌埠分行', 'http://ehr.goodjobs.cn/show.php?corpID=26921');
INSERT INTO `html` VALUES ('27424', '支行负责人', 'http://ehr.goodjobs.cn/show.php?jobID=391237');
INSERT INTO `html` VALUES ('27425', '?合肥达内软件有限公司科大校区', 'http://ehr.goodjobs.cn/show.php?corpID=25321');
INSERT INTO `html` VALUES ('27426', '应届生4W/年起', 'http://ehr.goodjobs.cn/show.php?jobID=356034');
INSERT INTO `html` VALUES ('27427', '?南翔万商集团', 'http://ehr.goodjobs.cn/show.php?corpID=16312');
INSERT INTO `html` VALUES ('27428', '电子商务运营主管', 'http://ehr.goodjobs.cn/show.php?jobID=350979');
INSERT INTO `html` VALUES ('27429', '?正奇安徽金融控股有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24516');
INSERT INTO `html` VALUES ('27430', '典当项目经理', 'http://ehr.goodjobs.cn/show.php?jobID=395110');
INSERT INTO `html` VALUES ('27431', '?蓝鼎投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=11460');
INSERT INTO `html` VALUES ('27432', '网络管理员', 'http://ehr.goodjobs.cn/show.php?jobID=122485');
INSERT INTO `html` VALUES ('27433', '?安徽省高速地产集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13157');
INSERT INTO `html` VALUES ('27434', '土建造价工程师', 'http://ehr.goodjobs.cn/show.php?jobID=384081');
INSERT INTO `html` VALUES ('27435', '?合肥美御殿文化传播有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27265');
INSERT INTO `html` VALUES ('27436', '大堂经理', 'http://ehr.goodjobs.cn/show.php?jobID=398484');
INSERT INTO `html` VALUES ('27437', '?安徽烽火台卫星导航研究所', 'http://ehr.goodjobs.cn/show.php?corpID=8203');
INSERT INTO `html` VALUES ('27438', '市场部总监', 'http://ehr.goodjobs.cn/show.php?jobID=233237');
INSERT INTO `html` VALUES ('27439', '?合肥零五五一企业集团', 'http://ehr.goodjobs.cn/show.php?corpID=25067');
INSERT INTO `html` VALUES ('27440', '编辑', 'http://ehr.goodjobs.cn/show.php?jobID=396088');
INSERT INTO `html` VALUES ('27441', '?新华阳光集团', 'http://ehr.goodjobs.cn/show.php?corpID=14361');
INSERT INTO `html` VALUES ('27442', '维修工（急招）', 'http://ehr.goodjobs.cn/show.php?jobID=235832');
INSERT INTO `html` VALUES ('27443', '?新安人才网', 'http://ehr.goodjobs.cn/show.php?corpID=42');
INSERT INTO `html` VALUES ('27444', '课程顾问（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=179980');
INSERT INTO `html` VALUES ('27445', '?合肥迪塞宝建材有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=20125');
INSERT INTO `html` VALUES ('27446', '商务代表（高新区', 'http://ehr.goodjobs.cn/show.php?jobID=367364');
INSERT INTO `html` VALUES ('27447', '?安徽网新科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=62');
INSERT INTO `html` VALUES ('27448', '销售主管[蚌埠]', 'http://ehr.goodjobs.cn/show.php?jobID=111109');
INSERT INTO `html` VALUES ('27449', '?合肥皖讯科技发展有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=25696');
INSERT INTO `html` VALUES ('27450', '销售精英', 'http://ehr.goodjobs.cn/show.php?jobID=389404');
INSERT INTO `html` VALUES ('27451', '?合肥康羽生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26709');
INSERT INTO `html` VALUES ('27452', '诚聘储备销售主管', 'http://ehr.goodjobs.cn/show.php?jobID=386325');
INSERT INTO `html` VALUES ('27453', '?安徽任我行汽车服务有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=14337');
INSERT INTO `html` VALUES ('27454', '文案策划专员', 'http://ehr.goodjobs.cn/show.php?jobID=388882');
INSERT INTO `html` VALUES ('27455', '?英孚教育', 'http://ehr.goodjobs.cn/show.php?corpID=8135');
INSERT INTO `html` VALUES ('27456', '课程顾问(财富广', 'http://ehr.goodjobs.cn/show.php?jobID=321155');
INSERT INTO `html` VALUES ('27457', '?合肥阿斯顿英语培训学校', 'http://ehr.goodjobs.cn/show.php?corpID=12238');
INSERT INTO `html` VALUES ('27458', '市场营销总监', 'http://ehr.goodjobs.cn/show.php?jobID=320007');
INSERT INTO `html` VALUES ('27459', '?安徽乐客来置业有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10831');
INSERT INTO `html` VALUES ('27460', '行政经理/主管/', 'http://ehr.goodjobs.cn/show.php?jobID=384279');
INSERT INTO `html` VALUES ('27461', '?合肥大智慧信息技术有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=21021');
INSERT INTO `html` VALUES ('27462', '储备干部', 'http://ehr.goodjobs.cn/show.php?jobID=386867');
INSERT INTO `html` VALUES ('27463', '?安徽省百和房地产代理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24238');
INSERT INTO `html` VALUES ('27464', '房产经纪人', 'http://ehr.goodjobs.cn/show.php?jobID=336526');
INSERT INTO `html` VALUES ('27465', '?安徽省丰予德快餐服务有限责任公司', 'http://ehr.goodjobs.cn/show.php?corpID=19064');
INSERT INTO `html` VALUES ('27466', '储备店长、副店长', 'http://ehr.goodjobs.cn/show.php?jobID=311809');
INSERT INTO `html` VALUES ('27467', '?快乐学习教育科技集团', 'http://ehr.goodjobs.cn/show.php?corpID=25024');
INSERT INTO `html` VALUES ('27468', '课程顾问', 'http://ehr.goodjobs.cn/show.php?jobID=350465');
INSERT INTO `html` VALUES ('27469', '?安徽大胜集团', 'http://ehr.goodjobs.cn/show.php?corpID=19388');
INSERT INTO `html` VALUES ('27470', '仓库管理员', 'http://ehr.goodjobs.cn/show.php?jobID=391695');
INSERT INTO `html` VALUES ('27471', '?合肥居然之家家居建材市场有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=13541');
INSERT INTO `html` VALUES ('27472', '企划（滨湖店）', 'http://ehr.goodjobs.cn/show.php?jobID=384324');
INSERT INTO `html` VALUES ('27473', '?合肥佳海生物科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=24973');
INSERT INTO `html` VALUES ('27474', '电话销售', 'http://ehr.goodjobs.cn/show.php?jobID=350233');
INSERT INTO `html` VALUES ('27475', '?安徽华强建设集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=9787');
INSERT INTO `html` VALUES ('27476', '资料管理员', 'http://ehr.goodjobs.cn/show.php?jobID=401324');
INSERT INTO `html` VALUES ('27477', '?安徽桑乐金股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=7735');
INSERT INTO `html` VALUES ('27478', '设计师（芜湖）', 'http://ehr.goodjobs.cn/show.php?jobID=140693');
INSERT INTO `html` VALUES ('27479', '?合肥恒信德龙汽车商业管理有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=26834');
INSERT INTO `html` VALUES ('27480', '别克4S店―大客', 'http://ehr.goodjobs.cn/show.php?jobID=389141');
INSERT INTO `html` VALUES ('27481', '?天长民生村镇银行股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=27253');
INSERT INTO `html` VALUES ('27482', '业务拓展部负责人', 'http://ehr.goodjobs.cn/show.php?jobID=398290');
INSERT INTO `html` VALUES ('27483', '?安徽出众教育文化咨询有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18794');
INSERT INTO `html` VALUES ('27484', '学管师', 'http://ehr.goodjobs.cn/show.php?jobID=247040');
INSERT INTO `html` VALUES ('27485', '?安徽依立腾工贸有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12857');
INSERT INTO `html` VALUES ('27486', '服装买手', 'http://ehr.goodjobs.cn/show.php?jobID=242223');
INSERT INTO `html` VALUES ('27487', '?安徽桐新广告装饰有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=8171');
INSERT INTO `html` VALUES ('27488', '销售总监', 'http://ehr.goodjobs.cn/show.php?jobID=400295');
INSERT INTO `html` VALUES ('27489', '?信地置业（合肥）有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=689');
INSERT INTO `html` VALUES ('27490', '招商主管/专员', 'http://ehr.goodjobs.cn/show.php?jobID=75568');
INSERT INTO `html` VALUES ('27491', '?达内时代科技集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=22883');
INSERT INTO `html` VALUES ('27492', '应届实习生30名', 'http://ehr.goodjobs.cn/show.php?jobID=355525');
INSERT INTO `html` VALUES ('27493', '?安徽老乡鸡餐饮有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=12859');
INSERT INTO `html` VALUES ('27494', '平面设计', 'http://ehr.goodjobs.cn/show.php?jobID=347522');
INSERT INTO `html` VALUES ('27495', '?北京中奥博联地产顾问股份有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=11576');
INSERT INTO `html` VALUES ('27496', '策划部总监', 'http://ehr.goodjobs.cn/show.php?jobID=391519');
INSERT INTO `html` VALUES ('27497', '?王子童装品牌服饰运营中心', 'http://ehr.goodjobs.cn/show.php?corpID=24173');
INSERT INTO `html` VALUES ('27498', '督导', 'http://ehr.goodjobs.cn/show.php?jobID=400487');
INSERT INTO `html` VALUES ('27499', '?安徽静安投资集团有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=10929');
INSERT INTO `html` VALUES ('27500', '行政主管', 'http://ehr.goodjobs.cn/show.php?jobID=324549');
INSERT INTO `html` VALUES ('27501', '?合肥客来福家居用品有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=18975');
INSERT INTO `html` VALUES ('27502', '网络推广', 'http://ehr.goodjobs.cn/show.php?jobID=296733');
INSERT INTO `html` VALUES ('27503', '?赛智（合肥）信息科技有限公司', 'http://ehr.goodjobs.cn/show.php?corpID=3725');
INSERT INTO `html` VALUES ('27504', '对美数据处理员', 'http://ehr.goodjobs.cn/show.php?jobID=376343');
INSERT INTO `html` VALUES ('27505', '?安徽青园集团', 'http://ehr.goodjobs.cn/show.php?corpID=11626');
INSERT INTO `html` VALUES ('27506', '设计员', 'http://ehr.goodjobs.cn/show.php?jobID=400675');
INSERT INTO `html` VALUES ('27507', '?安徽国购投资集团', 'http://ehr.goodjobs.cn/show.php?corpID=8648');
INSERT INTO `html` VALUES ('27508', '安装工程师', 'http://ehr.goodjobs.cn/show.php?jobID=313359');
INSERT INTO `html` VALUES ('27509', '?龙旭网络', 'http://ehr.goodjobs.cn/show.php?corpID=12885');
INSERT INTO `html` VALUES ('27510', '咨询顾问', 'http://ehr.goodjobs.cn/show.php?jobID=371241');
INSERT INTO `html` VALUES ('27511', '2', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27512', '3', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27513', '4', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27514', '5', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27515', '6', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27516', '7', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27517', '[下一页]', 'javascript:void(0)');
INSERT INTO `html` VALUES ('27518', '[末页]', 'javascript:void(0)');

-- ----------------------------
-- Table structure for `mapsearch`
-- ----------------------------
DROP TABLE IF EXISTS `mapsearch`;
CREATE TABLE `mapsearch` (
  `id` int(11) NOT NULL auto_increment,
  `lat` varchar(25) character set gbk default '',
  `lng` varchar(25) character set gbk default NULL,
  `formatted_address` varchar(150) character set gbk default '',
  `business` varchar(150) default NULL,
  `streetNumber` varchar(25) character set gbk default '',
  `street` varchar(35) character set gbk default '',
  `district` varchar(25) character set gbk default '',
  `city` varchar(25) character set gbk default '',
  `province` varchar(25) character set gbk default '',
  `cityCode` varchar(25) character set gbk default '',
  `addr` varchar(150) character set gbk default '',
  `distance` varchar(150) character set gbk default '',
  `name` varchar(150) character set gbk default '',
  `poiType` varchar(100) character set gbk default '',
  `tel` varchar(15) character set gbk default '',
  `zip` varchar(15) character set gbk default '',
  `x` varchar(25) character set gbk default '',
  `y` varchar(25) character set gbk default '',
  `status` varchar(5) character set gbk default '',
  `importDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mapsearch
-- ----------------------------
INSERT INTO `mapsearch` VALUES ('1', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', null);
INSERT INTO `mapsearch` VALUES ('2', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', null);
INSERT INTO `mapsearch` VALUES ('3', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', null);
INSERT INTO `mapsearch` VALUES ('4', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', '2013-07-16 00:00:00');
INSERT INTO `mapsearch` VALUES ('5', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', '2013-07-16 11:34:00');
INSERT INTO `mapsearch` VALUES ('6', '39.983424071404', '116.322987', '北京市海淀区中关村大街27号1101-08室', '人民大学,中关村,苏州街', 'null', '中关村大街', '海淀区', '北京市', '北京市', '131', '中关村大街19号新中关购物中心1楼', '112.983688', '星巴克新中关店', 'null', '(010)82486056', 'null', '116.32218215226', '39.983899777278', '0', '2013-07-16 00:00:00');

-- ----------------------------
-- Table structure for `quart`
-- ----------------------------
DROP TABLE IF EXISTS `quart`;
CREATE TABLE `quart` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(21) character set utf8 default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of quart
-- ----------------------------

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `typeId` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'admin', 'admin123', '1');
INSERT INTO `t_users` VALUES ('2', 'superadmin', 'admin123', '1');
