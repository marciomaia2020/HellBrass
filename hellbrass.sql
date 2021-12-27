-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 18/09/2021 às 10:34
-- Versão do servidor: 8.0.18
-- Versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hellbrass`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_action_logs`
--

DROP TABLE IF EXISTS `jey51_action_logs`;
CREATE TABLE IF NOT EXISTS `jey51_action_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_action_logs`
--

INSERT INTO `jey51_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-09-16 16:19:42', 'com_users', 207, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10000\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:22:04', 'com_installer', 207, 10000, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10001\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:22:04', 'com_installer', 207, 10001, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10002\",\"name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"extension_name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:22:04', 'com_installer', 207, 10002, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10000\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:25:46', 'com_installer', 207, 10000, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10001\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:25:46', 'com_installer', 207, 10001, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10002\",\"name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"extension_name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:25:46', 'com_installer', 207, 10002, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-09-16 16:26:03', 'com_users', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-09-16 16:26:14', 'com_users', 207, 0, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_UPDATE', '{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"version\":\"3.10.2\",\"oldversion\":\"3.9.26\"}', '2021-09-16 16:27:41', 'com_joomlaupdate', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":\"10004\",\"name\":\"blue_design\",\"extension_name\":\"blue_design\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:30:01', 'com_installer', 207, 10004, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:32:24', 'com_installer', 207, 10005, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":\"503\",\"name\":\"beez3\",\"extension_name\":\"beez3\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:34:55', 'com_installer', 207, 503, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:35:51', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:35:51', 'com_modules.module', 207, 17, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:36:04', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:36:04', 'com_modules.module', 207, 16, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:39:52', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:39:52', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:41:00', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:41:00', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:42:19', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:42:19', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:44:25', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:44:25', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:44:49', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:44:49', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:44:53', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:45:18', 'com_modules.module', 207, 1, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:45:18', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 16:45:40', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"22\",\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=22\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:47:16', 'com_config.component', 207, 22, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10006\",\"name\":\"COM_JCE\",\"extension_name\":\"COM_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10006, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10007\",\"name\":\"plg_editors_jce\",\"extension_name\":\"plg_editors_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10007, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"plg_content_jce\",\"extension_name\":\"plg_content_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10008, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"plg_extension_jce\",\"extension_name\":\"plg_extension_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10009, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"plg_fields_mediajce\",\"extension_name\":\"plg_fields_mediajce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10010, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"plg_installer_jce\",\"extension_name\":\"plg_installer_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10011, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"plg_quickicon_jce\",\"extension_name\":\"plg_quickicon_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10012, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"plg_system_jce\",\"extension_name\":\"plg_system_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10013, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__wf_profiles\"}', '2021-09-16 16:50:03', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__wf_profiles\"}', '2021-09-16 16:50:03', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__wf_profiles\"}', '2021-09-16 16:50:03', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__wf_profiles\"}', '2021-09-16 16:50:03', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__wf_profiles\"}', '2021-09-16 16:50:03', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10006\",\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10006, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UNINSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10014\",\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10014, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10014\",\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10014, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10014\",\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:03', 'com_installer', 207, 10014, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:19', 'com_config.application', 207, 0, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10006\",\"name\":\"COM_JCE\",\"extension_name\":\"COM_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10006, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10007\",\"name\":\"plg_editors_jce\",\"extension_name\":\"plg_editors_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10007, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"plg_content_jce\",\"extension_name\":\"plg_content_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10008, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"plg_extension_jce\",\"extension_name\":\"plg_extension_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10009, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"plg_fields_mediajce\",\"extension_name\":\"plg_fields_mediajce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10010, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"plg_installer_jce\",\"extension_name\":\"plg_installer_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10011, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"plg_quickicon_jce\",\"extension_name\":\"plg_quickicon_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10012, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"plg_system_jce\",\"extension_name\":\"plg_system_jce\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10013, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10014\",\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10014, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10000\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10000, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":\"10001\",\"name\":\"Brazilian Portuguese (pt-BR)\",\"extension_name\":\"Brazilian Portuguese (pt-BR)\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10001, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":\"10002\",\"name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"extension_name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10002, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10005, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10015\",\"name\":\"com_slideshowck\",\"extension_name\":\"com_slideshowck\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:50:43', 'com_installer', 207, 10015, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"contato\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:52:44', 'com_content.article', 207, 1, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"galeria\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:53:18', 'com_content.article', 207, 2, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"sobrenos\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:53:46', 'com_content.article', 207, 3, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"servicos\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:54:04', 'com_content.article', 207, 4, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"5\",\"title\":\"principios\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:54:31', 'com_content.article', 207, 5, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"6\",\"title\":\"ondeestamos\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:54:47', 'com_content.article', 207, 6, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"7\",\"title\":\"inicio\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:55:19', 'com_content.article', 207, 7, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__content\"}', '2021-09-16 16:55:41', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"In\\u00edcio\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:57:04', 'com_menus.item', 207, 101, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__menu\"}', '2021-09-16 16:57:04', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"112\",\"title\":\"Sobre n\\u00f3s\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:57:43', 'com_menus.item', 207, 112, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"113\",\"title\":\"Servi\\u00e7os\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:58:12', 'com_menus.item', 207, 113, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"114\",\"title\":\"Princ\\u00edpios\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:58:45', 'com_menus.item', 207, 114, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"115\",\"title\":\"Onde estamos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:59:18', 'com_menus.item', 207, 115, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"116\",\"title\":\"Galeria\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 16:59:36', 'com_menus.item', 207, 116, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"117\",\"title\":\"Contato\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 17:00:12', 'com_menus.item', 207, 117, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"inicio\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 17:01:05', 'com_content.article', 207, 7, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__content\"}', '2021-09-16 17:01:05', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"galeria\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 17:06:07', 'com_content.article', 207, 2, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__content\"}', '2021-09-16 17:06:07', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"galeria\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 17:06:36', 'com_content.article', 207, 2, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__content\"}', '2021-09-16 17:06:36', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-16 17:14:22', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-16 17:14:22', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-09-17 19:51:26', 'com_users', 207, 0, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":9,\"title\":\"blue_design - Padr\\u00e3o\",\"extension_name\":\"blue_design - Padr\\u00e3o\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=9\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-17 19:58:11', 'com_templates.style', 207, 9, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-17 20:13:25', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-17 20:13:25', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":90,\"title\":\"Slideshow CK\",\"extension_name\":\"Slideshow CK\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=90\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\"}', '2021-09-17 20:17:27', 'com_modules.module', 207, 90, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"207\",\"title\":\"hellbrass\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"userid\":\"207\",\"username\":\"hellbrass\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=207\",\"table\":\"#__modules\"}', '2021-09-17 20:17:27', 'com_checkin', 207, 207, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_action_logs_extensions`
--

DROP TABLE IF EXISTS `jey51_action_logs_extensions`;
CREATE TABLE IF NOT EXISTS `jey51_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_action_logs_extensions`
--

INSERT INTO `jey51_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_action_logs_users`
--

DROP TABLE IF EXISTS `jey51_action_logs_users`;
CREATE TABLE IF NOT EXISTS `jey51_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_action_log_config`
--

DROP TABLE IF EXISTS `jey51_action_log_config`;
CREATE TABLE IF NOT EXISTS `jey51_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_action_log_config`
--

INSERT INTO `jey51_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_assets`
--

DROP TABLE IF EXISTS `jey51_assets`;
CREATE TABLE IF NOT EXISTS `jey51_assets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_assets`
--

INSERT INTO `jey51_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 139, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 34, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 35, 36, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 37, 38, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 39, 42, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 43, 44, 1, 'com_login', 'com_login', '{}'),
(13, 1, 45, 46, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 47, 48, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 49, 50, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 51, 54, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 55, 56, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 57, 96, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 97, 100, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 101, 102, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 103, 104, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 105, 106, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 107, 108, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 109, 112, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 113, 114, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 33, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 98, 99, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 110, 111, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 115, 116, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 117, 118, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 119, 120, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 121, 122, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 123, 124, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 125, 126, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 58, 59, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 60, 61, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 62, 63, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 64, 65, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 66, 67, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 68, 69, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 70, 71, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 72, 73, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 74, 75, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 76, 77, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 78, 79, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 80, 81, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 82, 83, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 84, 85, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 86, 87, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 52, 53, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 88, 89, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 127, 128, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 129, 130, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 90, 91, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 92, 93, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 11, 40, 41, 2, 'com_languages.language.2', 'Português do Brasil (pt-BR)', '{}'),
(61, 1, 131, 132, 1, 'com_fields', 'com_fields', '{}'),
(62, 1, 133, 134, 1, 'com_associations', 'com_associations', '{}'),
(63, 18, 94, 95, 2, 'com_modules.module.90', 'Slideshow CK', '{}'),
(64, 1, 135, 136, 1, 'com_jce', 'COM_JCE', '{}'),
(65, 1, 137, 138, 1, 'com_slideshowck', 'com_slideshowck', '{}'),
(66, 27, 19, 20, 3, 'com_content.article.1', 'contato', '{}'),
(67, 27, 21, 22, 3, 'com_content.article.2', 'galeria', '{}'),
(68, 27, 23, 24, 3, 'com_content.article.3', 'sobrenos', '{}'),
(69, 27, 25, 26, 3, 'com_content.article.4', 'servicos', '{}'),
(70, 27, 27, 28, 3, 'com_content.article.5', 'principios', '{}'),
(71, 27, 29, 30, 3, 'com_content.article.6', 'ondeestamos', '{}'),
(72, 27, 31, 32, 3, 'com_content.article.7', 'inicio', '{}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_associations`
--

DROP TABLE IF EXISTS `jey51_associations`;
CREATE TABLE IF NOT EXISTS `jey51_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_banners`
--

DROP TABLE IF EXISTS `jey51_banners`;
CREATE TABLE IF NOT EXISTS `jey51_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_banner_clients`
--

DROP TABLE IF EXISTS `jey51_banner_clients`;
CREATE TABLE IF NOT EXISTS `jey51_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_banner_tracks`
--

DROP TABLE IF EXISTS `jey51_banner_tracks`;
CREATE TABLE IF NOT EXISTS `jey51_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_categories`
--

DROP TABLE IF EXISTS `jey51_categories`;
CREATE TABLE IF NOT EXISTS `jey51_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_categories`
--

INSERT INTO `jey51_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 207, '2021-09-16 16:18:19', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_contact_details`
--

DROP TABLE IF EXISTS `jey51_contact_details`;
CREATE TABLE IF NOT EXISTS `jey51_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_content`
--

