/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : linea

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 02/03/2022 15:50:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apoyos
-- ----------------------------
DROP TABLE IF EXISTS `apoyos`;
CREATE TABLE `apoyos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `folio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `representante` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_apoyo` int(255) NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `estatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `respuesta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `id_usuario` int(255) NULL DEFAULT NULL,
  `id_tramite` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apoyos
-- ----------------------------

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  INDEX `idx-auth_assignment-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item
-- ----------------------------

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for buena_conducta
-- ----------------------------
DROP TABLE IF EXISTS `buena_conducta`;
CREATE TABLE `buena_conducta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido_paterno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido_materno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nom_c` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nacionalidad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edad` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `originario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numero` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `calle` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `colonia` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codigo_postal` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foto` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `num_recibo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monto_recibo` decimal(8, 2) NULL DEFAULT NULL,
  `observaciones` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secretario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ini_secretario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usuario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ini_usuario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipo_carta_id` int(32) NULL DEFAULT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `firmado` int(10) NULL DEFAULT NULL,
  `firma_digital` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `folio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tipo_carta_`(`tipo_carta_id`) USING BTREE,
  CONSTRAINT `buena_conducta_ibfk_1` FOREIGN KEY (`tipo_carta_id`) REFERENCES `tipos_cartas` (`id_tipo_carta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13962 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of buena_conducta
-- ----------------------------
INSERT INTO `buena_conducta` VALUES (13889, 'DULCE ', 'HERNANDEZ  ', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'San Fernando', 'Conjunto Habitacional Hacienda San Rafael', '60180', '1', '2019-07-26', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13890, 'ESTRELLA ', 'COLIN ', 'CERANO', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '55', 'Ramón Danzos Palominos', '28 de Octubre', '60180', '1', '2019-07-02', '225198', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13896, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-07-10', '542', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13901, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '32', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'san', '60157', '1', '2019-09-24', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13902, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '12', 'sarabia', 'san', '60157', '1', '2019-09-24', '542', 321.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13903, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '32', 'Uruapan, Michoacán', '55', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-24', '225190', 321.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13904, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-24', '542', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13936, 'Luis', 'Ernesto', 'calderon', NULL, 'MEXICO', '40', 'URUAPAN, MICHOACAN', '1', 'Francisco Sarabia', 'san', '60157', '1', '2019-09-25', '225198', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13937, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '181-C', 'sarabia', 'san', '60157', '1', '2019-09-25', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13938, 'jose esaul', 'gomez', 'Gonzalez', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '55', 'San Fernando', 'san', '60157', '1', '2019-09-25', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13939, 'jose esaul', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '12', 'San Fernando', 'SAN URUAPAN', '60157', '1', '2019-09-25', '123', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13940, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'san', '60157', '1', '2019-09-25', '225198', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13941, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '1', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-25', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13942, 'jose esaul', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '181-C', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '60157', '1', '2019-09-25', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13943, 'jose esaul lio', 'gomez', 'CERANO', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '1', 'sarabia', 'Conjunto Habitacional Hacienda San Rafael', '60157', '1', '2019-09-25', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `buena_conducta` VALUES (13944, 'jose esaullol', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'San Fernando', 'SAN URUAPAN', '60157', '0', '2019-09-25', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '123');
INSERT INTO `buena_conducta` VALUES (13945, 'STEFANNY YARELI', ' RODRIGUEZ LINO ', 'HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', '28 de Octubre', '60157', '0', '2019-10-01', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 4, NULL, NULL, NULL, '5142');
INSERT INTO `buena_conducta` VALUES (13946, 'STEFANNY YARELI ', ' RODRIGUEZ ', 'LINO HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '12', 'Ramón Danzos Palominos', 'Conjunto Habitacional Hacienda San Rafael', '60221', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 3, NULL, NULL, NULL, '52697');
INSERT INTO `buena_conducta` VALUES (13947, 'STEFANNY STEFANNY ', 'LINO HERNANDEZ', 'RODRIGUEZ ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '60221', '0', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, ' \n            <p class=\"MsoNormal\" style=\"margin-top:47%; margin-left:14%; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">19</span></p>\n            <p class=\"MsoNormal MarginLat\" style=\"margin-bottom: 15% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que los CC. STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ y STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ comparecieron ante esta autoridad municipal y se identificaron \n                con  y  con número  y  respectivamente, la comparecencia tuvo como\n                propósito declarar que conocen a el(la) C. STEFANNY STEFANNY  LINO HERNANDEZ RODRIGUEZ , cuya fotografía aparece al margen izquierdo de\n                40 años de edad, con fecha de nacimiento  el día 01 de enero de 1970 en URUAPAN, MICHOACáN, mexicano(a);\n                que cuenta con Acta de Nacimiento número  Libro  Tomo  con fecha de registro 01 de enero de 1970\n                y que es hijo(a) de los CC.  , así mismo los comparecientes manifiestan que el(la) C. STEFANNY STEFANNY  LINO HERNANDEZ RODRIGUEZ ,\n                actualmente radica en , desde el mes de , quienes ademas bajo protesta de decir verdad manifiestan que saben y les consta\n                lo asentado.</span></p> \n    \n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a petición del(la) C. STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ, quien se identificó con \n                número ,para los fines legales a que haya lugar, a los 24 dias del mes de marzo del año 2020\n                en Uruapan, Michoacán, México</span></p> \n            <p class=\"MsoNormal\" style=\"text-align: center; margin-bottom:2%\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p><style>\n                    textarea {\n                                border-style: none;\n                                border-color: Transparent;\n                                overflow: auto;\n                                outline: none;\n                              }\n\n                              textarea:focus\n\n                            </style>\n\n                <!--<p class=\"MsoNormal\" style=\"text-align: center; margin-top:1%\" align=\"center\">ZTYxYTc4YzU3ZmI5ZDkyZTcxZmVmYTVkNTNhYjkxNDVhZmEzNjY4MQ==</p>-->                    \n\n                <p class=\"MsoNormal\" style=\"margin: 0 8.95pt 15px 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\n\n                <center><table style=\"margin-top:5%\"><td style=\"font-size:10px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /><center>Testigo</center></td><td style=\"font-size:10px; margin-left: 16%\">STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ<br /><center>Testigo</center></td></table></center>\n\n                <table style=\"margin-top:-4%; margin-left:8%;\">\n                    <tr>\n                        <td style=\"width:500px;\">\n                            <p class=\"MsoNormal MarginLat\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">JDMR/ jegh</span></p>\n                            <p class=\"MsoNormal MarginLat\" style=\"margin-top:-5%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\n                            <p style=\"margin-left:35%;margin-top:-3.5%\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">$666.00</span></p>\n                            <p style=\"margin-left:40%\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>225205</span></p>\n                        </td>\n\n                        <td style=\"width:500px;\">\n                            <p><img style=\"float:right;margin-top:;margin-right: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13947%26folio=63683\" alt=\"Resultado de imagen para qr\" width=\"121\" height=\"121\" /></p>\n                        </td>    \n                    </tr>\n                </table>', 1, 'ZTYxYTc4YzU3ZmI5ZDkyZTcxZmVmYTVkNTNhYjkxNDVhZmEzNjY4MQ==', '63683');
INSERT INTO `buena_conducta` VALUES (13948, 'jose esaul', 'gomez GOMEZ', 'HERNANDEZ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'Conjunto Habitacional Hacienda San Rafael', '60157', '0', '2019-10-01', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '72696');
INSERT INTO `buena_conducta` VALUES (13949, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 't4dmkv05lcf2b7jh6ox8p93szeqiay1nrgw');
INSERT INTO `buena_conducta` VALUES (13950, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'sarabia', 'san', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '7aycr');
INSERT INTO `buena_conducta` VALUES (13951, 'jose esau', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '1', 'San Fernando', '28 de Octubre', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'hm1bo563i4');
INSERT INTO `buena_conducta` VALUES (13952, 'Luis Mario ', 'Cardenas', 'Lopez', NULL, 'MEXICO', '45', 'URUAPAN, MICHOACAN', '1', 'Paseo de la reforma', 'Centro', '60180', '55', '2019-11-25', '6666666', 666666.00, 'Sin observaciones', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '04a8rydehm');
INSERT INTO `buena_conducta` VALUES (13953, 'jose ramon', 'san cristobal', 'casas', NULL, 'mexicano(a)', '55', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'SAN URUAPAN', '60221', '1', '2019-11-25', '225205', 166.00, '--', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'nxkqy57lp2');
INSERT INTO `buena_conducta` VALUES (13954, 'jose esaul', 'gomez', 'sd', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '1', 'sarabia', 'SAN URUAPAN', '60157', '55', '2019-11-25', '542', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'w5gfhyav08');
INSERT INTO `buena_conducta` VALUES (13955, 'Alan Montelongo', 'Cufre', 'Garcia', NULL, 'MEXICO', '40', 'URUAPAN, MICHOACAN', '1', 'San Fernando', 'SAN URUAPAN', '60157', '1', '2019-11-26', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, ' \n            <p class=\"MsoNormal\" style=\"margin-top:47%; margin-left:14%; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">19</span></p>\n            <p class=\"MsoNormal MarginLat\" style=\"margin-bottom: 15% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que los CC. JOSE LUIS MARTINEZ HERNANDEZ y STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ comparecieron ante esta autoridad municipal y se identificaron \n                con INE y Pasaporte con número 865-ALO94 y 6955-FJSA64 respectivamente, la comparecencia tuvo como\n                propósito declarar que conocen a el(la) C. ALAN MONTELONGO CUFRE GARCIA, cuya fotografía aparece al margen izquierdo de\n                40 años de edad, con fecha de nacimiento  el día 06 de enero de 1995 en URUAPAN, MICHOACAN, MEXICO;\n                que cuenta con Acta de Nacimiento número 01273 Libro 1 Tomo 07 con fecha de registro 12 de octubre de 2006\n                y que es hijo(a) de los CC. Pedro Bran Tovar Marta Santoyo Lopez, así mismo los comparecientes manifiestan que el(la) C. ALAN MONTELONGO CUFRE GARCIA,\n                actualmente radica en LOS ANGELES, CALIFORNIA, desde el mes de Enero de 2015, quienes ademas bajo protesta de decir verdad manifiestan que saben y les consta\n                lo asentado.</span></p> \n    \n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a petición del(la) C. VERONICA RAMIREZ JIMENEZ, quien se identificó con INE\n                número 164897-AKF64,para los fines legales a que haya lugar, a los 29 dias del mes de noviembre del año 2019\n                en Uruapan, Michoacán, México</span></p> \n            <p class=\"MsoNormal\" style=\"text-align: center; margin-bottom:2%\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p><style>\n                    textarea {\n                                border-style: none;\n                                border-color: Transparent;\n                                overflow: auto;\n                                outline: none;\n                              }\n\n                              textarea:focus\n\n                            </style>\n\n                <!--<p class=\"MsoNormal\" style=\"text-align: center; margin-top:1%\" align=\"center\">OGFkNDFhMGJhNWJiMWJlZTNjYjAxYTAyMDJlNTc0M2Q4NDliZjliYQ==</p>-->                    \n\n                <p class=\"MsoNormal\" style=\"margin: 0 8.95pt 15px 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\n\n                <center><table style=\"margin-top:5%\"><td style=\"font-size:10px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOSE LUIS MARTINEZ HERNANDEZ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /><center>Testigo</center></td><td style=\"font-size:10px; margin-left: 16%\">STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ<br /><center>Testigo</center></td></table></center>\n\n                <table style=\"margin-top:-4%; margin-left:8%;\">\n                    <tr>\n                        <td style=\"width:500px;\">\n                            <p class=\"MsoNormal MarginLat\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">JDMR/ jegh</span></p>\n                            <p class=\"MsoNormal MarginLat\" style=\"margin-top:-5%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\n                            <p style=\"margin-left:35%;margin-top:-3.5%\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">$666.00</span></p>\n                            <p style=\"margin-left:40%\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>225205</span></p>\n                        </td>\n\n                        <td style=\"width:500px;\">\n                            <p><img style=\"float:right;margin-top:;margin-right: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13955%26folio=zrgx9jm1w2\" alt=\"Resultado de imagen para qr\" width=\"121\" height=\"121\" /></p>\n                        </td>    \n                    </tr>\n                </table>', 1, 'OGFkNDFhMGJhNWJiMWJlZTNjYjAxYTAyMDJlNTc0M2Q4NDliZjliYQ==', 'zrgx9jm1w2');
INSERT INTO `buena_conducta` VALUES (13956, 'Alan', 'Martinez', 'Angel', NULL, 'MEXICO', '55', 'URUAPAN, MICHOACAN', '4', 'Paseo de la reforma', 'Centro', '16343', '1', '2019-11-29', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 2, NULL, NULL, NULL, 'dijpw9k6n3');
INSERT INTO `buena_conducta` VALUES (13957, 'Jose Luis E', 'Cardozo', 'Lopez', 'Jose Luis Cardozo Lopez', 'MEXICO', '24', 'URUAPAN, MICHOACAN', '785', 'Ramón Danzos Palominos', 'SAN URUAPAN', '46464', '1', '2019-12-02', '225205', 666.00, '', 'LIC. ANTONIO CHUELA MURGÍA', 'ACM', 'esaul', 'jegh', 1, '                                                                    \r\n                <p class=\"\" style=\"color:; margin-top:30%; margin-left:; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">Año 20___</span></p>\r\n                <p class=\"MsoNormal\" style=\"margin-bottom: 5% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. ANTONIO CHUELA MURGÍA, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\r\n                <p class=\"MsoNormal\" style=\" letter-spacing: 5px; margin-bottom:5%; margin-top:; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">CERTIFICA</span></p>\r\n                <p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que el (la) C. Jose Luis E Cardozo Lopez mexicano(a), de 24 a&ntilde;os de edad, originario(a) de URUAPAN, MICHOACAN; es persona que tiene su domicilio en la casa marcada con el n&uacute;mero 785 de la calle Ramón Danzos Palominos de la colonia SAN URUAPAN correspondiente a &eacute;ste municipio. De quien se presume tiene un modo honesto de vida ya que no cuenta con antecedentes administrativos, ni penales vigentes en la Secretar&iacute;a de Seguridad P&uacute;blica Municipal.</span></p>\r\n                <!--<p class=\"MsoNormal\" style=\"margin-bottom: 4.0pt; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">------------------------------------------------------------------------------------------------------------------</span></p>-->\r\n                <p class=\"MsoNormal\" style=\"text-align: justify; margin-top: 5%;\"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a solicitud del interesado(a), cuya fotograf&iacute;a es cancelada con el sello de &eacute;sta oficina para los usos legales correspondientes en la ciudad de Uruapan, Michoac&aacute;n, a 27 de marzo del a&ntilde;o 2020 dos mil veinte.</span></p>\r\n                <p class=\"MsoNormal\" style=\"text-align: center; margin: 8.0pt 0cm 5% 0cm;\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p>\r\n\r\n                <!-- <p class=\"MsoNormal\" style=\"text-align: center; margin: 4.0pt 0cm .0001pt 0cm;  \" align=\"center\">ODg5YTk2ZWIxNTJjN2U1OWI4YjRmZmNlMWUwZWVhZTM2MGYwNjM1NA==</p> -->\r\n                <p class=\"MsoNormal\" style=\"margin: 0cm 8.95pt 10% 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. ANTONIO CHUELA MURGÍA<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\r\n\r\n                <!--<p class=\"MsoNormal\" style=\"writing-mode: vertical-lr; transform: rotate(180deg);\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">PARA CERTIFICADOS EXPEDIDOS</span></p>\r\n                <p class=\"MsoNormal \"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">POR AUTORIDADES MUNICIPALES</span></p>-->\r\n\r\n\r\n                <table style=\"\">\r\n                    <tr>\r\n                        <td style=\"width:200px;\">\r\n                        <p class=\"MsoNormal \"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ACM/ jegh</span></p>\r\n                        <p class=\"MsoNormal \" style=\"margin-top:-2%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\r\n                        <!--<p class=\"MsoNormal\" style=\"margin-top:-2%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">VIGENCIA DE UN MES</span></strong></p>-->\r\n                        <p style=\"margin-left:;\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">Derechos: $ 666.00</span></p>\r\n                        <p style=\"margin-left:\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>Según recibo No. 225205</span></p>\r\n                        </td>\r\n\r\n                        <td style=\"width:450px;\">\r\n                        <!--<p style=\"margin-left:; font-size: 4.0pt; text-align: justify;\" align=\"\">El presente documento es emitido y firmado electrónicamente y es válido ante \r\n                todas las instituciones públicas y privadas, conforme a lo dispuesto por los \r\n                artículos 113, 123 fracciones I y IV y 129 párrafo tercero de la Constitución \r\n                Política del Estado Libre y Soberano del Estado de Michoacán de Ocampo; 6, 7, \r\n                8, 40 y 297 F del Código de Justicia Administrativa del Estado de Michoacán de  \r\n                Ocampo; 32 inciso b), fracciones XIII y XXIII, 92, 98 y 99 de la Ley Orgánica \r\n                Municipal del Estado de Michoacán de Ocampo; 14 fracción IV, 15 fracción I, 22, \r\n                25 y 26 de la Ley de Firma Electrónica Certificada del Estado de Michoacán de \r\n                Ocampo; 80, 81 y 196 fracción IV del Bando de Gobierno Municipal y demás \r\n                artículos y ordenamientos aplicables a la materia.\r\n                </p>-->\r\n                        </td>\r\n\r\n                        <td style=\"width:150px;\">\r\n                        <p><img style=\"float: ;margin-top: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13957%26folio=kbw9l8ofsj\"  alt=\"Resultado de imagen para qr\" width=\"150\" height=\"150\"  /></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n                <p class=\"MsoNormal\"><!-- [if gte vml 1]><v:shapetype id=\"_x0000_t202\"\r\n                 coordsize=\"21600,21600\" o:spt=\"202\" path=\"m,l,21600r21600,l21600,xe\">\r\n                 <v:stroke joinstyle=\"miter\"/>\r\n                 <v:path gradientshapeok=\"t\" o:connecttype=\"rect\"/>\r\n                </v:shapetype><v:shape id=\"_x0000_s1026\" type=\"#_x0000_t202\" style=\"position:absolute\";\r\n                 margin-left:96.8pt;margin-top:0;width:148pt;height:148pt;z-index:-251658240;\r\n                 mso-position-horizontal:right;mso-position-horizontal-relative:margin;\r\n                 mso-position-vertical:bottom;mso-position-vertical-relative:margin\"\r\n                 strokecolor=\"white\" strokeweight=\"0\">\r\n                 <v:textbox inset=\"0,0,0,0\"/>\r\n                 <w:wrap anchorx=\"margin\" anchory=\"margin\"/>\r\n                </v:shape><![endif]--><!-- [if !vml]--></p>\r\n                <p><!--[endif]--></p>\r\n                <p>&nbsp;</p>\r\n                <p>&nbsp;</p>', 1, 'ODg5YTk2ZWIxNTJjN2U1OWI4YjRmZmNlMWUwZWVhZTM2MGYwNjM1NA==', 'kbw9l8ofsj');
INSERT INTO `buena_conducta` VALUES (13958, 'Leonel', 'Beiza', 'Flores', 'Leonel Beiza Flores', 'MEXICO', '96', 'URUAPAN, MICHOACAN', '86', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '6265', '1', '2019-12-02', '752', 6523.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 2, NULL, NULL, NULL, 'el29db4ykv');

-- ----------------------------
-- Table structure for direcciones
-- ----------------------------
DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE `direcciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  `idsecretaria` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_departamento`(`idsecretaria`) USING BTREE,
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`idsecretaria`) REFERENCES `secretarias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of direcciones
-- ----------------------------
INSERT INTO `direcciones` VALUES (1, 'DIRECCIÓN DE LA UNIDAD DE TRANSPARENCIA Y ACCESO A LA INFORMACIÓN', 1, 20);
INSERT INTO `direcciones` VALUES (2, 'DIRECCIÓN DE PATRIMONIO MUNICIPAL', 1, 20);
INSERT INTO `direcciones` VALUES (3, 'DIRECCIÓN DE MEDIACIÓN Y CONCILIACIÓN MUNICIPAL', 1, 20);
INSERT INTO `direcciones` VALUES (4, 'DIRECCIÓN DE REGLAMENTACIÓN E INSPECCIÓN\r\n', 1, 20);
INSERT INTO `direcciones` VALUES (5, 'DIRECCIÓN DE PROTECCIÓN CIVIL\r\n', 1, 18);
INSERT INTO `direcciones` VALUES (6, 'DIRECCIÓN DE ARCHIVO MUNICIPAL\r\n', 1, 18);
INSERT INTO `direcciones` VALUES (7, 'DIRECCIÓN DE RELACIONES PÚBLICAS Y PROTOCOLO', 1, 19);
INSERT INTO `direcciones` VALUES (8, 'DIRECCIÓN DE COMUNICACIÓN SOCIAL', 1, 19);
INSERT INTO `direcciones` VALUES (9, 'ENLACE SRE', 1, 19);
INSERT INTO `direcciones` VALUES (10, 'DIRECCIÓN DE RECURSOS HUMANOS', 1, 8);
INSERT INTO `direcciones` VALUES (11, 'DIRECCIÓN DE ADQUISICIONES Y ARRENDAMIENTOS', 1, 8);
INSERT INTO `direcciones` VALUES (12, 'DIRECCIÓN DE DESARROLLO HUMANO E INSTITUCIONAL', 1, 8);
INSERT INTO `direcciones` VALUES (13, 'DIRECCIÓN DE SERVICIOS GENERALES', 1, 8);
INSERT INTO `direcciones` VALUES (14, 'DIRECCIÓN DE POLICIA PREVENTIVA', 1, 15);
INSERT INTO `direcciones` VALUES (15, 'DIRECCIÓN DE TRÁNSITO MUNICIPAL', 1, 15);
INSERT INTO `direcciones` VALUES (16, 'DIRECCIÓN DE PREVENCIÓN Y PROXIMIDAD SOCIAL', 1, 15);
INSERT INTO `direcciones` VALUES (17, 'DIRECCIÓN DE PROYECTOS E INFRAESTRUCTURA MUNICIPAL', 1, 12);
INSERT INTO `direcciones` VALUES (18, 'DIRECCIÓN DE MANTENIMIENTO Y CONSERVACIÓN', 1, 12);
INSERT INTO `direcciones` VALUES (19, 'DIRECCIÓN DE DESARROLLO URBANO Y VIVENDA', 1, 10);
INSERT INTO `direcciones` VALUES (20, 'DIRECCIÓN DE MEDIO AMBIENTE', 1, 10);
INSERT INTO `direcciones` VALUES (21, 'DIRECCIÓN DE ESPACIOS PÚBLICOS', 1, 10);
INSERT INTO `direcciones` VALUES (22, 'DIRECCIÓN DE PARQUES Y JARDINES', 1, 16);
INSERT INTO `direcciones` VALUES (23, 'DIRECCIÓN DE SANIDAD Y LIMPIA', 1, 16);
INSERT INTO `direcciones` VALUES (24, 'DIRECCIÓN DE ALUMBRADO PÚBLICO', 1, 16);
INSERT INTO `direcciones` VALUES (25, 'DIRECCIÓN DE PANTEONES, CREMATORIO Y MERCADOS MUNICIPALES', 1, 16);
INSERT INTO `direcciones` VALUES (26, 'DIRECCIÓN DE DESARROLLO RURAL Y ASUNTOS INDÍGENAS', 1, 9);
INSERT INTO `direcciones` VALUES (27, 'DIRECCIÓN DE DESARROLLO SOCIAL', 1, 9);
INSERT INTO `direcciones` VALUES (28, 'INSTITUTO MUNICIPAL DE LA JUVENTUD Y DEPORTE', 1, 9);
INSERT INTO `direcciones` VALUES (29, 'INSTITUTO MUNICIPAL DE LA MUJER', 1, 14);
INSERT INTO `direcciones` VALUES (30, 'DIRECCIÓN DE INCLUSIÓN Y DIVERSIDAD', 1, 14);
INSERT INTO `direcciones` VALUES (31, 'DIRECCIÓN DE LICENCIAS Y GIROS MERCANTILES', 1, 16);
INSERT INTO `direcciones` VALUES (32, 'DIRECCIÓN DE INNOVACIÓN GUBERNAMENTAL', 1, 16);
INSERT INTO `direcciones` VALUES (33, 'DIRECCIÓN DE TURISMO', 1, 17);
INSERT INTO `direcciones` VALUES (34, 'DIRECCIÓN DE CULTURA', 1, 17);
INSERT INTO `direcciones` VALUES (35, 'Centro Integral de Iniciación Artistica', 1, 17);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1642099064);
INSERT INTO `migration` VALUES ('m000000_000001_create_user_table', 1642100230);
INSERT INTO `migration` VALUES ('m000000_000002_create_profile_table', 1642100303);
INSERT INTO `migration` VALUES ('m000000_000003_create_social_account_table', 1642100304);
INSERT INTO `migration` VALUES ('m000000_000004_create_token_table', 1642100307);
INSERT INTO `migration` VALUES ('m000000_000005_add_last_login_at', 1642100307);
INSERT INTO `migration` VALUES ('m000000_000006_add_two_factor_fields', 1642100308);
INSERT INTO `migration` VALUES ('m000000_000007_enable_password_expiration', 1642100308);
INSERT INTO `migration` VALUES ('m000000_000008_add_last_login_ip', 1642100308);
INSERT INTO `migration` VALUES ('m000000_000009_add_gdpr_consent_fields', 1642100308);
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', 1642099660);
INSERT INTO `migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1642099660);
INSERT INTO `migration` VALUES ('m180523_151638_rbac_updates_indexes_without_prefix', 1642099661);
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1642100308);
INSERT INTO `migration` VALUES ('m200409_110543_rbac_update_mssql_trigger', 1642099661);

-- ----------------------------
-- Table structure for modo_honesto
-- ----------------------------
DROP TABLE IF EXISTS `modo_honesto`;
CREATE TABLE `modo_honesto`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido_paterno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido_materno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nom_c` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nacionalidad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edad` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `originario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `numero` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calle` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `colonia` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `codigo_postal` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha` date NOT NULL,
  `num_recibo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monto_recibo` decimal(8, 2) NOT NULL,
  `observaciones` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secretario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ini_secretario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_usuario` int(64) NOT NULL,
  `ini_usuario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipo_carta_id` int(32) NOT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `firmado` int(10) NULL DEFAULT NULL,
  `firma_digital` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `folio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tipo_carta_`(`tipo_carta_id`) USING BTREE,
  INDEX `userFK`(`id_usuario`) USING BTREE,
  CONSTRAINT `modo_honesto_ibfk_1` FOREIGN KEY (`tipo_carta_id`) REFERENCES `tipos_cartas` (`id_tipo_carta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userFK` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of modo_honesto
-- ----------------------------

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `public_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gravatar_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gravatar_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `timezone` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bio` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for residencia
-- ----------------------------
DROP TABLE IF EXISTS `residencia`;
CREATE TABLE `residencia`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido_paterno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido_materno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nom_c` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nacionalidad` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edad` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `originario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numero` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `calle` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `colonia` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codigo_postal` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foto` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `num_recibo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monto_recibo` decimal(8, 2) NULL DEFAULT NULL,
  `observaciones` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secretario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ini_secretario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usuario` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ini_usuario` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipo_carta_id` int(32) NULL DEFAULT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `firmado` int(10) NULL DEFAULT NULL,
  `firma_digital` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `folio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tipo_carta_`(`tipo_carta_id`) USING BTREE,
  CONSTRAINT `residencia_ibfk_1` FOREIGN KEY (`tipo_carta_id`) REFERENCES `tipos_cartas` (`id_tipo_carta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13962 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of residencia
