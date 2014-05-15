UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='teachinginterests' WHERE `id`='2';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='tutoringavailabilityopt1' WHERE `id`='4';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='tutoringavailabilityopt2' WHERE `id`='5';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='universityname' WHERE `id`='10';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='gradelevel' WHERE `id`='14';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='major' WHERE `id`='15';
UPDATE `moodle`.`mdl_user_info_field` SET `shortname`='role' WHERE `id`='18';
UPDATE `moodle`.`mdl_user_info_field` SET `name`='Subjects' WHERE `id`='20';
UPDATE `moodle`.`mdl_user_info_field` SET `name`='Question' WHERE `id`='19';

UPDATE `moodle`.`mdl_user_info_field` SET `visible`='2', `signup`='1' WHERE `id`='4';
UPDATE `moodle`.`mdl_user_info_field` SET `visible`='2', `signup`='1' WHERE `id`='5';
UPDATE `moodle`.`mdl_user_info_field` SET `visible`='2' WHERE `id`='18';
UPDATE `moodle`.`mdl_user_info_field` SET `visible`='2', `signup`='1' WHERE `id`='19';

UPDATE `moodle`.`mdl_user_info_field` SET `categoryid`='3' WHERE `id`='4';
UPDATE `moodle`.`mdl_user_info_field` SET `categoryid`='3' WHERE `id`='5';

UPDATE `moodle`.`mdl_user_info_field` SET `sortorder`='5' WHERE `id`='4';
UPDATE `moodle`.`mdl_user_info_field` SET `sortorder`='6' WHERE `id`='5';

drop table `moodle`.`mdl_user_temp`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `mdl_user_temp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint(10) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email2` varchar(244) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT '',
  `lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `firstaccess` bigint(10) NOT NULL DEFAULT '0',
  `secret` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT '0',
  `lastnamephonetic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternatename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_field_gradelevel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_studentsubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_major` text COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_question` text COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_tutoringavailabilityopt1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_field_tutoringavailabilityopt2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ibp_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `ibp_user_con_ix` (`confirmed`),
  KEY `ibp_user_fir_ix` (`firstname`),
  KEY `ibp_user_las_ix` (`lastname`),
  KEY `ibp_user_cit_ix` (`city`),
  KEY `ibp_user_cou_ix` (`country`),
  KEY `ibp_user_ema_ix` (`email`),
  KEY `ibp_user_aut_ix` (`auth`),
  KEY `ibp_user_fir2_ix` (`firstnamephonetic`),
  KEY `ibp_user_las3_ix` (`lastnamephonetic`),
  KEY `ibp_user_mid_ix` (`middlename`),
  KEY `ibp_user_alt_ix` (`alternatename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='One record for each person' AUTO_INCREMENT=76 ;