DROP TABLE IF EXISTS `jey51_content`;
CREATE TABLE IF NOT EXISTS `jey51_content` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_content`
--

INSERT INTO `jey51_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 66, 'contato', 'contato', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Contato</b></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Cosmópolis-SP</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><a href=\"mailto:montagens@hellbrass.com.br\">montagens@hellbrass.com.br</a></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><a href=\"mailto:manutencao@hellbrass.com.br\">manutencao@hellbrass.com.br</a></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">19 3800-4837</span></p>', '', 1, 2, '2021-09-16 16:52:44', 207, '', '2021-09-16 16:52:44', 0, 0, '0000-00-00 00:00:00', '2021-09-16 16:52:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 6, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(2, 67, 'galeria', 'galeria', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem1.png\" alt=\"\" /></span></div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Linha de incêndio</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">O <b>sistema de combate a incêndio</b> deve ser elaborado por um projetista, que irá indicar todas as diretrizes e normas de combate a incêndio do local, considerando alguns aspectos como tamanho dos ambientes, riscos envolvidos, presença de líquidos ou materiais inflamáveis, etc.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem2.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Aço carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Liga metálica amplamente empregada na indústria e na construção civil, o <b>aço carbono</b> é resultado da combinação de dois elementos: ferro e carbono. Este material é utilizado na construção de automóveis, máquinas de lavar, decoração de ambientes e muitos outras aplicações.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem3.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Aço Inox</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">O <b>aço inoxidável ou inox</b> é uma liga de ferro e crómio, podendo conter também níquel, molibdénio e outros elementos, que apresenta propriedades físico-químicas superiores aos aços comuns, sendo a alta resistência à oxidação atmosférica a sua principal característica, “material verde”.</span></p>\r\n</div>\r\n</div>\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem4.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tanque</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Um <b>tanque</b> de armazenamento ou de armazenagem também designado por reservatório é um recipiente destinado a armazenar fluidos à pressão atmosférica e a pressões superiores à atmosférica. A maior parte dos tanques de armazenamento são construídos de acordo com requisitos definidos.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem5.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulações</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><b>Encanamento/canalização</b> é a construção ou estrutura de transporte de algo através de tubos ou canos. O cano tem que ser de um material resistente o suficiente para aguentar a pressão do material transportado, que geralmente é líquido. Os profissionais que trabalham com encanamentos são designados encanadores.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem6.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Inox OD</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Quando falamos de tubos de aço <b>inox OD</b> queremos dizer que esse tubo atende a norma OD, que, traduzido do inglês, significa diâmetro externo, sendo esse diâmetro padronizado em 1” (que equivale a 25,40mm). OD é a sigla para outside diameter que, no inglês, significa diâmetro externo.</span></p>\r\n</div>\r\n</div>\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><img src=\"images/galeria/imagem7.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Sprinklers</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Um <b>chuveiro automático</b> (português brasileiro) ou <b>rociador de incêndios</b> (português europeu) (em inglês <b>Sprinkler</b>) é um dispositivo para a extinção de incêndios. Consiste numa armadura, com um cano conectado a uma tubagem de água a pressão.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem8.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Sprinklers</b></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">O cano se fecha com uma tampa sujeita por uma cápsula de vidro recheada de um líquido cujo ponto de ebulição é a uma temperatura determinada (temperatura de disparo), a qual está sujeita contra um dispersor. Quando se produz um incêndio...</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem10.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Sprinklers</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"font-size: 14pt;\">...ferve o líquido e o vapor rompe a cápsula; a tampa salta, sai a água, e choca contra o dispersor aspergindo a zona incendiada. Existem outros automáticos, que em vez da cápsula estão conectados a</span> <span style=\"font-size: 14pt;\">um detector de incêndios o qual manda uma válvula automática.</span></span></p>\r\n</div>\r\n</div>\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem11.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Sistema de incêndio</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Conjunto de medidas para detectar e controlar o rastro do fogo, facilitando seu combate e garantindo a segurança da edificação, das pessoas e bens. Devido à sua importância, é <b>obrigatório em prédios comerciais e residenciais</b> e deve ser elaborado por profissionais qualificados.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem12.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Sistema contra incêndio</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">O sistema de proteção contra incêndio é composto por 3 sistemas: <b>Detecção de incêndio</b>;<b> Alarme de incêndio</b>; <b>Combate ao incêndio</b>. O acionador é ligado à uma Central de Alarme. Tem um botão, parecido com um interruptor, quando acionado envia a localização da ocorrência.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem9.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Chuveiro/Sprinklers</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Um <span style=\"text-decoration: underline;\">sprinkler</span> é um <b>dispositivo comumente utilizado no combate a incêndios</b>. Ele é composto de uma “armadura”, um elemento sensível, chamado bulbo. O bico de sprinkler é rosqueado a uma tubulação pressurizada e permanece fechado por tampa travada pelo bulbo.</span></p>\r\n</div>\r\n</div>\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem13.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Dentre os materiais metálicos ferrosos os <b>aços</b>, são ligas do sistema ferro-carbono, onde a composição de carbono na liga fica entre 0,008 e 2,11%p de C. Assim, os aços podem ser classificados de três diferentes formas: pela <span style=\"text-decoration: underline;\">composição química</span>; pela <span style=\"text-decoration: underline;\">estrutura</span>; pela <span style=\"text-decoration: underline;\">aplicação</span>. Assim é conhecido.</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><img src=\"images/galeria/imagem14.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Os aços-carbono representam por volta de <b>80% da produção mundial</b> de aço. Esse tipo de liga <b>possui</b> como principal elemento de liga o <b>Carbono</b>, isto é, em sua composição outros elementos de liga apresentam <b>baixa concentração</b>. A classificação mais aplicável para os aços-carbono é referente a sua...</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem15.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">...composição química, a qual segue os sistemas da AISI, SAE e ABNT. Assim, nessa classificação aços são <b>subdivididos</b> de acordo com a <b>concentração de carbono</b> presente no sistema, sendo esses: <small>* <span style=\"text-decoration: underline;\">teor de carbono</span></small>, Aço baixo * até 0,25% de C ; Aço médio * de 0,25 a 0,6% de C ; Aço alto * de 0,6 a 1,4% de C).</span></p>\r\n</div>\r\n</div>\r\n<div class=\"content\" style=\"text-align: center;\">\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem16.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Os <b>diferentes teores</b> de carbono nos aços reproduzem a <b>diferença</b> nas <b>propriedades</b>, com o aumento do teor de carbono a tendência do aço é de elevar sua <b>dureza</b> e resistência ao <b>desgaste</b>, em contrapartida reduz a <b>ductilidade</b> do material. As principais <b>vantagens</b> do aço-carbono estão relacionadas...</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem17.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">...ao seu <b>baixo custo</b> e sua <b>boa</b> faixa <b>propriedades</b>, o que de fato abre um grande leque para suas <b>aplicações</b>, como: Chapas; Tubos; Arames; Construção civil; Equipamentos ferroviários; Maquinários; Porém, alguns fatores limitam a utilização dos aço-carbono, a sua baixa resistência à corrosão e baixa...</span></p>\r\n</div>\r\n<div class=\"col-3 bloco-texto bloco-imagem\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"images/galeria/imagem18.png\" alt=\"\" /></span>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\"><b>Tubulação Aço Carbono</b></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">...<b>tenacidade</b> limitam algumas aplicações em ambientes mais agressivos, o que só é possível com a utilização de aços liga. <b>Aços liga</b>, são aços onde ocorre a <b>adição</b> de algum <b>elemento de liga</b> no sistema, de modo que a <b>concentração</b> desse elemento seja <b>superior</b> a concentração presente de <b>carbono</b>.</span></p>\r\n</div>\r\n</div>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"></span></p>\r\n<table align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"images/galeria/imagem19.png\" alt=\"\" /></td>\r\n<td><img src=\"images/galeria/imagem20.png\" alt=\"\" /></td>\r\n</tr>\r\n</tbody>\r\n</table><br />', '', 1, 2, '2021-09-16 16:53:18', 207, '', '2021-09-16 17:06:36', 207, 0, '0000-00-00 00:00:00', '2021-09-16 16:53:18', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(3, 68, 'sobrenos', 'sobrenos', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\">1º - APRESENTAÇÃO</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A HELLBRASS MONTAGENS E MANUTENÇOES INDUSTRIAIS LTDA é uma empresa de Prestação de Serviços de Manutenção e Montagem, que se objetiva ser referencia de excelência no desenvolvimento de processos para parque petroquímicos, siderúrgicos, metalúrgicos, refinarias, caldeiraria e tubulação, trazendo para isso uma nova filosofia de trabalho com base nos mais altos padrões de qualidade e produtividade.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"></span><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">No ramo de manutenção e montagem industrial, onde a atividade é caracterizada pela enorme competitividade, a HELLBRASS MONTAGENS E MANITENÇÕES INDUSTRIAIS LTDA, busca desenvolver sua missão executando, crendo e difundindo seus serviços através da ética, credibilidade, coerência, criatividade, lealdade, justiça e a participação de valores que permeiam as regras de sua gestão.</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Com a velocidade da inovação tecnológica e o aumento da competição, a manutenção assume um papel de primeira grandeza nos serviços essenciais ao bem estar do homem. Sendo limitada a capacidade de investimento das empresas, o melhor e mais econômico investimento é a manutenção em boas condições, a manutenção pode racionalizá-lo aperfeiçoá-lo e atualizá-lo com as novas tecnologias disponíveis, tornando assim a empresa mais competitiva. É neste cenário que surge a terceirização dos serviços de manutenção como forma mais econômica eficiente de execução.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Sabemos que para alcançar e consolidar uma boa posição no mercado é necessário destacar-se diversificando as áreas de atuação, conseguindo agregar valor aos serviços e ao mesmo tempo reduzindo os custos; para este fim adotamos dos fatores básicos: a tecnologia e o gerenciamento, já que as combinações de um gerenciamento inteligente com uma correta absorção tecnológica determinam a eficácia de uma organização industrial. É essa eficácia, eficiência, qualidade e produtividade que oferecemos através de interação entre gerenciamento, planejamento, projeto e produção.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">O gerenciamento da HELLBRASS MONTAGENS INDUSTRIAIS LTDA conduz suas atividades dentro dos princípios de:</span></p>\r\n<p><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Interação;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Comunicação Aberta.</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Satisfação dos Clientes;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Aperfeiçoamento Continuo;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Valorização dos Empregados;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Comprometimento com Resultados;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• Respeito à Sociedade e ao Meio-Ambiente.</span></p>\r\n<p><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A seguir, conheça um pouco mais da HELLBRASS MONTAGENS INDUSTRIAIS LTDA, trabalhamos para atender suas necessidades com qualidade e satisfação.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\">2º POLITICA DA QUALIDADE</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A HELLBRASS MONTAGENS INDUSTRIAIS LTDA desenvolve suas atividades almejando a satisfação de seus clientes do aperfeiçoamento continuo na qualidade de bens e serviços oferecidos.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Nesse intuito, direciona seus esforços para:</span></p>\r\n<p><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• A melhoria do valor;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• O enfoque no cliente; </span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• O trabalho em equipe;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• A pratica do benchmarking;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• A mensuração da qualidade;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• O pensamento em termo estatístico;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• A credibilidade e segurança nos serviços realizados.</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• O compromisso continuo da administração com qualidade;</span> <br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">• A parceria com fornecedores que ofereçam alto nível de qualidade.</span></p>\r\n<p><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Ser referencial de excelência no desenvolvimento de processos para manutenção de parques industriais, oferecendo sempre segurança, confiabilidade, qualidade no atendimento e preços competitivos.</span></p>\r\n<p><br /><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Dispor os equipamentos, sistemas e instalações com eficiência e operacionabilidade a fim de eliminar custos desnecessários e ao mesmo tempo atender e até exceder as expectativas do cliente.</span></p>', '', 1, 2, '2021-09-16 16:53:46', 207, '', '2021-09-16 16:53:46', 0, 0, '0000-00-00 00:00:00', '2021-09-16 16:53:46', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(4, 69, 'servicos', 'servicos', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Gestão de Materiais; </span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Instalações e Montagens;</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"> Engenharia de Manutenção;</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"> Segurança e Meio Ambiente; </span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Manutenção Rotineira e Paradas; </span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Gestão Compartilhada da Manutenção;</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"> Gestão da Manutenção de Ativos – Global ou Compartilhada, entre outros.</span></p>', '', 1, 2, '2021-09-16 16:54:04', 207, '', '2021-09-16 16:54:04', 0, 0, '0000-00-00 00:00:00', '2021-09-16 16:54:04', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(5, 70, 'principios', 'principios', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n<h1 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\">Nossos <strong> princípios </strong> são:</span></h1>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Interação</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Comunicação aberta</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Aperfeiçoamento Contínuo</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Respeito à Sociedade</span></td>\r\n<td style=\"text-align: center;\">&nbsp;</td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Valorização dos Empregados</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Satisfação dos Clientes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Respeito ao meio Ambiente</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Comprometimento com os Resultados</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<div class=\"col-3 bloco-texto\" style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"img/missao-visao-valores.png\" alt=\"\" /></span>\r\n<h3><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">MISSÃO, VISÃO e <b>VALORES</b></span></h3>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Desenvolver sua missão executando e difundindo seus serviços através da ética, credibilidade, compromisso e participação nos calores que permeiam as regras de sua gestão.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Com a velocidade da inovação tecnológica e o aumento da competição tecnológica e o aumento da competição, a manutenção assume um papel de primeira grandeza nos serviços essenciais ao bem-estar do homem.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">O melhor e mais econômico investimento é a manutenção em boas condições, pois pode aperfeiçoá-lo e atualizá-lo com novas tecnologias disponíveis, e neste cenário é onde surge a terceirização dos serviços de manutenção como forma mais atrativa e eficiente. Estas são nossa Misão, Visão e Valores.</span></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-3 bloco-texto\" style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"img/politicadaqualidade.png\" alt=\"\" /></span>\r\n<h3><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Política de <b>QUALIDADE</b></span></h3>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><i>A <b>HELLBRASS MONTAGENS INDUSTRIAIS</b>, desenvolve suas atividades almejando a satisfação de seus clientes do aperfeiçoamento contínuo na qualidade de bens e serviços oferecidos.</i></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A política de qualidade é uma diretriz criada pelas organizações com o objetivo de assegurar um padrão de qualidade aos produtos e serviços oferecidos pela empresa. É utilizada como parâmetro na melhoria contínua dos processos e para a tomada de decisões que impactam diretamente os clientes. Hoje, o conceito de qualidade na construção civil se refere, principalmente, a entregar uma edificação com grande conforto térmico e acústico, aliado a eficiência e durabilidade.</span></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"col-3 bloco-texto\" style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"img/maodeobraespecializada.png\" alt=\"\" /></span>\r\n<h3><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Mão de obra <b>ESPECIALIZADA</b></span></h3>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><i>Temos profissionais qualificados e especializados!</i> A Terceirização e Alocação de Mão de Obra qualificada se trata da contratação de profissionais que desenvolverão suas atividades nas dependências do cliente. Nossos profissionais são:</span></p>\r\n<p>&nbsp;</p>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Eletricistas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Caldeireiros</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Maçariqueiros</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Lubrificadores</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Instrumentistas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ajudantes geral</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Pintores industrial</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspetores em geral</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Soldadores em geral</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Soldadores alumínio</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Isoladores industriais</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ajustadores mecânico</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Mecânicos montadores</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Encanadores industriais</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Montadores de andaimes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspetores ultra-som S1</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Encarregados montagem</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Mecânicos de manutenção</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div class=\"col-3 bloco-texto\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><img src=\"img/areadeatuacao.png\" alt=\"\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></span></div>\r\n<div class=\"col-3 bloco-texto\"><br />\r\n<h3 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">AREAS DE <b>ATUAÇÃO</b></span></h3>\r\n<p style=\"text-align: left;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"> A área de atuação profissional é, basicamente, o segmento em que você deseja construir sua carreira, de forma mais afunilada e especializada. Nos atuamos em diversas áreas e em seguimentos diferentes.</span></p>\r\n<p>&nbsp;</p>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Cimento</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Forjarias</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Biodiesel</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Químicas</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Afluentes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Alimentos</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Siderurgia</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Cervejaria</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Autopeças</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Caldeiraria</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Fertilizantes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Estamparias</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hidroelétricas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ferramentarias</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Terraplanagem</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Sucos e bebidas</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Celulose e papel</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Pintura industrial</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Energia ECO geração</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Automação industrial</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Elétrica Força e Controle</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Metalúrgica e mineração</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Industria automobilística</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Petróleo, gás/petroquímica</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>', '', 1, 2, '2021-09-16 16:54:31', 207, '', '2021-09-16 16:54:31', 0, 0, '0000-00-00 00:00:00', '2021-09-16 16:54:31', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(6, 71, 'ondeestamos', 'ondeestamos', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Onde estamos</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A Região Metropolitana de Campinas, também conhecida como Grande Campinas, constituída por 20 municípios paulistas, foi criada pela lei complementar estadual 870, de 19 de junho de 2000.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A região é uma das mais dinâmicas no cenário econômico brasileiro e representava, em 2013, 1,8% do PIB (produto interno bruto) nacional e 7,81% do PIB paulista, ou seja, cerca de 105,3 bilhões de reais. Além de possuir uma forte economia, a região também apresenta uma infraestrutura que proporciona o desenvolvimento de toda a área metropolitana. A RMC também é conhecida como Vale do Silício Brasileiro.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Conforme a estimativa populacional do IBGE em 2018, a Região Metropolitana de Campinas chegou a marca de 3,2 milhões de habitantes, distribuídos em 3.791 km². </span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">É a décima maior região metropolitana do Brasil e a segunda maior região metropolitana de São Paulo, faz parte do Complexo Metropolitano Expandido, uma megalópole que, já em 2008, compreendia 12% da população brasileira, ou cerca de 30 milhões de habitantes.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Os 20 municípios abrangidos ocupam uma área de 3.791 km², o que corresponde a 0,04% da superfície brasileira e a 1,47% do território paulista. Quando se iniciou a discussão da criação da Região Metropolitana de Campinas, Mogi-Guaçu, Mogi-Mirim e Itapira estavam inseridas no contexto. </span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Porém, por intermédio do então prefeito guaçuano Walter Caveanha (PTB), esses três municípios decidiram ficar de fora da nova região metropolitana. Caveanha explica que a decisão, à época, se deu porque a região da Baixa Mogiana tem características próprias, especialmente quanto ao meio ambiente, e não está ligada à região de Campinas, apesar da proximidade a esta.</span></p>', '', 1, 2, '2021-09-16 16:54:47', 207, '', '2021-09-16 16:54:47', 0, 0, '0000-00-00 00:00:00', '2021-09-16 16:54:47', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');
INSERT INTO `jey51_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(7, 72, 'inicio', 'inicio', '<style>\r\ntable, th, td {\r\n  border: 1px solid #b3ffb3;\r\n}\r\n</style>\r\n\r\n\r\n<h1 id=\"sobre\" style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\">Nossa Empresa:</span></h1>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\"><b>HELLBRASS</b> é uma empresa brasileira que atua no Brasil e está no mercado desde 21/05/2009 nos segmento de construção, montagens e manutenções industriais de gasodutos. oleodutos e poliodutos, além de serviços em instalações industriais e soldas com construções industriais. Especializada em todos os tipos de solda como: solda API descendente. ASMA ascendente. Solda Argônio e Eletrodo em todas as ligas.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">A <b>HELLBRASS</b> possuiu em seu quadro de funcionários técnicos na área de soldagem com qualificação nível II junto ao IMETRO/FBTS/PETROBRÁS nas modalidades para VASOS DE PRESSÃO, TUBULAÇÃO, GASODUTOS E ESTRUTURAS METÁLICAS, sempre preparadas com equipamentos de ultima geração.</span></p>\r\n<p>&nbsp;</p>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Áreas de Atuação (Montagem - Soldagem e Construção)</span></h4>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Cervejaria</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Biodiesel</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Celulose papel</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hidroelétricas</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Cimento</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Energia</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Eco geração Fertilizantes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Alimentos - Sucos e bebidas</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>&nbsp;</h1>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Metalúrgica e mineração petróleo, gás e petroquímica química</span></h4>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Forjarias</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Autopeças</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Caldeiraria</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Terraplenagem</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Siderurgia</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Tratamento de afluentes</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ferramentarias Estamparias</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Indústria Automobilística</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>&nbsp;</h1>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Soldagem</span></h4>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Soldagem de diversas ligas metálicas não metálicas. bem como processos de soldagem dos mais tradicionais aos mais sofisticados.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\">Equipamentos de alta tecnologia de alta tecnologia que proporcionam um serviço durável e de alta qualidade.</span></p>\r\n<p>&nbsp;</p>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Ligas especiais</span></h4>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Alumínio</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ferro fundido</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Carbono</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">VC 1301131</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Bronze</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Aço fundido</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Liga Níquel: MONEL</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">STELL YTE- AMPCO</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>&nbsp;</h1>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Processos de soldagem</span></h4>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">TIG</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Arame tubular</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Eletrodo revestido</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">MIG</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Solda de precisão</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Oxigênio/acetileno</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>&nbsp;</h1>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Serviços de solda</span></h4>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Holiday detector</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Jateamento e pinturas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Caldeiras de vapor - Inspeção NR-13</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Tubulação em aço liga; aço carbono, aço inox e alumínio</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Teste por pontos</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Montagem de plantas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspeção de fabricação e montagem</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Tanques, caldeiras, vasos, silos e equipamentos de caldeiraria em geral</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Isolamento térmico</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Mão-de-obra especializada</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Trocadores de calor - Inspeção NR-13</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Tubulação para distribuição de vapor. Incluindo os de alta pressão e superaquecidos</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Testes hidrostáticos</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Planta de tratamento de água</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspeção e avaliação de equipamentos</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Tubulações - inspeção ANSI B 32.3. B31. 4 E B31.8 Tanques de armazenamento - Inspeção API-653</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Montagem industrial</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspeção de pintura N um e N2</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspeção de dutos (todas as modalidades)</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inteiras ou equipamentos individuais e tubulação de diversos segmentos de segmentos de grande porte</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Radiografia industrial</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspeção dimensional N um e N2</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Montagem de equipamentos mecânicos rotativos</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Medição de dureza convencional e por ultra-som, Ultra-som (todas as modalidades, com ou sem gráfico)<br /></span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Partículas magnéticas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Vasos de pressão - Inspeção NR-13</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Teste de estanqueidade com pressão negativa e positiva</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Líquidos penetrantes</span>&nbsp;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1>&nbsp;</h1>\r\n<h4 style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\">Mão de obra</span></h4>\r\n<table style=\"width: 100%; height: 46px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ajudante geral</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Lubrificador</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Caldeireiro</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Soldador alumínio</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Pintor industrial</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Encanador</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Maçariqueiro</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Mecânico montador</span></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Instrumentistas</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Encarregado de montagem Encanador</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Inspetor de ultra-som S1</span></td>\r\n<td style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Mecânico de manutenção de bombas Montador de andaimes</span></td>\r\n</tr>\r\n</tbody>\r\n</table><br />', '', 1, 2, '2021-09-16 16:55:19', 207, '', '2021-09-16 17:01:05', 207, 0, '0000-00-00 00:00:00', '2021-09-16 16:55:19', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_contentitem_tag_map`
--

DROP TABLE IF EXISTS `jey51_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `jey51_contentitem_tag_map` (
  `type_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_content_frontpage`
--

DROP TABLE IF EXISTS `jey51_content_frontpage`;
CREATE TABLE IF NOT EXISTS `jey51_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_content_rating`
--

DROP TABLE IF EXISTS `jey51_content_rating`;
CREATE TABLE IF NOT EXISTS `jey51_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_content_types`
--

DROP TABLE IF EXISTS `jey51_content_types`;
CREATE TABLE IF NOT EXISTS `jey51_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_content_types`
--

INSERT INTO `jey51_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_core_log_searches`
--

DROP TABLE IF EXISTS `jey51_core_log_searches`;
CREATE TABLE IF NOT EXISTS `jey51_core_log_searches` (
  `search_term` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_extensions`
--

DROP TABLE IF EXISTS `jey51_extensions`;
CREATE TABLE IF NOT EXISTS `jey51_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `manifest_cache` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_extensions`
--

INSERT INTO `jey51_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"pt-BR\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"1\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"record_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.1\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"99b086b1a5582f99ea072aabd88cb5d2\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jey51_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.60.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1631908200}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', 'null', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1631809125}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jey51_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.2\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"September 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'BrazilianPortuguesept-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{\"name\":\"Brazilian Portuguese (pt-BR)\",\"type\":\"language\",\"creationDate\":\"Setembro de 2020\",\"author\":\"Projeto Joomla!\",\"copyright\":\"Copyright (C) 2005-2020 Open Source Matters. Todos os direitos reservados.\",\"authorEmail\":\"helvecio.dasilva@community.joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.21.1\",\"description\":\"pt-BR site language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'BrazilianPortuguesept-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{\"name\":\"Brazilian Portuguese (pt-BR)\",\"type\":\"language\",\"creationDate\":\"Setembro de 2020\",\"author\":\"Projeto Joomla!\",\"copyright\":\"Copyright (C) 2005-2020 Open Source Matters. Todos os direitos reservados.\",\"authorEmail\":\"helvecio.dasilva@community.joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.21.1\",\"description\":\"Brazilian Portuguese Administrator language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Brazilian Portuguese (pt-BR) Language Pack', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{\"name\":\"Brazilian Portuguese (pt-BR) Language Pack\",\"type\":\"package\",\"creationDate\":\"Setembro de 2020\",\"author\":\"Projeto Joomla!\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. Todos os direitos reservados.\",\"authorEmail\":\"helvecio.dasilva@community.joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.21.1\",\"description\":\"<div style=\\\"text-align: left;\\\">\\n <h2>Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro (pt-BR) para Joomla! 3.9.21 instalada com sucesso!<\\/h2>\\n <h3>Vers\\u00e3o 3.9.21.1<\\/h3>\\n <p>Por favor, informe qualquer problema ou assunto relacionado encontrado, na p\\u00e1gina <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n <p>Traduzido pela <em>Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/em>.<\\/p>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_pt-BR\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'plg_quickicon_eos310', 'plugin', 'eos310', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_eos310\",\"type\":\"plugin\",\"creationDate\":\"June 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.0\",\"description\":\"PLG_QUICKICON_EOS310_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"eos310\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'blue_design', 'template', 'blue_design', '', 0, 1, 1, 0, '{\"name\":\"blue_design\",\"type\":\"template\",\"creationDate\":\"January 18, 2013\",\"author\":\"Thecoders.vn\",\"copyright\":\"Copyright (C) 2013 Thecoders.vn. All rights reserved.\",\"authorEmail\":\"mr_hiennc@yahoo.com\",\"authorUrl\":\"http:\\/\\/thecoders.vn\",\"version\":\"2.5.0\",\"description\":\"\\n\\t\\t <div style=\\\"font-size:10px;\\\">\\n\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/Thecoders.vn\\\"><b>Blue Design<\\/b><\\/a><br><br>\\n\\t\\t\\t\\t<i>Blue Design Template is a clean business or portfolio Joomla 2.5\\/3.0 template built with a clean and crisp, pixel by pixel concept. Blue Design comes packed with various extensions and an interactive admin option panel. This is a design that is creative, flexible, scalable, and a offers a lot more, all working off the power of Joomla! Blue Design is built totally for Joomla without the use of complicated messy frameworks. You get stability, flexibility, scalability, and more !\\n\\t\\t\\t\\t<\\/i><br><br>\\n\\t\\t\\t<a target=\\\"_blank\\\" href=\\\"http:\\/\\/Thecoders.vn\\\"><i>Thecoders.vn - Free Joomla 2.5 Extensions, Joomla Modules, Joomla Plugins.<\\/i><\\/a>\\n\\t\\t<\\/div>\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateWidth\":\"0\",\"columnWidth\":\"3\",\"languageDirection\":\"ltr\",\"logo\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"copyright\":\"Copyright 2012 (c) Thecoders.vn. All rights reserved.\",\"customcss\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'Slideshow CK', 'module', 'mod_slideshowck', '', 0, 1, 0, 0, '{\"name\":\"Slideshow CK\",\"type\":\"module\",\"creationDate\":\"Avril 2012\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"C\\u00e9dric KEIFLIN\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"https:\\/\\/www.joomlack.fr\",\"version\":\"2.3.0\",\"description\":\"SLIDESHOWCK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_slideshowck\"}', '{\"manual\":\"1\",\"msg\":\"\",\"slides\":\"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"showarticles\":\"index.php?option=com_content\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"62%\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbposition\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":\"random\",\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"random\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"loadjquerymobile\":\"1\",\"autocreatethumbs\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"12px\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"10px\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\",\"web_name\":\"http:\\/\\/You Master Domain Name\",\"debug_mode\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 10014, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{\"name\":\"COM_JCE\",\"type\":\"component\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"COM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 10014, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 10014, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_CONTENT_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 10014, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{\"name\":\"plg_extension_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_EXTENSION_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 10014, 'plg_fields_mediajce', 'plugin', 'mediajce', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_mediajce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"https:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_FIELDS_MEDIAJCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mediajce\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 10014, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_INSTALLER_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 10014, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_QUICKICON_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 10014, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_jce\",\"type\":\"plugin\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2021 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.9.15\",\"description\":\"PLG_SYSTEM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{\"column_styles\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{\"name\":\"PKG_JCE\",\"type\":\"package\",\"creationDate\":\"16-09-2021\",\"author\":\"Ryan Demmer\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.9.15\",\"description\":\"PKG_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'com_slideshowck', 'component', 'com_slideshowck', '', 1, 1, 0, 0, '{\"name\":\"com_slideshowck\",\"type\":\"component\",\"creationDate\":\"April 2019\",\"author\":\"Cedric Keiflin\",\"copyright\":\"Copyright (C) 2019. All rights reserved.\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"https:\\/\\/www.joomlack.fr\",\"version\":\"2.3.0\",\"description\":\"SLIDESHOWCK_DESC\",\"group\":\"\",\"filename\":\"slideshowck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_fields`
--

DROP TABLE IF EXISTS `jey51_fields`;
CREATE TABLE IF NOT EXISTS `jey51_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_fields_categories`
--

DROP TABLE IF EXISTS `jey51_fields_categories`;
CREATE TABLE IF NOT EXISTS `jey51_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_fields_groups`
--

DROP TABLE IF EXISTS `jey51_fields_groups`;
CREATE TABLE IF NOT EXISTS `jey51_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_fields_values`
--

DROP TABLE IF EXISTS `jey51_fields_values`;
CREATE TABLE IF NOT EXISTS `jey51_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_filters`
--

DROP TABLE IF EXISTS `jey51_finder_filters`;
CREATE TABLE IF NOT EXISTS `jey51_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links`
--

DROP TABLE IF EXISTS `jey51_finder_links`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `state` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms0`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms1`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms2`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms3`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms4`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms5`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms6`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms7`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms8`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_terms9`
--

DROP TABLE IF EXISTS `jey51_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termsa`
--

DROP TABLE IF EXISTS `jey51_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termsb`
--

DROP TABLE IF EXISTS `jey51_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termsc`
--

DROP TABLE IF EXISTS `jey51_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termsd`
--

DROP TABLE IF EXISTS `jey51_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termse`
--

DROP TABLE IF EXISTS `jey51_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_links_termsf`
--

DROP TABLE IF EXISTS `jey51_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `jey51_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_taxonomy`
--

DROP TABLE IF EXISTS `jey51_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `jey51_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_finder_taxonomy`
--

INSERT INTO `jey51_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `jey51_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `jey51_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_terms`
--

DROP TABLE IF EXISTS `jey51_finder_terms`;
CREATE TABLE IF NOT EXISTS `jey51_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_terms_common`
--

DROP TABLE IF EXISTS `jey51_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `jey51_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_finder_terms_common`
--

INSERT INTO `jey51_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_tokens`
--

DROP TABLE IF EXISTS `jey51_finder_tokens`;
CREATE TABLE IF NOT EXISTS `jey51_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `jey51_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `jey51_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_finder_types`
--

DROP TABLE IF EXISTS `jey51_finder_types`;
CREATE TABLE IF NOT EXISTS `jey51_finder_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_languages`
--

DROP TABLE IF EXISTS `jey51_languages`;
CREATE TABLE IF NOT EXISTS `jey51_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_languages`
--

INSERT INTO `jey51_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 60, 'pt-BR', 'Português do Brasil (pt-BR)', 'Português Brasileiro (pt-BR)', 'pt', 'pt_br', '', '', '', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_menu`
--

DROP TABLE IF EXISTS `jey51_menu`;
CREATE TABLE IF NOT EXISTS `jey51_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_menu`
--

INSERT INTO `jey51_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 65, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Início', 'home', '', 'home', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(107, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce&view=cpanel', 'component', 1, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/logo.svg', 0, '{}', 43, 52, 0, '', 1),
(108, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 1, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1),
(109, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 1, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1),
(110, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 1, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1),
(111, 'main', 'COM_JCE_MENU_FILEBROWSER', 'com-jce-menu-filebrowser', '', 'com-jce/com-jce-menu-filebrowser', 'index.php?option=com_jce&view=browser', 'component', 1, 107, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1),
(112, 'mainmenu', 'Sobre nós', 'sobre-nos', '', 'sobre-nos', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 53, 54, 0, '*', 0),
(113, 'mainmenu', 'Serviços', 'servicos', '', 'servicos', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 55, 56, 0, '*', 0),
(114, 'mainmenu', 'Princípios', 'principios', '', 'principios', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 57, 58, 0, '*', 0),
(115, 'mainmenu', 'Onde estamos', 'onde-estamos', '', 'onde-estamos', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 59, 60, 0, '*', 0),
(116, 'mainmenu', 'Galeria', 'galeria', '', 'galeria', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0),
(117, 'mainmenu', 'Contato', 'contato', '', 'contato', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 63, 64, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_menu_types`
--

DROP TABLE IF EXISTS `jey51_menu_types`;
CREATE TABLE IF NOT EXISTS `jey51_menu_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_menu_types`
--

INSERT INTO `jey51_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_messages`
--

DROP TABLE IF EXISTS `jey51_messages`;
CREATE TABLE IF NOT EXISTS `jey51_messages` (
  `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_messages_cfg`
--

DROP TABLE IF EXISTS `jey51_messages_cfg`;
CREATE TABLE IF NOT EXISTS `jey51_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_modules`
--

DROP TABLE IF EXISTS `jey51_modules`;
CREATE TABLE IF NOT EXISTS `jey51_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_modules`
--

INSERT INTO `jey51_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'top-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*'),
(90, 63, 'Slideshow CK', '', '', 1, 'slideshow', 207, '2021-09-17 20:17:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshowck', 1, 0, '{\"source\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|images\\/banners\\/Tanques (7).jpg|qq|,|qq|imgcaption|qq|:|qq|Soldagem de diversas ligas met\\u00e1licas e n\\u00e3o met\\u00e1licas.|qq|,|qq|imgtitle|qq|:|qq|Soldagem |qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/hellbrass\\/images\\/banners\\/Tanques (7).jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|videoautoplay|qq|:|qq|0|qq|,|qq|videoloop|qq|:|qq|0|qq|,|qq|videocontrols|qq|:|qq|1|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|,|qq|texttype|qq|:|qq|custom|qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/Tanques (18).jpg|qq|,|qq|imgcaption|qq|:|qq|Equipamentos de alta tecnologia que proporcionam um servi\\u00e7o dur\\u00e1vel e de alta qualidade.|qq|,|qq|imgtitle|qq|:|qq|Ligas especiais|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/hellbrass\\/images\\/banners\\/Tanques (18).jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|videoautoplay|qq|:|qq|0|qq|,|qq|videoloop|qq|:|qq|0|qq|,|qq|videocontrols|qq|:|qq|1|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|,|qq|texttype|qq|:|qq|custom|qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/Tanques (24).jpg|qq|,|qq|imgcaption|qq|:|qq|Tubula\\u00e7\\u00e3o de prote\\u00e7\\u00e3o contra inc\\u00eandios.|qq|,|qq|imgtitle|qq|:|qq|Inc\\u00eandio|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/hellbrass\\/images\\/banners\\/Tanques (24).jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|videoautoplay|qq|:|qq|0|qq|,|qq|videoloop|qq|:|qq|0|qq|,|qq|videocontrols|qq|:|qq|1|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|,|qq|texttype|qq|:|qq|custom|qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/Tanques (33).jpg|qq|,|qq|imgcaption|qq|:|qq|Alum\\u00ednio, Bronze, Inox: 304\\u00b7 310- 3165316, Ac\\u00e7o e Ferro fundido|qq|,|qq|imgtitle|qq|:|qq|Solda|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/hellbrass\\/images\\/banners\\/Tanques (33).jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|videoautoplay|qq|:|qq|0|qq|,|qq|videoloop|qq|:|qq|0|qq|,|qq|videocontrols|qq|:|qq|1|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|,|qq|texttype|qq|:|qq|custom|qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/Tanques (7).jpg|qq|,|qq|imgcaption|qq|:|qq|Micro em solda: solda de precis\\u00e3o. TIG e MIG|qq|,|qq|imgtitle|qq|:|qq|Processos de soldagem|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/hellbrass\\/images\\/banners\\/Tanques (7).jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|videoautoplay|qq|:|qq|0|qq|,|qq|videoloop|qq|:|qq|0|qq|,|qq|videocontrols|qq|:|qq|1|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|,|qq|startdate|qq|:|qq||qq|,|qq|enddate|qq|:|qq||qq|,|qq|texttype|qq|:|qq|custom|qq|}]\",\"spacerfolderimport\":\"\",\"theme\":\"default\",\"styles\":\"\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"50%\",\"minheight\":\"150\",\"navigation\":\"2\",\"skin\":\"camera_amber_skin\",\"thumbnails\":\"0\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"usecaption\":\"1\",\"usetitle\":\"1\",\"usecaptiondesc\":\"1\",\"textlength\":\"\",\"striptags\":\"1\",\"linkposition\":\"fullslide\",\"linkbuttontext\":\"SLIDESHOWCK_LINK_BUTTON_TEXT\",\"linkbuttonclass\":\"btn\",\"linkautoimage\":\"0\",\"linktarget\":\"_parent\",\"effect\":[\"random\"],\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"moveFromLeft\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"keyboardnavigation\":\"0\",\"fullpage\":\"0\",\"container\":\"\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"usecaptionresponsive\":\"1\",\"captionresponsiveresolution\":\"480\",\"captionresponsivefontsize\":\"0.6em\",\"captionresponsivehidecaption\":\"0\",\"loadjqueryeasing\":\"1\",\"autocreatethumbs\":\"1\",\"usethumbstype\":\"mini\",\"fixhtml\":\"0\",\"content_prepare\":\"1\",\"debug\":\"1\",\"loadinline\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_modules_menu`
--

DROP TABLE IF EXISTS `jey51_modules_menu`;
CREATE TABLE IF NOT EXISTS `jey51_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_modules_menu`
--

INSERT INTO `jey51_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_newsfeeds`
--

DROP TABLE IF EXISTS `jey51_newsfeeds`;
CREATE TABLE IF NOT EXISTS `jey51_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_overrider`
--

DROP TABLE IF EXISTS `jey51_overrider`;
CREATE TABLE IF NOT EXISTS `jey51_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_postinstall_messages`
--

DROP TABLE IF EXISTS `jey51_postinstall_messages`;
CREATE TABLE IF NOT EXISTS `jey51_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_postinstall_messages`
--

INSERT INTO `jey51_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1),
(10, 700, 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_TITLE', 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_DESCRIPTION', '', 'com_admin', 1, 'message', '', '', NULL, NULL, '3.9.27', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_privacy_consents`
--

DROP TABLE IF EXISTS `jey51_privacy_consents`;
CREATE TABLE IF NOT EXISTS `jey51_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_privacy_requests`
--

DROP TABLE IF EXISTS `jey51_privacy_requests`;
CREATE TABLE IF NOT EXISTS `jey51_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_redirect_links`
--

DROP TABLE IF EXISTS `jey51_redirect_links`;
CREATE TABLE IF NOT EXISTS `jey51_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(6) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_schemas`
--

DROP TABLE IF EXISTS `jey51_schemas`;
CREATE TABLE IF NOT EXISTS `jey51_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_schemas`
--

INSERT INTO `jey51_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.10.0-2021-05-28'),
(10015, '2.0.2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_session`
--

DROP TABLE IF EXISTS `jey51_session`;
CREATE TABLE IF NOT EXISTS `jey51_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_session`
--

INSERT INTO `jey51_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x30373136736b3464616372333970636e6d6831366f6872753170, 1, 0, 1631813305, 'joomla|s:3240:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozMjc7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjMxODA5NTYzO3M6NDoibGFzdCI7aToxNjMxODEyNDY0O3M6Mzoibm93IjtpOjE2MzE4MTMzMDU7fXM6NToidG9rZW4iO3M6MzI6IlNGNGZpYlh2OEhOdmp3b3FFU1BPRHhpaFN3VUY5eE93Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjg6e3M6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImxhbmciO3M6NToicHQtQlIiO31zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO3M6NzoiaW5zdGFsbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxNzoiaW5zdGFsbF9kaXJlY3RvcnkiO3M6Mjc6IkM6XHdhbXA2NFx3d3dcaGVsbGJyYXNzL3RtcCI7fXM6MTI6InJlZGlyZWN0X3VybCI7TjtzOjY6Im1hbmFnZSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6NTp7czo2OiJzZWFyY2giO3M6NToiQmVlejMiO3M6Njoic3RhdHVzIjtzOjA6IiI7czo5OiJjbGllbnRfaWQiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjg6Im5hbWUgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO319czoxNjoiY29tX2pvb21sYXVwZGF0ZSI7Tzo4OiJzdGRDbGFzcyI6NTp7czo2OiJtZXRob2QiO3M6NjoiZGlyZWN0IjtzOjQ6ImZpbGUiO047czoxMDoib2xkdmVyc2lvbiI7TjtzOjg6InBhc3N3b3JkIjtzOjMyOiJVVHFUaTFGMDdoRGhiN2swUkJSVnBRTmZvcmpBam5rRSI7czo4OiJmaWxlc2l6ZSI7aToxMjQwMjQ3MTt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6OTA7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6MTA6ImNvbV9jb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoibWVudSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO31zOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO31zOjk6ImNsaWVudF9pZCI7aTowO319czoxNToiY29tX3NsaWRlc2hvd2NrIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImJyb3dzZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJvcmRlcmNvbCI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjIwNyI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czo5OiJjb21fbWVkaWEiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InJldHVybl91cmwiO3M6MTAwOiJpbmRleC5waHA/b3B0aW9uPWNvbV9tZWRpYSZ2aWV3PWltYWdlcyZ0bXBsPWNvbXBvbmVudCZmaWVsZGlkPSZlX25hbWU9Y2tzbGlkZWltZ25hbWU0JmFzc2V0PSZhdXRob3I9Ijt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 207, 'hellbrass'),
(0x32666331756e706565336e723237727675357471337367316a37, 0, 1, 1631813769, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTgxMzc2ODtzOjQ6Imxhc3QiO2k6MTYzMTgxMzc2ODtzOjM6Im5vdyI7aToxNjMxODEzNzY4O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x336e75376538697676396b6b3170717137663767366339383972, 1, 0, 1631910691, 'joomla|s:1508:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0MztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MzE5MDgyNTk7czo0OiJsYXN0IjtpOjE2MzE5MDk4NTA7czozOiJub3ciO2k6MTYzMTkxMDY5MDt9czo1OiJ0b2tlbiI7czozMjoiZ3VzbGs1ZDRWdlNJWmN6V1NCQ2duWlo3UUhLQUFKRmIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJwdC1CUiI7fXM6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7fXM6MTM6ImNvbV90ZW1wbGF0ZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJzdHlsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjkwO31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiIyMDciO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 207, 'hellbrass'),
(0x366b7363306574746b766234303933386b67686d663434653065, 0, 1, 1631813591, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTgxMzU5MTtzOjQ6Imxhc3QiO2k6MTYzMTgxMzU5MTtzOjM6Im5vdyI7aToxNjMxODEzNTkxO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x6364763062666676707667687474366f6c3435336f726276396e, 0, 1, 1631812599, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTgxMjU5OTtzOjQ6Imxhc3QiO2k6MTYzMTgxMjU5OTtzOjM6Im5vdyI7aToxNjMxODEyNTk5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x65323976333130356e6a6276306b6633636d6674306334333239, 0, 1, 1631813321, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTgxMjc4NTtzOjQ6Imxhc3QiO2k6MTYzMTgxMjc4NTtzOjM6Im5vdyI7aToxNjMxODEzMzIxO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x676c6f63756c64393031316733376863306f6c72723274753665, 0, 1, 1631908238, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTkwODIzNztzOjQ6Imxhc3QiO2k6MTYzMTkwODIzNztzOjM6Im5vdyI7aToxNjMxOTA4MjM3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x68766139656e363565667339687031723261373666636e6c7266, 0, 1, 1631910939, 'joomla|s:668:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxMztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MzE5MDgyMDk7czo0OiJsYXN0IjtpOjE2MzE5MTA0ODI7czozOiJub3ciO2k6MTYzMTkxMDkzOTt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x69656c636962383462716861706a6c7163686968626134736969, 0, 1, 1631908852, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTkwODgxOTtzOjQ6Imxhc3QiO2k6MTYzMTkwODgxOTtzOjM6Im5vdyI7aToxNjMxOTA4ODUyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x6d36357031626736756c6e61646e3564756d6a613530656b7233, 0, 1, 1631813606, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTgxMzYwNjtzOjQ6Imxhc3QiO2k6MTYzMTgxMzYwNjtzOjM6Im5vdyI7aToxNjMxODEzNjA2O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x6d65746134726b6c7064747562696c33683964676834676e3731, 0, 1, 1631910444, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTkwOTgxNztzOjQ6Imxhc3QiO2k6MTYzMTkxMDQxNTtzOjM6Im5vdyI7aToxNjMxOTEwNDQ0O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x6e63706d64676c376f64637435696138396e7067736d34677273, 0, 1, 1631910883, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTkxMDY5NDtzOjQ6Imxhc3QiO2k6MTYzMTkxMDg2NTtzOjM6Im5vdyI7aToxNjMxOTEwODgzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x71326464633039316336693537756a66613031616e64756c6767, 0, 1, 1631908212, 'joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTYzMTkwODE5NDtzOjQ6Imxhc3QiO2k6MTYzMTkwODE5NDtzOjM6Im5vdyI7aToxNjMxOTA4MTk0O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x72677436336c3071736173326134377137656f726872756f6237, 0, 1, 1631813778, 'joomla|s:860:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1MTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2MzE4MDkxMjA7czo0OiJsYXN0IjtpOjE2MzE4MTM3NDc7czozOiJub3ciO2k6MTYzMTgxMzc3Nzt9czo1OiJ0b2tlbiI7czozMjoicEowVVFQbFBQNmloV2Z3ckRNOGs3cW5DMlBMalpXNG4iO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_slideshowck_styles`
--

DROP TABLE IF EXISTS `jey51_slideshowck_styles`;
CREATE TABLE IF NOT EXISTS `jey51_slideshowck_styles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `state` int(10) NOT NULL DEFAULT '1',
  `params` longtext NOT NULL,
  `layoutcss` text NOT NULL,
  `checked_out` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_tags`
--

DROP TABLE IF EXISTS `jey51_tags`;
CREATE TABLE IF NOT EXISTS `jey51_tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_tags`
--

INSERT INTO `jey51_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 207, '2021-09-16 16:18:19', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_template_styles`
--

DROP TABLE IF EXISTS `jey51_template_styles`;
CREATE TABLE IF NOT EXISTS `jey51_template_styles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inheritable` tinyint(4) NOT NULL DEFAULT '0',
  `parent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_template_styles`
--

INSERT INTO `jey51_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`, `inheritable`, `parent`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}', 0, ''),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', 0, ''),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}', 0, ''),
(9, 'blue_design', 0, '1', 'blue_design - Padrão', '{\"templateWidth\":\"0\",\"columnWidth\":\"3\",\"languageDirection\":\"ltr\",\"logo\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"copyright\":\"HELLBRASS - Todos os direitos reservado - 2009 - 2021\",\"customcss\":\"1\"}', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_ucm_base`
--

DROP TABLE IF EXISTS `jey51_ucm_base`;
CREATE TABLE IF NOT EXISTS `jey51_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_ucm_content`
--

DROP TABLE IF EXISTS `jey51_ucm_content`;
CREATE TABLE IF NOT EXISTS `jey51_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint(4) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_ucm_history`
--

DROP TABLE IF EXISTS `jey51_ucm_history`;
CREATE TABLE IF NOT EXISTS `jey51_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_ucm_history`
--

INSERT INTO `jey51_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2021-09-16 16:52:44', 207, 2663, '19393eefad4eed2d9a34236219c4aaa7ffc43464', '{\"id\":\"1\",\"asset_id\":66,\"title\":\"contato\",\"alias\":\"contato\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Contato<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Cosm\\u00f3polis-SP<\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><a href=\\\"mailto:montagens@hellbrass.com.br\\\">montagens@hellbrass.com.br<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><a href=\\\"mailto:manutencao@hellbrass.com.br\\\">manutencao@hellbrass.com.br<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">19 3800-4837<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:52:44\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:52:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:52:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(2, 2, 1, '', '2021-09-16 16:53:18', 207, 17577, '06fc8a6071ab73884019fc6abad9d83278e8bcfa', '{\"id\":\"2\",\"asset_id\":67,\"title\":\"galeria\",\"alias\":\"galeria\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem1.png\\\" alt=\\\"\\\" \\/><\\/span><\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\">\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Linha de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>sistema de combate a inc\\u00eandio<\\/b> deve ser elaborado por um projetista, que ir\\u00e1 indicar todas as diretrizes e normas de combate a inc\\u00eandio do local, considerando alguns aspectos como tamanho dos ambientes, riscos envolvidos, presen\\u00e7a de l\\u00edquidos ou materiais inflam\\u00e1veis, etc.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem2.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Liga met\\u00e1lica amplamente empregada na ind\\u00fastria e na constru\\u00e7\\u00e3o civil, o <b>a\\u00e7o carbono<\\/b> \\u00e9 resultado da combina\\u00e7\\u00e3o de dois elementos: ferro e carbono. Este material \\u00e9 utilizado na constru\\u00e7\\u00e3o de autom\\u00f3veis, m\\u00e1quinas de lavar, decora\\u00e7\\u00e3o de ambientes e muitos outras aplica\\u00e7\\u00f5es.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem3.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o Inox<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>a\\u00e7o inoxid\\u00e1vel ou inox<\\/b> \\u00e9 uma liga de ferro e cr\\u00f3mio, podendo conter tamb\\u00e9m n\\u00edquel, molibd\\u00e9nio e outros elementos, que apresenta propriedades f\\u00edsico-qu\\u00edmicas superiores aos a\\u00e7os comuns, sendo a alta resist\\u00eancia \\u00e0 oxida\\u00e7\\u00e3o atmosf\\u00e9rica a sua principal caracter\\u00edstica, \\u201cmaterial verde\\u201d.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem4.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tanque<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>tanque<\\/b> de armazenamento ou de armazenagem tamb\\u00e9m designado por reservat\\u00f3rio \\u00e9 um recipiente destinado a armazenar fluidos \\u00e0 press\\u00e3o atmosf\\u00e9rica e a press\\u00f5es superiores \\u00e0 atmosf\\u00e9rica. A maior parte dos tanques de armazenamento s\\u00e3o constru\\u00eddos de acordo com requisitos definidos.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem5.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00f5es<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><b>Encanamento\\/canaliza\\u00e7\\u00e3o<\\/b> \\u00e9 a constru\\u00e7\\u00e3o ou estrutura de transporte de algo atrav\\u00e9s de tubos ou canos. O cano tem que ser de um material resistente o suficiente para aguentar a press\\u00e3o do material transportado, que geralmente \\u00e9 l\\u00edquido. Os profissionais que trabalham com encanamentos s\\u00e3o designados encanadores.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem6.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Inox OD<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Quando falamos de tubos de a\\u00e7o <b>inox OD<\\/b> queremos dizer que esse tubo atende a norma OD, que, traduzido do ingl\\u00eas, significa di\\u00e2metro externo, sendo esse di\\u00e2metro padronizado em 1\\u201d (que equivale a 25,40mm). OD \\u00e9 a sigla para outside diameter que, no ingl\\u00eas, significa di\\u00e2metro externo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"img\\/imagem7.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>chuveiro autom\\u00e1tico<\\/b> (portugu\\u00eas brasileiro) ou <b>rociador de inc\\u00eandios<\\/b> (portugu\\u00eas europeu) (em ingl\\u00eas <b>Sprinkler<\\/b>) \\u00e9 um dispositivo para a extin\\u00e7\\u00e3o de inc\\u00eandios. Consiste numa armadura, com um cano conectado a uma tubagem de \\u00e1gua a press\\u00e3o.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem8.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O cano se fecha com uma tampa sujeita por uma c\\u00e1psula de vidro recheada de um l\\u00edquido cujo ponto de ebuli\\u00e7\\u00e3o \\u00e9 a uma temperatura determinada (temperatura de disparo), a qual est\\u00e1 sujeita contra um dispersor. Quando se produz um inc\\u00eandio...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem10.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><span style=\\\"font-size: 14pt;\\\">...ferve o l\\u00edquido e o vapor rompe a c\\u00e1psula; a tampa salta, sai a \\u00e1gua, e choca contra o dispersor aspergindo a zona incendiada. Existem outros autom\\u00e1ticos, que em vez da c\\u00e1psula est\\u00e3o conectados a<\\/span> <span style=\\\"font-size: 14pt;\\\">um detector de inc\\u00eandios o qual manda uma v\\u00e1lvula autom\\u00e1tica.<\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem11.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Conjunto de medidas para detectar e controlar o rastro do fogo, facilitando seu combate e garantindo a seguran\\u00e7a da edifica\\u00e7\\u00e3o, das pessoas e bens. Devido \\u00e0 sua import\\u00e2ncia, \\u00e9 <b>obrigat\\u00f3rio em pr\\u00e9dios comerciais e residenciais<\\/b> e deve ser elaborado por profissionais qualificados.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem12.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema contra inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O sistema de prote\\u00e7\\u00e3o contra inc\\u00eandio \\u00e9 composto por 3 sistemas: <b>Detec\\u00e7\\u00e3o de inc\\u00eandio<\\/b>;<b> Alarme de inc\\u00eandio<\\/b>; <b>Combate ao inc\\u00eandio<\\/b>. O acionador \\u00e9 ligado \\u00e0 uma Central de Alarme. Tem um bot\\u00e3o, parecido com um interruptor, quando acionado envia a localiza\\u00e7\\u00e3o da ocorr\\u00eancia.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem9.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Chuveiro\\/Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <span style=\\\"text-decoration: underline;\\\">sprinkler<\\/span> \\u00e9 um <b>dispositivo comumente utilizado no combate a inc\\u00eandios<\\/b>. Ele \\u00e9 composto de uma \\u201carmadura\\u201d, um elemento sens\\u00edvel, chamado bulbo. O bico de sprinkler \\u00e9 rosqueado a uma tubula\\u00e7\\u00e3o pressurizada e permanece fechado por tampa travada pelo bulbo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem13.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Dentre os materiais met\\u00e1licos ferrosos os <b>a\\u00e7os<\\/b>, s\\u00e3o ligas do sistema ferro-carbono, onde a composi\\u00e7\\u00e3o de carbono na liga fica entre 0,008 e 2,11%p de C. Assim, os a\\u00e7os podem ser classificados de tr\\u00eas diferentes formas: pela <span style=\\\"text-decoration: underline;\\\">composi\\u00e7\\u00e3o qu\\u00edmica<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">estrutura<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">aplica\\u00e7\\u00e3o<\\/span>. Assim \\u00e9 conhecido.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"img\\/imagem14.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os a\\u00e7os-carbono representam por volta de <b>80% da produ\\u00e7\\u00e3o mundial<\\/b> de a\\u00e7o. Esse tipo de liga <b>possui<\\/b> como principal elemento de liga o <b>Carbono<\\/b>, isto \\u00e9, em sua composi\\u00e7\\u00e3o outros elementos de liga apresentam <b>baixa concentra\\u00e7\\u00e3o<\\/b>. A classifica\\u00e7\\u00e3o mais aplic\\u00e1vel para os a\\u00e7os-carbono \\u00e9 referente a sua...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem15.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...composi\\u00e7\\u00e3o qu\\u00edmica, a qual segue os sistemas da AISI, SAE e ABNT. Assim, nessa classifica\\u00e7\\u00e3o a\\u00e7os s\\u00e3o <b>subdivididos<\\/b> de acordo com a <b>concentra\\u00e7\\u00e3o de carbono<\\/b> presente no sistema, sendo esses: <small>* <span style=\\\"text-decoration: underline;\\\">teor de carbono<\\/span><\\/small>, A\\u00e7o baixo * at\\u00e9 0,25% de C ; A\\u00e7o m\\u00e9dio * de 0,25 a 0,6% de C ; A\\u00e7o alto * de 0,6 a 1,4% de C).<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem16.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os <b>diferentes teores<\\/b> de carbono nos a\\u00e7os reproduzem a <b>diferen\\u00e7a<\\/b> nas <b>propriedades<\\/b>, com o aumento do teor de carbono a tend\\u00eancia do a\\u00e7o \\u00e9 de elevar sua <b>dureza<\\/b> e resist\\u00eancia ao <b>desgaste<\\/b>, em contrapartida reduz a <b>ductilidade<\\/b> do material. As principais <b>vantagens<\\/b> do a\\u00e7o-carbono est\\u00e3o relacionadas...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem17.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...ao seu <b>baixo custo<\\/b> e sua <b>boa<\\/b> faixa <b>propriedades<\\/b>, o que de fato abre um grande leque para suas <b>aplica\\u00e7\\u00f5es<\\/b>, como: Chapas; Tubos; Arames; Constru\\u00e7\\u00e3o civil; Equipamentos ferrovi\\u00e1rios; Maquin\\u00e1rios; Por\\u00e9m, alguns fatores limitam a utiliza\\u00e7\\u00e3o dos a\\u00e7o-carbono, a sua baixa resist\\u00eancia \\u00e0 corros\\u00e3o e baixa...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/imagem18.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...<b>tenacidade<\\/b> limitam algumas aplica\\u00e7\\u00f5es em ambientes mais agressivos, o que s\\u00f3 \\u00e9 poss\\u00edvel com a utiliza\\u00e7\\u00e3o de a\\u00e7os liga. <b>A\\u00e7os liga<\\/b>, s\\u00e3o a\\u00e7os onde ocorre a <b>adi\\u00e7\\u00e3o<\\/b> de algum <b>elemento de liga<\\/b> no sistema, de modo que a <b>concentra\\u00e7\\u00e3o<\\/b> desse elemento seja <b>superior<\\/b> a concentra\\u00e7\\u00e3o presente de <b>carbono<\\/b>.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><\\/span><\\/p>\\r\\n<table align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"img\\/imagem19.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td><img src=\\\"img\\/imagem20.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:53:18\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:53:18\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:53:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(3, 3, 1, '', '2021-09-16 16:53:46', 207, 9028, 'f286da2b7b605303e9983f33868e0abab65b573c', '{\"id\":\"3\",\"asset_id\":68,\"title\":\"sobrenos\",\"alias\":\"sobrenos\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\\\">1\\u00ba - APRESENTA\\u00c7\\u00c3O<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A HELLBRASS MONTAGENS E MANUTEN\\u00c7OES INDUSTRIAIS LTDA \\u00e9 uma empresa de Presta\\u00e7\\u00e3o de Servi\\u00e7os de Manuten\\u00e7\\u00e3o e Montagem, que se objetiva ser referencia de excel\\u00eancia no desenvolvimento de processos para parque petroqu\\u00edmicos, sider\\u00fargicos, metal\\u00fargicos, refinarias, caldeiraria e tubula\\u00e7\\u00e3o, trazendo para isso uma nova filosofia de trabalho com base nos mais altos padr\\u00f5es de qualidade e produtividade.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><\\/span><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">No ramo de manuten\\u00e7\\u00e3o e montagem industrial, onde a atividade \\u00e9 caracterizada pela enorme competitividade, a HELLBRASS MONTAGENS E MANITEN\\u00c7\\u00d5ES INDUSTRIAIS LTDA, busca desenvolver sua miss\\u00e3o executando, crendo e difundindo seus servi\\u00e7os atrav\\u00e9s da \\u00e9tica, credibilidade, coer\\u00eancia, criatividade, lealdade, justi\\u00e7a e a participa\\u00e7\\u00e3o de valores que permeiam as regras de sua gest\\u00e3o.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Com a velocidade da inova\\u00e7\\u00e3o tecnol\\u00f3gica e o aumento da competi\\u00e7\\u00e3o, a manuten\\u00e7\\u00e3o assume um papel de primeira grandeza nos servi\\u00e7os essenciais ao bem estar do homem. Sendo limitada a capacidade de investimento das empresas, o melhor e mais econ\\u00f4mico investimento \\u00e9 a manuten\\u00e7\\u00e3o em boas condi\\u00e7\\u00f5es, a manuten\\u00e7\\u00e3o pode racionaliz\\u00e1-lo aperfei\\u00e7o\\u00e1-lo e atualiz\\u00e1-lo com as novas tecnologias dispon\\u00edveis, tornando assim a empresa mais competitiva. \\u00c9 neste cen\\u00e1rio que surge a terceiriza\\u00e7\\u00e3o dos servi\\u00e7os de manuten\\u00e7\\u00e3o como forma mais econ\\u00f4mica eficiente de execu\\u00e7\\u00e3o.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Sabemos que para alcan\\u00e7ar e consolidar uma boa posi\\u00e7\\u00e3o no mercado \\u00e9 necess\\u00e1rio destacar-se diversificando as \\u00e1reas de atua\\u00e7\\u00e3o, conseguindo agregar valor aos servi\\u00e7os e ao mesmo tempo reduzindo os custos; para este fim adotamos dos fatores b\\u00e1sicos: a tecnologia e o gerenciamento, j\\u00e1 que as combina\\u00e7\\u00f5es de um gerenciamento inteligente com uma correta absor\\u00e7\\u00e3o tecnol\\u00f3gica determinam a efic\\u00e1cia de uma organiza\\u00e7\\u00e3o industrial. \\u00c9 essa efic\\u00e1cia, efici\\u00eancia, qualidade e produtividade que oferecemos atrav\\u00e9s de intera\\u00e7\\u00e3o entre gerenciamento, planejamento, projeto e produ\\u00e7\\u00e3o.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O gerenciamento da HELLBRASS MONTAGENS INDUSTRIAIS LTDA conduz suas atividades dentro dos princ\\u00edpios de:<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Intera\\u00e7\\u00e3o;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Comunica\\u00e7\\u00e3o Aberta.<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Satisfa\\u00e7\\u00e3o dos Clientes;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Aperfei\\u00e7oamento Continuo;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Valoriza\\u00e7\\u00e3o dos Empregados;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Comprometimento com Resultados;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 Respeito \\u00e0 Sociedade e ao Meio-Ambiente.<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A seguir, conhe\\u00e7a um pouco mais da HELLBRASS MONTAGENS INDUSTRIAIS LTDA, trabalhamos para atender suas necessidades com qualidade e satisfa\\u00e7\\u00e3o.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\\\">2\\u00ba POLITICA DA QUALIDADE<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A HELLBRASS MONTAGENS INDUSTRIAIS LTDA desenvolve suas atividades almejando a satisfa\\u00e7\\u00e3o de seus clientes do aperfei\\u00e7oamento continuo na qualidade de bens e servi\\u00e7os oferecidos.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Nesse intuito, direciona seus esfor\\u00e7os para:<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 A melhoria do valor;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 O enfoque no cliente; <\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 O trabalho em equipe;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 A pratica do benchmarking;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 A mensura\\u00e7\\u00e3o da qualidade;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 O pensamento em termo estat\\u00edstico;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 A credibilidade e seguran\\u00e7a nos servi\\u00e7os realizados.<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 O compromisso continuo da administra\\u00e7\\u00e3o com qualidade;<\\/span> <br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u2022 A parceria com fornecedores que ofere\\u00e7am alto n\\u00edvel de qualidade.<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Ser referencial de excel\\u00eancia no desenvolvimento de processos para manuten\\u00e7\\u00e3o de parques industriais, oferecendo sempre seguran\\u00e7a, confiabilidade, qualidade no atendimento e pre\\u00e7os competitivos.<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Dispor os equipamentos, sistemas e instala\\u00e7\\u00f5es com efici\\u00eancia e operacionabilidade a fim de eliminar custos desnecess\\u00e1rios e ao mesmo tempo atender e at\\u00e9 exceder as expectativas do cliente.<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:53:46\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:53:46\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:53:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(4, 4, 1, '', '2021-09-16 16:54:04', 207, 3127, '0a1e6e248d3794876e6fb75b3f33a59daef42fea', '{\"id\":\"4\",\"asset_id\":69,\"title\":\"servicos\",\"alias\":\"servicos\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Gest\\u00e3o de Materiais; <\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Instala\\u00e7\\u00f5es e Montagens;<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"> Engenharia de Manuten\\u00e7\\u00e3o;<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"> Seguran\\u00e7a e Meio Ambiente; <\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Manuten\\u00e7\\u00e3o Rotineira e Paradas; <\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Gest\\u00e3o Compartilhada da Manuten\\u00e7\\u00e3o;<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"> Gest\\u00e3o da Manuten\\u00e7\\u00e3o de Ativos \\u2013 Global ou Compartilhada, entre outros.<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:54:04\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:54:04\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:54:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `jey51_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(5, 5, 1, '', '2021-09-16 16:54:31', 207, 14635, 'd51d1a0ab943d3381c86c987e238f77089f0a99a', '{\"id\":\"5\",\"asset_id\":70,\"title\":\"principios\",\"alias\":\"principios\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n<h1 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\\\">Nossos <strong> princ\\u00edpios <\\/strong> s\\u00e3o:<\\/span><\\/h1>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Intera\\u00e7\\u00e3o<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Comunica\\u00e7\\u00e3o aberta<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Aperfei\\u00e7oamento Cont\\u00ednuo<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Respeito \\u00e0 Sociedade<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\">&nbsp;<\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Valoriza\\u00e7\\u00e3o dos Empregados<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Satisfa\\u00e7\\u00e3o dos Clientes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Respeito ao meio Ambiente<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Comprometimento com os Resultados<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<div class=\\\"col-3 bloco-texto\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/missao-visao-valores.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<h3><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">MISS\\u00c3O, VIS\\u00c3O e <b>VALORES<\\/b><\\/span><\\/h3>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Desenvolver sua miss\\u00e3o executando e difundindo seus servi\\u00e7os atrav\\u00e9s da \\u00e9tica, credibilidade, compromisso e participa\\u00e7\\u00e3o nos calores que permeiam as regras de sua gest\\u00e3o.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Com a velocidade da inova\\u00e7\\u00e3o tecnol\\u00f3gica e o aumento da competi\\u00e7\\u00e3o tecnol\\u00f3gica e o aumento da competi\\u00e7\\u00e3o, a manuten\\u00e7\\u00e3o assume um papel de primeira grandeza nos servi\\u00e7os essenciais ao bem-estar do homem.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">O melhor e mais econ\\u00f4mico investimento \\u00e9 a manuten\\u00e7\\u00e3o em boas condi\\u00e7\\u00f5es, pois pode aperfei\\u00e7o\\u00e1-lo e atualiz\\u00e1-lo com novas tecnologias dispon\\u00edveis, e neste cen\\u00e1rio \\u00e9 onde surge a terceiriza\\u00e7\\u00e3o dos servi\\u00e7os de manuten\\u00e7\\u00e3o como forma mais atrativa e eficiente. Estas s\\u00e3o nossa Mis\\u00e3o, Vis\\u00e3o e Valores.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/politicadaqualidade.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<h3><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Pol\\u00edtica de <b>QUALIDADE<\\/b><\\/span><\\/h3>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><i>A <b>HELLBRASS MONTAGENS INDUSTRIAIS<\\/b>, desenvolve suas atividades almejando a satisfa\\u00e7\\u00e3o de seus clientes do aperfei\\u00e7oamento cont\\u00ednuo na qualidade de bens e servi\\u00e7os oferecidos.<\\/i><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">A pol\\u00edtica de qualidade \\u00e9 uma diretriz criada pelas organiza\\u00e7\\u00f5es com o objetivo de assegurar um padr\\u00e3o de qualidade aos produtos e servi\\u00e7os oferecidos pela empresa. \\u00c9 utilizada como par\\u00e2metro na melhoria cont\\u00ednua dos processos e para a tomada de decis\\u00f5es que impactam diretamente os clientes. Hoje, o conceito de qualidade na constru\\u00e7\\u00e3o civil se refere, principalmente, a entregar uma edifica\\u00e7\\u00e3o com grande conforto t\\u00e9rmico e ac\\u00fastico, aliado a efici\\u00eancia e durabilidade.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/maodeobraespecializada.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<h3><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">M\\u00e3o de obra <b>ESPECIALIZADA<\\/b><\\/span><\\/h3>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><i>Temos profissionais qualificados e especializados!<\\/i> A Terceiriza\\u00e7\\u00e3o e Aloca\\u00e7\\u00e3o de M\\u00e3o de Obra qualificada se trata da contrata\\u00e7\\u00e3o de profissionais que desenvolver\\u00e3o suas atividades nas depend\\u00eancias do cliente. Nossos profissionais s\\u00e3o:<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Eletricistas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeireiros<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ma\\u00e7ariqueiros<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Lubrificadores<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Instrumentistas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ajudantes geral<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Pintores industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspetores em geral<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Soldadores em geral<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Soldadores alum\\u00ednio<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Isoladores industriais<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ajustadores mec\\u00e2nico<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nicos montadores<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encanadores industriais<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montadores de andaimes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspetores ultra-som S1<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encarregados montagem<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nicos de manuten\\u00e7\\u00e3o<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<p>&nbsp;<\\/p>\\r\\n<div class=\\\"col-3 bloco-texto\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"img\\/areadeatuacao.png\\\" alt=\\\"\\\" style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" \\/><\\/span><\\/div>\\r\\n<div class=\\\"col-3 bloco-texto\\\"><br \\/>\\r\\n<h3 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">AREAS DE <b>ATUA\\u00c7\\u00c3O<\\/b><\\/span><\\/h3>\\r\\n<p style=\\\"text-align: left;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"> A \\u00e1rea de atua\\u00e7\\u00e3o profissional \\u00e9, basicamente, o segmento em que voc\\u00ea deseja construir sua carreira, de forma mais afunilada e especializada. Nos atuamos em diversas \\u00e1reas e em seguimentos diferentes.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cimento<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Forjarias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Biodiesel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Qu\\u00edmicas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Afluentes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Alimentos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Siderurgia<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cervejaria<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Autope\\u00e7as<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeiraria<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Fertilizantes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Estamparias<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Hidroel\\u00e9tricas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ferramentarias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Terraplanagem<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Sucos e bebidas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Celulose e papel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Pintura industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Energia ECO gera\\u00e7\\u00e3o<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Automa\\u00e7\\u00e3o industrial<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">El\\u00e9trica For\\u00e7a e Controle<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Metal\\u00fargica e minera\\u00e7\\u00e3o<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Industria automobil\\u00edstica<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Petr\\u00f3leo, g\\u00e1s\\/petroqu\\u00edmica<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/div>\\r\\n<p>&nbsp;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:54:31\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:54:31\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:54:31\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(6, 6, 1, '', '2021-09-16 16:54:47', 207, 4742, '79c98812b3680733f39ae2775462b92abfaa2310', '{\"id\":\"6\",\"asset_id\":71,\"title\":\"ondeestamos\",\"alias\":\"ondeestamos\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Onde estamos<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A Regi\\u00e3o Metropolitana de Campinas, tamb\\u00e9m conhecida como Grande Campinas, constitu\\u00edda por 20 munic\\u00edpios paulistas, foi criada pela lei complementar estadual 870, de 19 de junho de 2000.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A regi\\u00e3o \\u00e9 uma das mais din\\u00e2micas no cen\\u00e1rio econ\\u00f4mico brasileiro e representava, em 2013, 1,8% do PIB (produto interno bruto) nacional e 7,81% do PIB paulista, ou seja, cerca de 105,3 bilh\\u00f5es de reais. Al\\u00e9m de possuir uma forte economia, a regi\\u00e3o tamb\\u00e9m apresenta uma infraestrutura que proporciona o desenvolvimento de toda a \\u00e1rea metropolitana. A RMC tamb\\u00e9m \\u00e9 conhecida como Vale do Sil\\u00edcio Brasileiro.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Conforme a estimativa populacional do IBGE em 2018, a Regi\\u00e3o Metropolitana de Campinas chegou a marca de 3,2 milh\\u00f5es de habitantes, distribu\\u00eddos em 3.791 km\\u00b2. <\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">\\u00c9 a d\\u00e9cima maior regi\\u00e3o metropolitana do Brasil e a segunda maior regi\\u00e3o metropolitana de S\\u00e3o Paulo, faz parte do Complexo Metropolitano Expandido, uma megal\\u00f3pole que, j\\u00e1 em 2008, compreendia 12% da popula\\u00e7\\u00e3o brasileira, ou cerca de 30 milh\\u00f5es de habitantes.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os 20 munic\\u00edpios abrangidos ocupam uma \\u00e1rea de 3.791 km\\u00b2, o que corresponde a 0,04% da superf\\u00edcie brasileira e a 1,47% do territ\\u00f3rio paulista. Quando se iniciou a discuss\\u00e3o da cria\\u00e7\\u00e3o da Regi\\u00e3o Metropolitana de Campinas, Mogi-Gua\\u00e7u, Mogi-Mirim e Itapira estavam inseridas no contexto. <\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Por\\u00e9m, por interm\\u00e9dio do ent\\u00e3o prefeito gua\\u00e7uano Walter Caveanha (PTB), esses tr\\u00eas munic\\u00edpios decidiram ficar de fora da nova regi\\u00e3o metropolitana. Caveanha explica que a decis\\u00e3o, \\u00e0 \\u00e9poca, se deu porque a regi\\u00e3o da Baixa Mogiana tem caracter\\u00edsticas pr\\u00f3prias, especialmente quanto ao meio ambiente, e n\\u00e3o est\\u00e1 ligada \\u00e0 regi\\u00e3o de Campinas, apesar da proximidade a esta.<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:54:47\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:54:47\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:54:47\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(7, 7, 1, '', '2021-09-16 16:55:19', 207, 16755, '0364fc45cf3fe34ba14aa25129e2e70692b0324f', '{\"id\":\"7\",\"asset_id\":72,\"title\":\"inicio\",\"alias\":\"inicio\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<h1 id=\\\"sobre\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\\\">Nossa Empresa:<\\/span><\\/h1>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><b>HELLBRASS<\\/b> \\u00e9 uma empresa brasileira que atua no Brasil e est\\u00e1 no mercado desde 21\\/05\\/2009 nos segmento de constru\\u00e7\\u00e3o, montagens e manuten\\u00e7\\u00f5es industriais de gasodutos. oleodutos e poliodutos, al\\u00e9m de servi\\u00e7os em instala\\u00e7\\u00f5es industriais e soldas com constru\\u00e7\\u00f5es industriais. Especializada em todos os tipos de solda como: solda API descendente. ASMA ascendente. Solda Arg\\u00f4nio e Eletrodo em todas as ligas.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A <b>HELLBRASS<\\/b> possuiu em seu quadro de funcion\\u00e1rios t\\u00e9cnicos na \\u00e1rea de soldagem com qualifica\\u00e7\\u00e3o n\\u00edvel II junto ao IMETRO\\/FBTS\\/PETROBR\\u00c1S nas modalidades para VASOS DE PRESS\\u00c3O, TUBULA\\u00c7\\u00c3O, GASODUTOS E ESTRUTURAS MET\\u00c1LICAS, sempre preparadas com equipamentos de ultima gera\\u00e7\\u00e3o.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">\\u00c1reas de Atua\\u00e7\\u00e3o (Montagem - Soldagem e Constru\\u00e7\\u00e3o)<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cervejaria<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Biodiesel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Celulose papel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Hidroel\\u00e9tricas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cimento<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Energia<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Eco gera\\u00e7\\u00e3o Fertilizantes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Alimentos - Sucos e bebidas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Metal\\u00fargica e minera\\u00e7\\u00e3o petr\\u00f3leo, g\\u00e1s e petroqu\\u00edmica qu\\u00edmica<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Forjarias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Autope\\u00e7as<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeiraria<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Terraplenagem<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Siderurgia<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tratamento de afluentes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ferramentarias Estamparias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ind\\u00fastria Automobil\\u00edstica<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Soldagem<\\/span><\\/h4>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Soldagem de diversas ligas met\\u00e1licas n\\u00e3o met\\u00e1licas. bem como processos de soldagem dos mais tradicionais aos mais sofisticados.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Equipamentos de alta tecnologia de alta tecnologia que proporcionam um servi\\u00e7o dur\\u00e1vel e de alta qualidade.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Ligas especiais<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Alum\\u00ednio<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ferro fundido<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Carbono<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">VC 1301131<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Bronze<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">A\\u00e7o fundido<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Liga N\\u00edquel: MONEL<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">STELL YTE- AMPCO<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Processos de soldagem<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">TIG<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Arame tubular<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Eletrodo revestido<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">MIG<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Solda de precis\\u00e3o<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Oxig\\u00eanio\\/acetileno<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Servi\\u00e7os de solda<\\/span><\\/h4>\\r\\n<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Holiday detector<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Jateamento e pinturas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeiras de vapor - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00e3o em a\\u00e7o liga; a\\u00e7o carbono, a\\u00e7o inox e alum\\u00ednio<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Teste por pontos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem de plantas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de fabrica\\u00e7\\u00e3o e montagem<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tanques, caldeiras, vasos, silos e equipamentos de caldeiraria em geral<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Isolamento t\\u00e9rmico<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">M\\u00e3o-de-obra especializada<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Trocadores de calor - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00e3o para distribui\\u00e7\\u00e3o de vapor. Incluindo os de alta press\\u00e3o e superaquecidos<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Testes hidrost\\u00e1ticos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Planta de tratamento de \\u00e1gua<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o e avalia\\u00e7\\u00e3o de equipamentos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00f5es - inspe\\u00e7\\u00e3o ANSI B 32.3. B31. 4 E B31.8 Tanques de armazenamento - Inspe\\u00e7\\u00e3o API-653<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de pintura N um e N2<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de dutos (todas as modalidades)<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inteiras ou equipamentos individuais e tubula\\u00e7\\u00e3o de diversos segmentos de segmentos de grande porte<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Radiografia industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o dimensional N um e N2<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem de equipamentos mec\\u00e2nicos rotativos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Medi\\u00e7\\u00e3o de dureza convencional e por ultra-som, Ultra-som (todas as modalidades, com ou sem gr\\u00e1fico)<br \\/><\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Part\\u00edculas magn\\u00e9ticas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Vasos de press\\u00e3o - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Teste de estanqueidade com press\\u00e3o negativa e positiva<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">L\\u00edquidos penetrantes<\\/span>&nbsp;<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">M\\u00e3o de obra<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ajudante geral<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Lubrificador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeireiro<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Soldador alum\\u00ednio<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Pintor industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encanador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ma\\u00e7ariqueiro<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nico montador<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Instrumentistas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encarregado de montagem Encanador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspetor de ultra-som S1<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nico de manuten\\u00e7\\u00e3o de bombas Montador de andaimes<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:55:19\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 16:55:19\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-09-16 16:55:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `jey51_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(8, 7, 1, '', '2021-09-16 17:01:05', 207, 16779, '5132dcdaca8dffd69597bdd600ded960f72aaa75', '{\"id\":7,\"asset_id\":\"72\",\"title\":\"inicio\",\"alias\":\"inicio\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n\\r\\n<h1 id=\\\"sobre\\\" style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 24pt;\\\">Nossa Empresa:<\\/span><\\/h1>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><b>HELLBRASS<\\/b> \\u00e9 uma empresa brasileira que atua no Brasil e est\\u00e1 no mercado desde 21\\/05\\/2009 nos segmento de constru\\u00e7\\u00e3o, montagens e manuten\\u00e7\\u00f5es industriais de gasodutos. oleodutos e poliodutos, al\\u00e9m de servi\\u00e7os em instala\\u00e7\\u00f5es industriais e soldas com constru\\u00e7\\u00f5es industriais. Especializada em todos os tipos de solda como: solda API descendente. ASMA ascendente. Solda Arg\\u00f4nio e Eletrodo em todas as ligas.<\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">A <b>HELLBRASS<\\/b> possuiu em seu quadro de funcion\\u00e1rios t\\u00e9cnicos na \\u00e1rea de soldagem com qualifica\\u00e7\\u00e3o n\\u00edvel II junto ao IMETRO\\/FBTS\\/PETROBR\\u00c1S nas modalidades para VASOS DE PRESS\\u00c3O, TUBULA\\u00c7\\u00c3O, GASODUTOS E ESTRUTURAS MET\\u00c1LICAS, sempre preparadas com equipamentos de ultima gera\\u00e7\\u00e3o.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">\\u00c1reas de Atua\\u00e7\\u00e3o (Montagem - Soldagem e Constru\\u00e7\\u00e3o)<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cervejaria<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Biodiesel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Celulose papel<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Hidroel\\u00e9tricas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Cimento<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Energia<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Eco gera\\u00e7\\u00e3o Fertilizantes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Alimentos - Sucos e bebidas<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Metal\\u00fargica e minera\\u00e7\\u00e3o petr\\u00f3leo, g\\u00e1s e petroqu\\u00edmica qu\\u00edmica<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Forjarias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Autope\\u00e7as<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeiraria<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Terraplenagem<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Siderurgia<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tratamento de afluentes<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ferramentarias Estamparias<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ind\\u00fastria Automobil\\u00edstica<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Soldagem<\\/span><\\/h4>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Soldagem de diversas ligas met\\u00e1licas n\\u00e3o met\\u00e1licas. bem como processos de soldagem dos mais tradicionais aos mais sofisticados.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Equipamentos de alta tecnologia de alta tecnologia que proporcionam um servi\\u00e7o dur\\u00e1vel e de alta qualidade.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Ligas especiais<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Alum\\u00ednio<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ferro fundido<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Carbono<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">VC 1301131<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Bronze<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">A\\u00e7o fundido<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Liga N\\u00edquel: MONEL<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">STELL YTE- AMPCO<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Processos de soldagem<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">TIG<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Arame tubular<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Eletrodo revestido<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">MIG<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Solda de precis\\u00e3o<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Oxig\\u00eanio\\/acetileno<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">Servi\\u00e7os de solda<\\/span><\\/h4>\\r\\n<table>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Holiday detector<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Jateamento e pinturas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeiras de vapor - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00e3o em a\\u00e7o liga; a\\u00e7o carbono, a\\u00e7o inox e alum\\u00ednio<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Teste por pontos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem de plantas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de fabrica\\u00e7\\u00e3o e montagem<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tanques, caldeiras, vasos, silos e equipamentos de caldeiraria em geral<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Isolamento t\\u00e9rmico<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">M\\u00e3o-de-obra especializada<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Trocadores de calor - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00e3o para distribui\\u00e7\\u00e3o de vapor. Incluindo os de alta press\\u00e3o e superaquecidos<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Testes hidrost\\u00e1ticos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Planta de tratamento de \\u00e1gua<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o e avalia\\u00e7\\u00e3o de equipamentos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Tubula\\u00e7\\u00f5es - inspe\\u00e7\\u00e3o ANSI B 32.3. B31. 4 E B31.8 Tanques de armazenamento - Inspe\\u00e7\\u00e3o API-653<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de pintura N um e N2<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o de dutos (todas as modalidades)<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inteiras ou equipamentos individuais e tubula\\u00e7\\u00e3o de diversos segmentos de segmentos de grande porte<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Radiografia industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspe\\u00e7\\u00e3o dimensional N um e N2<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Montagem de equipamentos mec\\u00e2nicos rotativos<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Medi\\u00e7\\u00e3o de dureza convencional e por ultra-som, Ultra-som (todas as modalidades, com ou sem gr\\u00e1fico)<br \\/><\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Part\\u00edculas magn\\u00e9ticas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Vasos de press\\u00e3o - Inspe\\u00e7\\u00e3o NR-13<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Teste de estanqueidade com press\\u00e3o negativa e positiva<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">L\\u00edquidos penetrantes<\\/span>&nbsp;<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<h1>&nbsp;<\\/h1>\\r\\n<h4 style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\">M\\u00e3o de obra<\\/span><\\/h4>\\r\\n<table style=\\\"width: 100%; height: 46px;\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ajudante geral<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Lubrificador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Caldeireiro<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Soldador alum\\u00ednio<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Pintor industrial<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encanador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Ma\\u00e7ariqueiro<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nico montador<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Instrumentistas<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Encarregado de montagem Encanador<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Inspetor de ultra-som S1<\\/span><\\/td>\\r\\n<td style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\">Mec\\u00e2nico de manuten\\u00e7\\u00e3o de bombas Montador de andaimes<\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table><br \\/>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:55:19\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 17:01:05\",\"modified_by\":\"207\",\"checked_out\":\"207\",\"checked_out_time\":\"2021-09-16 17:00:57\",\"publish_up\":\"2021-09-16 16:55:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(9, 2, 1, '', '2021-09-16 17:06:07', 207, 17750, 'def3d1a4b20ecd0cc94c47738e4cf00c609a694b', '{\"id\":2,\"asset_id\":\"67\",\"title\":\"galeria\",\"alias\":\"galeria\",\"introtext\":\"<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem1.png\\\" alt=\\\"\\\" \\/><\\/span><\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\">\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Linha de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>sistema de combate a inc\\u00eandio<\\/b> deve ser elaborado por um projetista, que ir\\u00e1 indicar todas as diretrizes e normas de combate a inc\\u00eandio do local, considerando alguns aspectos como tamanho dos ambientes, riscos envolvidos, presen\\u00e7a de l\\u00edquidos ou materiais inflam\\u00e1veis, etc.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem2.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Liga met\\u00e1lica amplamente empregada na ind\\u00fastria e na constru\\u00e7\\u00e3o civil, o <b>a\\u00e7o carbono<\\/b> \\u00e9 resultado da combina\\u00e7\\u00e3o de dois elementos: ferro e carbono. Este material \\u00e9 utilizado na constru\\u00e7\\u00e3o de autom\\u00f3veis, m\\u00e1quinas de lavar, decora\\u00e7\\u00e3o de ambientes e muitos outras aplica\\u00e7\\u00f5es.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem3.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o Inox<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>a\\u00e7o inoxid\\u00e1vel ou inox<\\/b> \\u00e9 uma liga de ferro e cr\\u00f3mio, podendo conter tamb\\u00e9m n\\u00edquel, molibd\\u00e9nio e outros elementos, que apresenta propriedades f\\u00edsico-qu\\u00edmicas superiores aos a\\u00e7os comuns, sendo a alta resist\\u00eancia \\u00e0 oxida\\u00e7\\u00e3o atmosf\\u00e9rica a sua principal caracter\\u00edstica, \\u201cmaterial verde\\u201d.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem4.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tanque<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>tanque<\\/b> de armazenamento ou de armazenagem tamb\\u00e9m designado por reservat\\u00f3rio \\u00e9 um recipiente destinado a armazenar fluidos \\u00e0 press\\u00e3o atmosf\\u00e9rica e a press\\u00f5es superiores \\u00e0 atmosf\\u00e9rica. A maior parte dos tanques de armazenamento s\\u00e3o constru\\u00eddos de acordo com requisitos definidos.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem5.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00f5es<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><b>Encanamento\\/canaliza\\u00e7\\u00e3o<\\/b> \\u00e9 a constru\\u00e7\\u00e3o ou estrutura de transporte de algo atrav\\u00e9s de tubos ou canos. O cano tem que ser de um material resistente o suficiente para aguentar a press\\u00e3o do material transportado, que geralmente \\u00e9 l\\u00edquido. Os profissionais que trabalham com encanamentos s\\u00e3o designados encanadores.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem6.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Inox OD<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Quando falamos de tubos de a\\u00e7o <b>inox OD<\\/b> queremos dizer que esse tubo atende a norma OD, que, traduzido do ingl\\u00eas, significa di\\u00e2metro externo, sendo esse di\\u00e2metro padronizado em 1\\u201d (que equivale a 25,40mm). OD \\u00e9 a sigla para outside diameter que, no ingl\\u00eas, significa di\\u00e2metro externo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"images\\/galeria\\/imagem7.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>chuveiro autom\\u00e1tico<\\/b> (portugu\\u00eas brasileiro) ou <b>rociador de inc\\u00eandios<\\/b> (portugu\\u00eas europeu) (em ingl\\u00eas <b>Sprinkler<\\/b>) \\u00e9 um dispositivo para a extin\\u00e7\\u00e3o de inc\\u00eandios. Consiste numa armadura, com um cano conectado a uma tubagem de \\u00e1gua a press\\u00e3o.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem8.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O cano se fecha com uma tampa sujeita por uma c\\u00e1psula de vidro recheada de um l\\u00edquido cujo ponto de ebuli\\u00e7\\u00e3o \\u00e9 a uma temperatura determinada (temperatura de disparo), a qual est\\u00e1 sujeita contra um dispersor. Quando se produz um inc\\u00eandio...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem10.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><span style=\\\"font-size: 14pt;\\\">...ferve o l\\u00edquido e o vapor rompe a c\\u00e1psula; a tampa salta, sai a \\u00e1gua, e choca contra o dispersor aspergindo a zona incendiada. Existem outros autom\\u00e1ticos, que em vez da c\\u00e1psula est\\u00e3o conectados a<\\/span> <span style=\\\"font-size: 14pt;\\\">um detector de inc\\u00eandios o qual manda uma v\\u00e1lvula autom\\u00e1tica.<\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem11.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Conjunto de medidas para detectar e controlar o rastro do fogo, facilitando seu combate e garantindo a seguran\\u00e7a da edifica\\u00e7\\u00e3o, das pessoas e bens. Devido \\u00e0 sua import\\u00e2ncia, \\u00e9 <b>obrigat\\u00f3rio em pr\\u00e9dios comerciais e residenciais<\\/b> e deve ser elaborado por profissionais qualificados.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem12.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema contra inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O sistema de prote\\u00e7\\u00e3o contra inc\\u00eandio \\u00e9 composto por 3 sistemas: <b>Detec\\u00e7\\u00e3o de inc\\u00eandio<\\/b>;<b> Alarme de inc\\u00eandio<\\/b>; <b>Combate ao inc\\u00eandio<\\/b>. O acionador \\u00e9 ligado \\u00e0 uma Central de Alarme. Tem um bot\\u00e3o, parecido com um interruptor, quando acionado envia a localiza\\u00e7\\u00e3o da ocorr\\u00eancia.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem9.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Chuveiro\\/Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <span style=\\\"text-decoration: underline;\\\">sprinkler<\\/span> \\u00e9 um <b>dispositivo comumente utilizado no combate a inc\\u00eandios<\\/b>. Ele \\u00e9 composto de uma \\u201carmadura\\u201d, um elemento sens\\u00edvel, chamado bulbo. O bico de sprinkler \\u00e9 rosqueado a uma tubula\\u00e7\\u00e3o pressurizada e permanece fechado por tampa travada pelo bulbo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem13.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Dentre os materiais met\\u00e1licos ferrosos os <b>a\\u00e7os<\\/b>, s\\u00e3o ligas do sistema ferro-carbono, onde a composi\\u00e7\\u00e3o de carbono na liga fica entre 0,008 e 2,11%p de C. Assim, os a\\u00e7os podem ser classificados de tr\\u00eas diferentes formas: pela <span style=\\\"text-decoration: underline;\\\">composi\\u00e7\\u00e3o qu\\u00edmica<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">estrutura<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">aplica\\u00e7\\u00e3o<\\/span>. Assim \\u00e9 conhecido.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"images\\/galeria\\/imagem14.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os a\\u00e7os-carbono representam por volta de <b>80% da produ\\u00e7\\u00e3o mundial<\\/b> de a\\u00e7o. Esse tipo de liga <b>possui<\\/b> como principal elemento de liga o <b>Carbono<\\/b>, isto \\u00e9, em sua composi\\u00e7\\u00e3o outros elementos de liga apresentam <b>baixa concentra\\u00e7\\u00e3o<\\/b>. A classifica\\u00e7\\u00e3o mais aplic\\u00e1vel para os a\\u00e7os-carbono \\u00e9 referente a sua...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem15.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...composi\\u00e7\\u00e3o qu\\u00edmica, a qual segue os sistemas da AISI, SAE e ABNT. Assim, nessa classifica\\u00e7\\u00e3o a\\u00e7os s\\u00e3o <b>subdivididos<\\/b> de acordo com a <b>concentra\\u00e7\\u00e3o de carbono<\\/b> presente no sistema, sendo esses: <small>* <span style=\\\"text-decoration: underline;\\\">teor de carbono<\\/span><\\/small>, A\\u00e7o baixo * at\\u00e9 0,25% de C ; A\\u00e7o m\\u00e9dio * de 0,25 a 0,6% de C ; A\\u00e7o alto * de 0,6 a 1,4% de C).<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem16.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os <b>diferentes teores<\\/b> de carbono nos a\\u00e7os reproduzem a <b>diferen\\u00e7a<\\/b> nas <b>propriedades<\\/b>, com o aumento do teor de carbono a tend\\u00eancia do a\\u00e7o \\u00e9 de elevar sua <b>dureza<\\/b> e resist\\u00eancia ao <b>desgaste<\\/b>, em contrapartida reduz a <b>ductilidade<\\/b> do material. As principais <b>vantagens<\\/b> do a\\u00e7o-carbono est\\u00e3o relacionadas...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem17.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...ao seu <b>baixo custo<\\/b> e sua <b>boa<\\/b> faixa <b>propriedades<\\/b>, o que de fato abre um grande leque para suas <b>aplica\\u00e7\\u00f5es<\\/b>, como: Chapas; Tubos; Arames; Constru\\u00e7\\u00e3o civil; Equipamentos ferrovi\\u00e1rios; Maquin\\u00e1rios; Por\\u00e9m, alguns fatores limitam a utiliza\\u00e7\\u00e3o dos a\\u00e7o-carbono, a sua baixa resist\\u00eancia \\u00e0 corros\\u00e3o e baixa...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem18.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...<b>tenacidade<\\/b> limitam algumas aplica\\u00e7\\u00f5es em ambientes mais agressivos, o que s\\u00f3 \\u00e9 poss\\u00edvel com a utiliza\\u00e7\\u00e3o de a\\u00e7os liga. <b>A\\u00e7os liga<\\/b>, s\\u00e3o a\\u00e7os onde ocorre a <b>adi\\u00e7\\u00e3o<\\/b> de algum <b>elemento de liga<\\/b> no sistema, de modo que a <b>concentra\\u00e7\\u00e3o<\\/b> desse elemento seja <b>superior<\\/b> a concentra\\u00e7\\u00e3o presente de <b>carbono<\\/b>.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><\\/span><\\/p>\\r\\n<table align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/galeria\\/imagem19.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td><img src=\\\"images\\/galeria\\/imagem20.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:53:18\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 17:06:07\",\"modified_by\":\"207\",\"checked_out\":\"207\",\"checked_out_time\":\"2021-09-16 17:05:56\",\"publish_up\":\"2021-09-16 16:53:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `jey51_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 2, 1, '', '2021-09-16 17:06:36', 207, 17841, 'f9eef0bf8ae0ff6192d51a341fcbff1904a1ca17', '{\"id\":2,\"asset_id\":\"67\",\"title\":\"galeria\",\"alias\":\"galeria\",\"introtext\":\"<style>\\r\\ntable, th, td {\\r\\n  border: 1px solid #b3ffb3;\\r\\n}\\r\\n<\\/style>\\r\\n\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem1.png\\\" alt=\\\"\\\" \\/><\\/span><\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\">\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Linha de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>sistema de combate a inc\\u00eandio<\\/b> deve ser elaborado por um projetista, que ir\\u00e1 indicar todas as diretrizes e normas de combate a inc\\u00eandio do local, considerando alguns aspectos como tamanho dos ambientes, riscos envolvidos, presen\\u00e7a de l\\u00edquidos ou materiais inflam\\u00e1veis, etc.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem2.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Liga met\\u00e1lica amplamente empregada na ind\\u00fastria e na constru\\u00e7\\u00e3o civil, o <b>a\\u00e7o carbono<\\/b> \\u00e9 resultado da combina\\u00e7\\u00e3o de dois elementos: ferro e carbono. Este material \\u00e9 utilizado na constru\\u00e7\\u00e3o de autom\\u00f3veis, m\\u00e1quinas de lavar, decora\\u00e7\\u00e3o de ambientes e muitos outras aplica\\u00e7\\u00f5es.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem3.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>A\\u00e7o Inox<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O <b>a\\u00e7o inoxid\\u00e1vel ou inox<\\/b> \\u00e9 uma liga de ferro e cr\\u00f3mio, podendo conter tamb\\u00e9m n\\u00edquel, molibd\\u00e9nio e outros elementos, que apresenta propriedades f\\u00edsico-qu\\u00edmicas superiores aos a\\u00e7os comuns, sendo a alta resist\\u00eancia \\u00e0 oxida\\u00e7\\u00e3o atmosf\\u00e9rica a sua principal caracter\\u00edstica, \\u201cmaterial verde\\u201d.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem4.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tanque<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>tanque<\\/b> de armazenamento ou de armazenagem tamb\\u00e9m designado por reservat\\u00f3rio \\u00e9 um recipiente destinado a armazenar fluidos \\u00e0 press\\u00e3o atmosf\\u00e9rica e a press\\u00f5es superiores \\u00e0 atmosf\\u00e9rica. A maior parte dos tanques de armazenamento s\\u00e3o constru\\u00eddos de acordo com requisitos definidos.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem5.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00f5es<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><b>Encanamento\\/canaliza\\u00e7\\u00e3o<\\/b> \\u00e9 a constru\\u00e7\\u00e3o ou estrutura de transporte de algo atrav\\u00e9s de tubos ou canos. O cano tem que ser de um material resistente o suficiente para aguentar a press\\u00e3o do material transportado, que geralmente \\u00e9 l\\u00edquido. Os profissionais que trabalham com encanamentos s\\u00e3o designados encanadores.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem6.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Inox OD<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Quando falamos de tubos de a\\u00e7o <b>inox OD<\\/b> queremos dizer que esse tubo atende a norma OD, que, traduzido do ingl\\u00eas, significa di\\u00e2metro externo, sendo esse di\\u00e2metro padronizado em 1\\u201d (que equivale a 25,40mm). OD \\u00e9 a sigla para outside diameter que, no ingl\\u00eas, significa di\\u00e2metro externo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"images\\/galeria\\/imagem7.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <b>chuveiro autom\\u00e1tico<\\/b> (portugu\\u00eas brasileiro) ou <b>rociador de inc\\u00eandios<\\/b> (portugu\\u00eas europeu) (em ingl\\u00eas <b>Sprinkler<\\/b>) \\u00e9 um dispositivo para a extin\\u00e7\\u00e3o de inc\\u00eandios. Consiste numa armadura, com um cano conectado a uma tubagem de \\u00e1gua a press\\u00e3o.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem8.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O cano se fecha com uma tampa sujeita por uma c\\u00e1psula de vidro recheada de um l\\u00edquido cujo ponto de ebuli\\u00e7\\u00e3o \\u00e9 a uma temperatura determinada (temperatura de disparo), a qual est\\u00e1 sujeita contra um dispersor. Quando se produz um inc\\u00eandio...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem10.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><span style=\\\"font-size: 14pt;\\\">...ferve o l\\u00edquido e o vapor rompe a c\\u00e1psula; a tampa salta, sai a \\u00e1gua, e choca contra o dispersor aspergindo a zona incendiada. Existem outros autom\\u00e1ticos, que em vez da c\\u00e1psula est\\u00e3o conectados a<\\/span> <span style=\\\"font-size: 14pt;\\\">um detector de inc\\u00eandios o qual manda uma v\\u00e1lvula autom\\u00e1tica.<\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem11.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema de inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Conjunto de medidas para detectar e controlar o rastro do fogo, facilitando seu combate e garantindo a seguran\\u00e7a da edifica\\u00e7\\u00e3o, das pessoas e bens. Devido \\u00e0 sua import\\u00e2ncia, \\u00e9 <b>obrigat\\u00f3rio em pr\\u00e9dios comerciais e residenciais<\\/b> e deve ser elaborado por profissionais qualificados.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem12.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Sistema contra inc\\u00eandio<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">O sistema de prote\\u00e7\\u00e3o contra inc\\u00eandio \\u00e9 composto por 3 sistemas: <b>Detec\\u00e7\\u00e3o de inc\\u00eandio<\\/b>;<b> Alarme de inc\\u00eandio<\\/b>; <b>Combate ao inc\\u00eandio<\\/b>. O acionador \\u00e9 ligado \\u00e0 uma Central de Alarme. Tem um bot\\u00e3o, parecido com um interruptor, quando acionado envia a localiza\\u00e7\\u00e3o da ocorr\\u00eancia.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem9.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Chuveiro\\/Sprinklers<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Um <span style=\\\"text-decoration: underline;\\\">sprinkler<\\/span> \\u00e9 um <b>dispositivo comumente utilizado no combate a inc\\u00eandios<\\/b>. Ele \\u00e9 composto de uma \\u201carmadura\\u201d, um elemento sens\\u00edvel, chamado bulbo. O bico de sprinkler \\u00e9 rosqueado a uma tubula\\u00e7\\u00e3o pressurizada e permanece fechado por tampa travada pelo bulbo.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem13.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Dentre os materiais met\\u00e1licos ferrosos os <b>a\\u00e7os<\\/b>, s\\u00e3o ligas do sistema ferro-carbono, onde a composi\\u00e7\\u00e3o de carbono na liga fica entre 0,008 e 2,11%p de C. Assim, os a\\u00e7os podem ser classificados de tr\\u00eas diferentes formas: pela <span style=\\\"text-decoration: underline;\\\">composi\\u00e7\\u00e3o qu\\u00edmica<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">estrutura<\\/span>; pela <span style=\\\"text-decoration: underline;\\\">aplica\\u00e7\\u00e3o<\\/span>. Assim \\u00e9 conhecido.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\"><img src=\\\"images\\/galeria\\/imagem14.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os a\\u00e7os-carbono representam por volta de <b>80% da produ\\u00e7\\u00e3o mundial<\\/b> de a\\u00e7o. Esse tipo de liga <b>possui<\\/b> como principal elemento de liga o <b>Carbono<\\/b>, isto \\u00e9, em sua composi\\u00e7\\u00e3o outros elementos de liga apresentam <b>baixa concentra\\u00e7\\u00e3o<\\/b>. A classifica\\u00e7\\u00e3o mais aplic\\u00e1vel para os a\\u00e7os-carbono \\u00e9 referente a sua...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem15.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...composi\\u00e7\\u00e3o qu\\u00edmica, a qual segue os sistemas da AISI, SAE e ABNT. Assim, nessa classifica\\u00e7\\u00e3o a\\u00e7os s\\u00e3o <b>subdivididos<\\/b> de acordo com a <b>concentra\\u00e7\\u00e3o de carbono<\\/b> presente no sistema, sendo esses: <small>* <span style=\\\"text-decoration: underline;\\\">teor de carbono<\\/span><\\/small>, A\\u00e7o baixo * at\\u00e9 0,25% de C ; A\\u00e7o m\\u00e9dio * de 0,25 a 0,6% de C ; A\\u00e7o alto * de 0,6 a 1,4% de C).<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"content\\\" style=\\\"text-align: center;\\\">\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem16.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">Os <b>diferentes teores<\\/b> de carbono nos a\\u00e7os reproduzem a <b>diferen\\u00e7a<\\/b> nas <b>propriedades<\\/b>, com o aumento do teor de carbono a tend\\u00eancia do a\\u00e7o \\u00e9 de elevar sua <b>dureza<\\/b> e resist\\u00eancia ao <b>desgaste<\\/b>, em contrapartida reduz a <b>ductilidade<\\/b> do material. As principais <b>vantagens<\\/b> do a\\u00e7o-carbono est\\u00e3o relacionadas...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem17.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...ao seu <b>baixo custo<\\/b> e sua <b>boa<\\/b> faixa <b>propriedades<\\/b>, o que de fato abre um grande leque para suas <b>aplica\\u00e7\\u00f5es<\\/b>, como: Chapas; Tubos; Arames; Constru\\u00e7\\u00e3o civil; Equipamentos ferrovi\\u00e1rios; Maquin\\u00e1rios; Por\\u00e9m, alguns fatores limitam a utiliza\\u00e7\\u00e3o dos a\\u00e7o-carbono, a sua baixa resist\\u00eancia \\u00e0 corros\\u00e3o e baixa...<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-3 bloco-texto bloco-imagem\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><img src=\\\"images\\/galeria\\/imagem18.png\\\" alt=\\\"\\\" \\/><\\/span>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 18pt;\\\"><b>Tubula\\u00e7\\u00e3o A\\u00e7o Carbono<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 14pt;\\\">...<b>tenacidade<\\/b> limitam algumas aplica\\u00e7\\u00f5es em ambientes mais agressivos, o que s\\u00f3 \\u00e9 poss\\u00edvel com a utiliza\\u00e7\\u00e3o de a\\u00e7os liga. <b>A\\u00e7os liga<\\/b>, s\\u00e3o a\\u00e7os onde ocorre a <b>adi\\u00e7\\u00e3o<\\/b> de algum <b>elemento de liga<\\/b> no sistema, de modo que a <b>concentra\\u00e7\\u00e3o<\\/b> desse elemento seja <b>superior<\\/b> a concentra\\u00e7\\u00e3o presente de <b>carbono<\\/b>.<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\\\"><\\/span><\\/p>\\r\\n<table align=\\\"center\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><img src=\\\"images\\/galeria\\/imagem19.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<td><img src=\\\"images\\/galeria\\/imagem20.png\\\" alt=\\\"\\\" \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table><br \\/>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2021-09-16 16:53:18\",\"created_by\":\"207\",\"created_by_alias\":\"\",\"modified\":\"2021-09-16 17:06:36\",\"modified_by\":\"207\",\"checked_out\":\"207\",\"checked_out_time\":\"2021-09-16 17:06:07\",\"publish_up\":\"2021-09-16 16:53:18\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_updates`
--

DROP TABLE IF EXISTS `jey51_updates`;
CREATE TABLE IF NOT EXISTS `jey51_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(4) DEFAULT '0',
  `version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_update_sites`
--

DROP TABLE IF EXISTS `jey51_update_sites`;
CREATE TABLE IF NOT EXISTS `jey51_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Despejando dados para a tabela `jey51_update_sites`
--

INSERT INTO `jey51_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1631908212, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1631908305, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1631908305, ''),
(4, 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', 1, 1631908305, ''),
(5, 'JCE Editor Package', 'extension', 'https://cdn.joomlacontenteditor.net/updates/xml/editor/pkg_jce.xml', 1, 1631908305, ''),
(6, 'Slideshow CK Light Update', 'extension', 'https://update.joomlack.fr/slideshowck_light_update.xml', 1, 1631908306, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_update_sites_extensions`
--

DROP TABLE IF EXISTS `jey51_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `jey51_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Despejando dados para a tabela `jey51_update_sites_extensions`
--

INSERT INTO `jey51_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(4, 10005),
(5, 10014),
(6, 10015);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_usergroups`
--

DROP TABLE IF EXISTS `jey51_usergroups`;
CREATE TABLE IF NOT EXISTS `jey51_usergroups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_usergroups`
--

INSERT INTO `jey51_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_users`
--

DROP TABLE IF EXISTS `jey51_users`;
CREATE TABLE IF NOT EXISTS `jey51_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_users`
--

INSERT INTO `jey51_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(207, 'Super User', 'hellbrass', 'manutencao@hellbrass.com.br', '$2y$10$JPy5Wxsa3E3WRMSkKBI4UOHV1SIbbv1MM1gd0dgD2g02ZzJj3vOzO', 0, 1, '2021-09-16 16:18:20', '2021-09-17 19:51:26', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_user_keys`
--

DROP TABLE IF EXISTS `jey51_user_keys`;
CREATE TABLE IF NOT EXISTS `jey51_user_keys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_user_notes`
--

DROP TABLE IF EXISTS `jey51_user_notes`;
CREATE TABLE IF NOT EXISTS `jey51_user_notes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_user_profiles`
--

DROP TABLE IF EXISTS `jey51_user_profiles`;
CREATE TABLE IF NOT EXISTS `jey51_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_user_usergroup_map`
--

DROP TABLE IF EXISTS `jey51_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `jey51_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_user_usergroup_map`
--

INSERT INTO `jey51_user_usergroup_map` (`user_id`, `group_id`) VALUES
(207, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_utf8_conversion`
--

DROP TABLE IF EXISTS `jey51_utf8_conversion`;
CREATE TABLE IF NOT EXISTS `jey51_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_utf8_conversion`
--

INSERT INTO `jey51_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_viewlevels`
--

DROP TABLE IF EXISTS `jey51_viewlevels`;
CREATE TABLE IF NOT EXISTS `jey51_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `jey51_viewlevels`
--

INSERT INTO `jey51_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jey51_wf_profiles`
--

DROP TABLE IF EXISTS `jey51_wf_profiles`;
CREATE TABLE IF NOT EXISTS `jey51_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `jey51_wf_profiles`
--

INSERT INTO `jey51_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source', 1, 1, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"modern\"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"modern\"}}'),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 3, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"modern\",\"toggle\":\"0\"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 4, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"modern.touch\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}'),
(5, 'Markdown', 'Sample Markdown Profile', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect', 'fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern', 0, 5, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"modern\"}}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