-- ----------------------------
INSERT INTO `residencia` VALUES (13889, 'DULCE ', 'HERNANDEZ  ', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'San Fernando', 'Conjunto Habitacional Hacienda San Rafael', '60180', '1', '2019-07-26', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13890, 'ESTRELLA ', 'COLIN ', 'CERANO', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '55', 'Ramón Danzos Palominos', '28 de Octubre', '60180', '1', '2019-07-02', '225198', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13896, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-07-10', '542', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13901, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '32', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'san', '60157', '1', '2019-09-24', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13902, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '12', 'sarabia', 'san', '60157', '1', '2019-09-24', '542', 321.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13903, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '32', 'Uruapan, Michoacán', '55', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-24', '225190', 321.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13904, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-24', '542', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13936, 'Luis', 'Ernesto', 'calderon', NULL, 'MEXICO', '40', 'URUAPAN, MICHOACAN', '1', 'Francisco Sarabia', 'san', '60157', '1', '2019-09-25', '225198', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13937, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '181-C', 'sarabia', 'san', '60157', '1', '2019-09-25', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13938, 'jose esaul', 'gomez', 'Gonzalez', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '55', 'San Fernando', 'san', '60157', '1', '2019-09-25', '225190', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13939, 'jose esaul', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '12', 'San Fernando', 'SAN URUAPAN', '60157', '1', '2019-09-25', '123', 542.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13940, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'SAN FRANCISCO', 'san', '60157', '1', '2019-09-25', '225198', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13941, 'jose esaul', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '1', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-09-25', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13942, 'jose esaul', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '181-C', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '60157', '1', '2019-09-25', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13943, 'jose esaul lio', 'gomez', 'CERANO', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '1', 'sarabia', 'Conjunto Habitacional Hacienda San Rafael', '60157', '1', '2019-09-25', '225190', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `residencia` VALUES (13944, 'jose esaullol', 'gomez', 'hern', NULL, 'mexicano(a)', '24', 'Uruapan, Michoacán', '12', 'San Fernando', 'SAN URUAPAN', '60157', '0', '2019-09-25', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '123');
INSERT INTO `residencia` VALUES (13945, 'STEFANNY YARELI', ' RODRIGUEZ LINO ', 'HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', '28 de Octubre', '60157', '0', '2019-10-01', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 4, NULL, NULL, NULL, '5142');
INSERT INTO `residencia` VALUES (13946, 'STEFANNY YARELI ', ' RODRIGUEZ ', 'LINO HERNANDEZ', NULL, 'mexicano(a)', '15', 'Uruapan, Michoacán', '12', 'Ramón Danzos Palominos', 'Conjunto Habitacional Hacienda San Rafael', '60221', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 3, NULL, NULL, NULL, '52697');
INSERT INTO `residencia` VALUES (13947, 'STEFANNY STEFANNY ', 'LINO HERNANDEZ', 'RODRIGUEZ ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '60221', '0', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, ' \n            <p class=\"MsoNormal\" style=\"margin-top:47%; margin-left:14%; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">19</span></p>\n            <p class=\"MsoNormal MarginLat\" style=\"margin-bottom: 15% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que los CC. STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ y STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ comparecieron ante esta autoridad municipal y se identificaron \n                con  y  con número  y  respectivamente, la comparecencia tuvo como\n                propósito declarar que conocen a el(la) C. STEFANNY STEFANNY  LINO HERNANDEZ RODRIGUEZ , cuya fotografía aparece al margen izquierdo de\n                40 años de edad, con fecha de nacimiento  el día 01 de enero de 1970 en URUAPAN, MICHOACáN, mexicano(a);\n                que cuenta con Acta de Nacimiento número  Libro  Tomo  con fecha de registro 01 de enero de 1970\n                y que es hijo(a) de los CC.  , así mismo los comparecientes manifiestan que el(la) C. STEFANNY STEFANNY  LINO HERNANDEZ RODRIGUEZ ,\n                actualmente radica en , desde el mes de , quienes ademas bajo protesta de decir verdad manifiestan que saben y les consta\n                lo asentado.</span></p> \n    \n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a petición del(la) C. STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ, quien se identificó con \n                número ,para los fines legales a que haya lugar, a los 24 dias del mes de marzo del año 2020\n                en Uruapan, Michoacán, México</span></p> \n            <p class=\"MsoNormal\" style=\"text-align: center; margin-bottom:2%\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p><style>\n                    textarea {\n                                border-style: none;\n                                border-color: Transparent;\n                                overflow: auto;\n                                outline: none;\n                              }\n\n                              textarea:focus\n\n                            </style>\n\n                <!--<p class=\"MsoNormal\" style=\"text-align: center; margin-top:1%\" align=\"center\">ZTYxYTc4YzU3ZmI5ZDkyZTcxZmVmYTVkNTNhYjkxNDVhZmEzNjY4MQ==</p>-->                    \n\n                <p class=\"MsoNormal\" style=\"margin: 0 8.95pt 15px 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\n\n                <center><table style=\"margin-top:5%\"><td style=\"font-size:10px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /><center>Testigo</center></td><td style=\"font-size:10px; margin-left: 16%\">STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ<br /><center>Testigo</center></td></table></center>\n\n                <table style=\"margin-top:-4%; margin-left:8%;\">\n                    <tr>\n                        <td style=\"width:500px;\">\n                            <p class=\"MsoNormal MarginLat\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">JDMR/ jegh</span></p>\n                            <p class=\"MsoNormal MarginLat\" style=\"margin-top:-5%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\n                            <p style=\"margin-left:35%;margin-top:-3.5%\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">$666.00</span></p>\n                            <p style=\"margin-left:40%\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>225205</span></p>\n                        </td>\n\n                        <td style=\"width:500px;\">\n                            <p><img style=\"float:right;margin-top:;margin-right: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13947%26folio=63683\" alt=\"Resultado de imagen para qr\" width=\"121\" height=\"121\" /></p>\n                        </td>    \n                    </tr>\n                </table>', 1, 'ZTYxYTc4YzU3ZmI5ZDkyZTcxZmVmYTVkNTNhYjkxNDVhZmEzNjY4MQ==', '63683');
INSERT INTO `residencia` VALUES (13948, 'jose esaul', 'gomez GOMEZ', 'HERNANDEZ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'Conjunto Habitacional Hacienda San Rafael', '60157', '0', '2019-10-01', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '72696');
INSERT INTO `residencia` VALUES (13949, 'jose esaul', 'gomez', 'HERNANDEZ', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'SAN URUAPAN', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 't4dmkv05lcf2b7jh6ox8p93szeqiay1nrgw');
INSERT INTO `residencia` VALUES (13950, 'jose esaul', 'gomez', 'CERANO', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '181-C', 'sarabia', 'san', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '7aycr');
INSERT INTO `residencia` VALUES (13951, 'jose esau', 'gomez', 'MANUEL', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '1', 'San Fernando', '28 de Octubre', '60157', '1', '2019-10-01', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'hm1bo563i4');
INSERT INTO `residencia` VALUES (13952, 'Luis Mario ', 'Cardenas', 'Lopez', NULL, 'MEXICO', '45', 'URUAPAN, MICHOACAN', '1', 'Paseo de la reforma', 'Centro', '60180', '55', '2019-11-25', '6666666', 666666.00, 'Sin observaciones', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, '04a8rydehm');
INSERT INTO `residencia` VALUES (13953, 'jose ramon', 'san cristobal', 'casas', NULL, 'mexicano(a)', '55', 'Uruapan, Michoacán', '181-C', 'SAN FRANCISCO', 'SAN URUAPAN', '60221', '1', '2019-11-25', '225205', 166.00, '--', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'nxkqy57lp2');
INSERT INTO `residencia` VALUES (13954, 'jose esaul', 'gomez', 'sd', NULL, 'mexicano(a)', '40', 'Uruapan, Michoacán', '1', 'sarabia', 'SAN URUAPAN', '60157', '55', '2019-11-25', '542', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, NULL, NULL, NULL, 'w5gfhyav08');
INSERT INTO `residencia` VALUES (13955, 'Alan Montelongo', 'Cufre', 'Garcia', NULL, 'MEXICO', '40', 'URUAPAN, MICHOACAN', '1', 'San Fernando', 'SAN URUAPAN', '60157', '1', '2019-11-26', '225205', 666.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 5, ' \n            <p class=\"MsoNormal\" style=\"margin-top:47%; margin-left:14%; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">19</span></p>\n            <p class=\"MsoNormal MarginLat\" style=\"margin-bottom: 15% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que los CC. JOSE LUIS MARTINEZ HERNANDEZ y STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ comparecieron ante esta autoridad municipal y se identificaron \n                con INE y Pasaporte con número 865-ALO94 y 6955-FJSA64 respectivamente, la comparecencia tuvo como\n                propósito declarar que conocen a el(la) C. ALAN MONTELONGO CUFRE GARCIA, cuya fotografía aparece al margen izquierdo de\n                40 años de edad, con fecha de nacimiento  el día 06 de enero de 1995 en URUAPAN, MICHOACAN, MEXICO;\n                que cuenta con Acta de Nacimiento número 01273 Libro 1 Tomo 07 con fecha de registro 12 de octubre de 2006\n                y que es hijo(a) de los CC. Pedro Bran Tovar Marta Santoyo Lopez, así mismo los comparecientes manifiestan que el(la) C. ALAN MONTELONGO CUFRE GARCIA,\n                actualmente radica en LOS ANGELES, CALIFORNIA, desde el mes de Enero de 2015, quienes ademas bajo protesta de decir verdad manifiestan que saben y les consta\n                lo asentado.</span></p> \n    \n            <p class=\"MsoNormal MarginContent\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a petición del(la) C. VERONICA RAMIREZ JIMENEZ, quien se identificó con INE\n                número 164897-AKF64,para los fines legales a que haya lugar, a los 29 dias del mes de noviembre del año 2019\n                en Uruapan, Michoacán, México</span></p> \n            <p class=\"MsoNormal\" style=\"text-align: center; margin-bottom:2%\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p><style>\n                    textarea {\n                                border-style: none;\n                                border-color: Transparent;\n                                overflow: auto;\n                                outline: none;\n                              }\n\n                              textarea:focus\n\n                            </style>\n\n                <!--<p class=\"MsoNormal\" style=\"text-align: center; margin-top:1%\" align=\"center\">OGFkNDFhMGJhNWJiMWJlZTNjYjAxYTAyMDJlNTc0M2Q4NDliZjliYQ==</p>-->                    \n\n                <p class=\"MsoNormal\" style=\"margin: 0 8.95pt 15px 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. JUAN DANIEL MANZO RODRIGUEZ<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\n\n                <center><table style=\"margin-top:5%\"><td style=\"font-size:10px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JOSE LUIS MARTINEZ HERNANDEZ&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br /><center>Testigo</center></td><td style=\"font-size:10px; margin-left: 16%\">STEFANNY YARELI RODRIGUEZ LINO HERNANDEZ<br /><center>Testigo</center></td></table></center>\n\n                <table style=\"margin-top:-4%; margin-left:8%;\">\n                    <tr>\n                        <td style=\"width:500px;\">\n                            <p class=\"MsoNormal MarginLat\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">JDMR/ jegh</span></p>\n                            <p class=\"MsoNormal MarginLat\" style=\"margin-top:-5%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\n                            <p style=\"margin-left:35%;margin-top:-3.5%\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">$666.00</span></p>\n                            <p style=\"margin-left:40%\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>225205</span></p>\n                        </td>\n\n                        <td style=\"width:500px;\">\n                            <p><img style=\"float:right;margin-top:;margin-right: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13955%26folio=zrgx9jm1w2\" alt=\"Resultado de imagen para qr\" width=\"121\" height=\"121\" /></p>\n                        </td>    \n                    </tr>\n                </table>', 1, 'OGFkNDFhMGJhNWJiMWJlZTNjYjAxYTAyMDJlNTc0M2Q4NDliZjliYQ==', 'zrgx9jm1w2');
INSERT INTO `residencia` VALUES (13956, 'Alan', 'Martinez', 'Angel', NULL, 'MEXICO', '55', 'URUAPAN, MICHOACAN', '4', 'Paseo de la reforma', 'Centro', '16343', '1', '2019-11-29', '225205', 166.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 2, NULL, NULL, NULL, 'dijpw9k6n3');
INSERT INTO `residencia` VALUES (13957, 'Jose Luis E', 'Cardozo', 'Lopez', 'Jose Luis Cardozo Lopez', 'MEXICO', '24', 'URUAPAN, MICHOACAN', '785', 'Ramón Danzos Palominos', 'SAN URUAPAN', '46464', '1', '2019-12-02', '225205', 666.00, '', 'LIC. ANTONIO CHUELA MURGÍA', 'ACM', 'esaul', 'jegh', 1, '                                                                    \r\n                <p class=\"\" style=\"color:; margin-top:30%; margin-left:; text-align:center; \" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">Año 20___</span></p>\r\n                <p class=\"MsoNormal\" style=\"margin-bottom: 5% ;margin-top: 0; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">LIC. ANTONIO CHUELA MURGÍA, SECRETARIO DEL AYUNTAMIENTO DE URUAPAN, MICH; QUE SUSCRIBE, HACE CONSTAR Y</span></p>\r\n                <p class=\"MsoNormal\" style=\" letter-spacing: 5px; margin-bottom:5%; margin-top:; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">CERTIFICA</span></p>\r\n                <p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"mso-ansi-language: ES-MX;\">Que el (la) C. Jose Luis E Cardozo Lopez mexicano(a), de 24 a&ntilde;os de edad, originario(a) de URUAPAN, MICHOACAN; es persona que tiene su domicilio en la casa marcada con el n&uacute;mero 785 de la calle Ramón Danzos Palominos de la colonia SAN URUAPAN correspondiente a &eacute;ste municipio. De quien se presume tiene un modo honesto de vida ya que no cuenta con antecedentes administrativos, ni penales vigentes en la Secretar&iacute;a de Seguridad P&uacute;blica Municipal.</span></p>\r\n                <!--<p class=\"MsoNormal\" style=\"margin-bottom: 4.0pt; text-align: center;\" align=\"center\"><span style=\"mso-ansi-language: ES-MX;\">------------------------------------------------------------------------------------------------------------------</span></p>-->\r\n                <p class=\"MsoNormal\" style=\"text-align: justify; margin-top: 5%;\"><span style=\"mso-ansi-language: ES-MX;\">Se expide la presente a solicitud del interesado(a), cuya fotograf&iacute;a es cancelada con el sello de &eacute;sta oficina para los usos legales correspondientes en la ciudad de Uruapan, Michoac&aacute;n, a 27 de marzo del a&ntilde;o 2020 dos mil veinte.</span></p>\r\n                <p class=\"MsoNormal\" style=\"text-align: center; margin: 8.0pt 0cm 5% 0cm;\" align=\"center\"><strong><span style=\"mso-ansi-language: ES-MX;\">A T E N T A M E N T E</span></strong></p>\r\n\r\n                <!-- <p class=\"MsoNormal\" style=\"text-align: center; margin: 4.0pt 0cm .0001pt 0cm;  \" align=\"center\">ODg5YTk2ZWIxNTJjN2U1OWI4YjRmZmNlMWUwZWVhZTM2MGYwNjM1NA==</p> -->\r\n                <p class=\"MsoNormal\" style=\"margin: 0cm 8.95pt 10% 9.9pt; text-align: center;\"><strong><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.0pt;\"><br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">LIC. ANTONIO CHUELA MURGÍA<br /></span></strong><strong><span style=\"mso-ansi-language: ES-MX;\">SECRETARIO H. AYUNTAMIENTO</span></strong></p>\r\n\r\n                <!--<p class=\"MsoNormal\" style=\"writing-mode: vertical-lr; transform: rotate(180deg);\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">PARA CERTIFICADOS EXPEDIDOS</span></p>\r\n                <p class=\"MsoNormal \"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">POR AUTORIDADES MUNICIPALES</span></p>-->\r\n\r\n\r\n                <table style=\"\">\r\n                    <tr>\r\n                        <td style=\"width:200px;\">\r\n                        <p class=\"MsoNormal \"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ACM/ jegh</span></p>\r\n                        <p class=\"MsoNormal \" style=\"margin-top:-2%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">ESTE DOCUMENTO TIENE VIGENCIA DE UN MES</span></strong></p>\r\n                        <!--<p class=\"MsoNormal\" style=\"margin-top:-2%;\"><strong><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\">VIGENCIA DE UN MES</span></strong></p>-->\r\n                        <p style=\"margin-left:;\"><span style=\"font-size: 8.0pt; line-height: 107%; mso-ansi-language: ES-MX;\"></span><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\">Derechos: $ 666.00</span></p>\r\n                        <p style=\"margin-left:\"><span lang=\"EN-US\" style=\"font-size: 8.0pt; line-height: 107%;\"><span style=\"mso-spacerun: yes;\"></span>Según recibo No. 225205</span></p>\r\n                        </td>\r\n\r\n                        <td style=\"width:450px;\">\r\n                        <!--<p style=\"margin-left:; font-size: 4.0pt; text-align: justify;\" align=\"\">El presente documento es emitido y firmado electrónicamente y es válido ante \r\n                todas las instituciones públicas y privadas, conforme a lo dispuesto por los \r\n                artículos 113, 123 fracciones I y IV y 129 párrafo tercero de la Constitución \r\n                Política del Estado Libre y Soberano del Estado de Michoacán de Ocampo; 6, 7, \r\n                8, 40 y 297 F del Código de Justicia Administrativa del Estado de Michoacán de  \r\n                Ocampo; 32 inciso b), fracciones XIII y XXIII, 92, 98 y 99 de la Ley Orgánica \r\n                Municipal del Estado de Michoacán de Ocampo; 14 fracción IV, 15 fracción I, 22, \r\n                25 y 26 de la Ley de Firma Electrónica Certificada del Estado de Michoacán de \r\n                Ocampo; 80, 81 y 196 fracción IV del Bando de Gobierno Municipal y demás \r\n                artículos y ordenamientos aplicables a la materia.\r\n                </p>-->\r\n                        </td>\r\n\r\n                        <td style=\"width:150px;\">\r\n                        <p><img style=\"float: ;margin-top: ;\" src=\"https://chart.googleapis.com/chart?chs=90x90&amp;cht=qr&amp;chl=http://ctramite.uruapan.gob.mx/index.php/consultar?id=13957%26folio=kbw9l8ofsj\"  alt=\"Resultado de imagen para qr\" width=\"150\" height=\"150\"  /></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n                <p class=\"MsoNormal\"><!-- [if gte vml 1]><v:shapetype id=\"_x0000_t202\"\r\n                 coordsize=\"21600,21600\" o:spt=\"202\" path=\"m,l,21600r21600,l21600,xe\">\r\n                 <v:stroke joinstyle=\"miter\"/>\r\n                 <v:path gradientshapeok=\"t\" o:connecttype=\"rect\"/>\r\n                </v:shapetype><v:shape id=\"_x0000_s1026\" type=\"#_x0000_t202\" style=\"position:absolute\";\r\n                 margin-left:96.8pt;margin-top:0;width:148pt;height:148pt;z-index:-251658240;\r\n                 mso-position-horizontal:right;mso-position-horizontal-relative:margin;\r\n                 mso-position-vertical:bottom;mso-position-vertical-relative:margin\"\r\n                 strokecolor=\"white\" strokeweight=\"0\">\r\n                 <v:textbox inset=\"0,0,0,0\"/>\r\n                 <w:wrap anchorx=\"margin\" anchory=\"margin\"/>\r\n                </v:shape><![endif]--><!-- [if !vml]--></p>\r\n                <p><!--[endif]--></p>\r\n                <p>&nbsp;</p>\r\n                <p>&nbsp;</p>', 1, 'ODg5YTk2ZWIxNTJjN2U1OWI4YjRmZmNlMWUwZWVhZTM2MGYwNjM1NA==', 'kbw9l8ofsj');
INSERT INTO `residencia` VALUES (13958, 'Leonel', 'Beiza', 'Flores', 'Leonel Beiza Flores', 'MEXICO', '96', 'URUAPAN, MICHOACAN', '86', 'Camino a Santa Rosa', 'Conjunto Habitacional Real de Santa Rosa', '6265', '1', '2019-12-02', '752', 6523.00, '', 'LIC. JUAN DANIEL MANZO RODRIGUEZ', 'JDMR', 'Jose Esaul Gomez Hernandez', 'jegh', 2, NULL, NULL, NULL, 'el29db4ykv');

-- ----------------------------
-- Table structure for secretarias
-- ----------------------------
DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE `secretarias`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of secretarias
-- ----------------------------
INSERT INTO `secretarias` VALUES (1, 'CONSEJERÍA JURIDICA\r\n', 1);
INSERT INTO `secretarias` VALUES (2, 'CONTRALORÍA MUNICIPAL\r\n', 1);
INSERT INTO `secretarias` VALUES (3, 'COORDINACIÓN DE ASESORES\r\n', 1);
INSERT INTO `secretarias` VALUES (4, 'COORDINACIÓN JURÍDICA', 1);
INSERT INTO `secretarias` VALUES (5, 'DIF MUNICIPAL', 1);
INSERT INTO `secretarias` VALUES (6, 'Instituto Municipal de Planeación de Uruapan\r\n', 1);
INSERT INTO `secretarias` VALUES (7, 'JUZGADO CÍVICO\r\n', 1);
INSERT INTO `secretarias` VALUES (8, 'SECRETARÍA DE ADMINISTRACIÓN\r\n', 1);
INSERT INTO `secretarias` VALUES (9, 'SECRETARÍA DE DESARROLLO SOCIAL\r\n', 1);
INSERT INTO `secretarias` VALUES (10, 'SECRETARÍA DE DESARROLLO URBANO Y MEDIO AMBIENTE\r\n', 1);
INSERT INTO `secretarias` VALUES (11, 'SECRETARÍA DE FOMENTO ECONÓMICO\r\n', 1);
INSERT INTO `secretarias` VALUES (12, 'SECRETARÍA DE OBRAS PÚBLICAS Y MOVILIDAD\r\n', 1);
INSERT INTO `secretarias` VALUES (13, 'SECRETARÍA DE PLANEACIÓN', 1);
INSERT INTO `secretarias` VALUES (14, 'SECRETARÍA DE POLITICA DE GENERO E INCLUSIÓN \r\n', 1);
INSERT INTO `secretarias` VALUES (15, 'SECRETARÍA DE SEGURIDAD PÚBLICA \r\n', 1);
INSERT INTO `secretarias` VALUES (16, 'SECRETARÍA DE SERVICIOS PÚBLICOS MUNICIPALES\r\n', 1);
INSERT INTO `secretarias` VALUES (17, 'SECRETARÍA DE TURISMO Y CULTURA\r\n', 1);
INSERT INTO `secretarias` VALUES (18, 'SECRETARÍA DEL H. AYUNTAMIENTO\r\n', 1);
INSERT INTO `secretarias` VALUES (19, 'SECRETARÍA PARTICULAR\r\n', 1);
INSERT INTO `secretarias` VALUES (20, 'SINDICATURA MUNICIPAL\r\n', 1);
INSERT INTO `secretarias` VALUES (21, 'TESORERÍA MUNICIPAL\r\n', 1);
INSERT INTO `secretarias` VALUES (22, 'PRESIDENCIA', 1);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_social_account_provider_client_id`(`provider`, `client_id`) USING BTREE,
  UNIQUE INDEX `idx_social_account_code`(`code`) USING BTREE,
  INDEX `fk_social_account_user`(`user_id`) USING BTREE,
  CONSTRAINT `fk_social_account_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for tipos_cartas
-- ----------------------------
DROP TABLE IF EXISTS `tipos_cartas`;
CREATE TABLE `tipos_cartas`  (
  `id_tipo_carta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activo` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_carta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tipos_cartas
-- ----------------------------
INSERT INTO `tipos_cartas` VALUES (1, 'Modo honesto de vida', 1);
INSERT INTO `tipos_cartas` VALUES (2, 'Buena conducta', 1);
INSERT INTO `tipos_cartas` VALUES (3, 'Residencia', 1);
INSERT INTO `tipos_cartas` VALUES (4, 'Residencia menor', 1);
INSERT INTO `tipos_cartas` VALUES (5, 'Residencia Estados Unidos', 1);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `user_id` int(11) NULL DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  UNIQUE INDEX `idx_token_user_id_code_type`(`user_id`, `code`, `type`) USING BTREE,
  CONSTRAINT `fk_token_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (67, 'DUuB3aEmg2ZZYpFp8BUQ3qb4hImuXJsB', 1, 1645826039);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `registration_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `confirmed_at` int(11) NULL DEFAULT NULL,
  `blocked_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `last_login_at` int(11) NULL DEFAULT NULL,
  `last_login_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `auth_tf_key` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `auth_tf_enabled` tinyint(1) NULL DEFAULT 0,
  `password_changed_at` int(11) NULL DEFAULT NULL,
  `gdpr_consent` tinyint(1) NULL DEFAULT 0,
  `gdpr_consent_date` int(11) NULL DEFAULT NULL,
  `gdpr_deleted` tinyint(1) NULL DEFAULT 0,
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `curp` varchar(18) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_user_username`(`username`) USING BTREE,
  UNIQUE INDEX `idx_user_email`(`email`) USING BTREE,
  UNIQUE INDEX `idx_user_curp`(`curp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (67, 'esaul', 'esaulgomez@gmail.com', '$2y$10$HaL9zBjrWxMseccjtUld2.YsSFQ45rl94AAIb6bgurWMGeTq8WvPe', 'JlrDVQdipBKllgxwqXwh0QhRDDWPlrXS', NULL, '127.0.0.1', 0, 1645825058, NULL, 1645825015, 1645825015, 1646233435, '127.0.0.1', '', 0, 1645825015, 0, NULL, 0, NULL, 'GOHE950121HMNMRS07');

SET FOREIGN_KEY_CHECKS = 1;
