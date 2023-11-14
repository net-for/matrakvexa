-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2023 at 01:23 PM
-- Server version: 10.3.37-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackarcady_red`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_providers`
--

INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `type`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES
(18, 'ae6819b5c2ef821df6cf43ad3e438283', 1, 'SGS', 'https://pysmm.com/api/v2/', 'fTM5FZJNdbdJu2tLlxiebwOfGsBJyfTI', 'standard', '0.00000', 'USD', '', 1, '2023-03-29 14:25:13', '2023-03-29 14:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_file_manager`
--

INSERT INTO `general_file_manager` (`id`, `ids`, `uid`, `file_name`, `file_type`, `file_ext`, `file_size`, `is_image`, `image_width`, `image_height`, `created`) VALUES
(340, 'ae4078dd4b7d558bcdce5b029c2d70a9', 1, '0a97367f8b73d1e2c5fbdc0cb206b9de.png', 'image/png', 'png', '8.46', '1', 853, 132, '2023-03-19 16:12:33'),
(339, '53ca421a36d3f522f50393884fa1bad6', 1, '6c33601e8da2a7782998f767b5c3e16c.png', 'image/png', 'png', '8.46', '1', 853, 132, '2023-03-19 16:12:30'),
(341, '1928acbda7adce27878485452d1ea81d', 7, '4c4c1b6eea4764f54a9a456dfd12f8a8.jpg', 'image/jpeg', 'jpg', '8.79', '1', 300, 47, '2023-04-08 04:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(2, '5525f4b1375214998b09584d703a7b55', 'br', 'BR', 1, 1, '2022-05-05 02:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '1'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'Scriptssupply.com The Best SMM Panel Scripts Store| Pysmm The Main SMM Panel Service Provider'),
(70, 'website_keywords', 'Scriptssupply.com ,  Pysmm '),
(71, 'website_title', 'Scriptssupply.com | Pysmm The Main SMM Panel Service Provider'),
(72, 'website_favicon', 'https://red.hackarcady.com/assets/uploads/user902ba3cda1883801594b6e1b452790cc53948fda/4c4c1b6eea4764f54a9a456dfd12f8a8.jpg'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo_white', 'https://red.hackarcady.com/assets/uploads/user902ba3cda1883801594b6e1b452790cc53948fda/4c4c1b6eea4764f54a9a456dfd12f8a8.jpg'),
(75, 'enable_service_list_no_login', '0'),
(76, 'enable_api_tab', '1'),
(77, 'disable_signup_page', '0'),
(78, 'website_name', 'Scriptssupply.com | Pysmm The Main SMM Panel Service Provider'),
(79, 'social_facebook_link', ''),
(80, 'social_twitter_link', ''),
(81, 'social_pinterest_link', ''),
(82, 'social_instagram_link', ''),
(83, 'social_youtube_link', ''),
(84, 'copy_right_content', 'Copyright © 2023 - Scriptssupply'),
(85, 'notification_popup_content', '<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Main Smm Service Seller\">Best SMM Service Seller</a> is Pysmm. The <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Main SMM panel Service Provider\">Pysmm</a> is also the most <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Cheapest SMM Service Provider\">cheapest smm service provider</a> You Can Buy Cheapest SMM Panel Services From Pysmm.</p>\r\n<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Cheapest SMM Service Provider\">Pysmm</a> Has been the one of the best and cheapest smm services seller. Also if you want to start your smm panel then buy the premium and <a href=\"https://scriptssupply.com\" title=\"Cheap SMM Scripts\">best smm panel scripts</a> from <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts\">scriptssupply.com</a>. The <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts Download\">Scriptssupply.com</a> is also known as <a href=\"https://scriptssupply.com\" title=\"ScriptsSupply\">scriptssupply</a> they sell the best smm panel site scripts.</p>\r\n<p>The smm scripts sold by the scriptssupply is very good and there codes are highly reliable. </p>\r\n<p>Some of you might thinking to download free smm panel scripts then go to elitecracker.com this site is owned by <a href=\"https://webersera.com\" target=\"_blank\" rel=\"noopener\" title=\"Webers Era Free SMM Panel Scripts\">https://webersera.com</a> the <a href=\"https://5ghackerz.com\" target=\"_blank\" rel=\"noopener\" title=\"FREE SMM PANEL SCRIPTS DOWNLOAD\">https://5ghackerz.com</a> on this site you can get free smm panel scripts.</p>\r\n<p>You Can Also Join There Telegram Channel For More Info <a href=\"https://telegram.dog/smm_scripts\" title=\"SMM Panel Telegram Group\">https://telegram.dog/smm_scripts</a></p>'),
(86, 'embed_javascript', '&lt;!-- GetButton.io widget --&gt;\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n    (function () {\r\n        var options = {\r\n            telegram: &quot;Scriptssupplyofficial&quot;, // Telegram bot username\r\n            whatsapp: &quot;wa.me/1&quot;, // WhatsApp number\r\n            call_to_action: &quot;Need Help Chat With Us&quot;, // Call to action\r\n            button_color: &quot;#FF6550&quot;, // Color of button\r\n            position: &quot;left&quot;, // Position may be &#039;right&#039; or &#039;left&#039;\r\n            order: &quot;whatsapp,telegram&quot;, // Order of buttons\r\n        };\r\n        var proto = &#039;https:&#039;, host = &quot;getbutton.io&quot;, url = proto + &#039;//static.&#039; + host;\r\n        var s = document.createElement(&#039;script&#039;); s.type = &#039;text/javascript&#039;; s.async = true; s.src = url + &#039;/widget-send-button/js/init.js&#039;;\r\n        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };\r\n        var x = document.getElementsByTagName(&#039;script&#039;)[0]; x.parentNode.insertBefore(s, x);\r\n    })();\r\n&lt;/script&gt;\r\n&lt;!-- /GetButton.io widget --&gt;\r\n'),
(87, 'enable_notification_popup', '1'),
(88, 'new_currecry_rate', '1'),
(89, 'default_price_percentage_increase', '30'),
(90, 'enable_goolge_recapcha', '0'),
(91, 'currency_decimal_separator', 'dot'),
(92, 'currency_thousand_separator', 'comma'),
(93, 'currency_symbol', 'R$'),
(94, 'currency_decimal', '2'),
(95, 'default_header_skin', 'cosmic-fusion'),
(96, 'enable_news_announcement', '0'),
(97, 'is_cookie_policy_page', '1'),
(98, 'contact_tel', ''),
(99, 'contact_email', ''),
(100, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(101, 'social_tumblr_link', ''),
(102, 'auto_rounding_x_decimal_places', '2'),
(103, 'is_auto_currency_convert', '0'),
(104, 'is_maintenance_mode', '0'),
(105, 'website_logo', 'https://red.hackarcady.com/assets/uploads/user902ba3cda1883801594b6e1b452790cc53948fda/4c4c1b6eea4764f54a9a456dfd12f8a8.jpg'),
(106, 'enable_drip_feed', '1'),
(107, 'enable_attentions_orderpage', ''),
(108, 'enable_signup_skype_field', '0'),
(109, 'enable_explication_service_symbol', '1'),
(110, 'default_limit_per_page', '10'),
(111, 'is_verification_new_account', '0'),
(112, 'is_welcome_email', '0'),
(113, 'is_new_user_email', '0'),
(114, 'is_clear_ticket', '0'),
(115, 'currency_code', 'BRL'),
(116, 'is_active_manual', '0'),
(117, 'is_payment_notice_email', '0'),
(118, 'default_home_page', 'pergo'),
(119, 'default_clear_ticket_days', '30'),
(120, 'default_min_order', '300'),
(121, 'default_max_order', '5000'),
(122, 'default_price_per_1k', '0.80'),
(123, 'default_drip_feed_runs', '10'),
(124, 'default_drip_feed_interval', '30'),
(125, 'google_capcha_site_key', ''),
(126, 'google_capcha_secret_key', ''),
(127, 'is_order_notice_email', '0'),
(128, 'terms_content', '<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Main Smm Service Seller\">Best SMM Service Seller</a> is Pysmm. The <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Main SMM panel Service Provider\">Pysmm</a> is also the most <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Cheapest SMM Service Provider\">cheapest smm service provider</a> You Can Buy Cheapest SMM Panel Services From Pysmm.</p>\r\n<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Cheapest SMM Service Provider\">Pysmm</a> Has been the one of the best and cheapest smm services seller. Also if you want to start your smm panel then buy the premium and <a href=\"https://scriptssupply.com\" title=\"Cheap SMM Scripts\">best smm panel scripts</a> from <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts\">scriptssupply.com</a>. The <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts Download\">Scriptssupply.com</a> is also known as <a href=\"https://scriptssupply.com\" title=\"ScriptsSupply\">scriptssupply</a> they sell the best smm panel site scripts.</p>\r\n<p>The smm scripts sold by the scriptssupply is very good and there codes are highly reliable. </p>\r\n<p>Some of you might thinking to download free smm panel scripts then go to elitecracker.com this site is owned by <a href=\"https://webersera.com\" target=\"_blank\" rel=\"noopener\" title=\"Webers Era Free SMM Panel Scripts\">https://webersera.com</a> the <a href=\"https://5ghackerz.com\" target=\"_blank\" rel=\"noopener\" title=\"FREE SMM PANEL SCRIPTS DOWNLOAD\">https://5ghackerz.com</a> on this site you can get free smm panel scripts.</p>\r\n<p>You Can Also Join There Telegram Channel For More Info <a href=\"https://telegram.dog/smm_scripts\" title=\"SMM Panel Telegram Group\">https://telegram.dog/smm_scripts</a></p>\r\n<p></p>'),
(129, 'policy_content', '<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Main Smm Service Seller\">Best SMM Service Seller</a> is Pysmm. The <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Main SMM panel Service Provider\">Pysmm</a> is also the most <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Cheapest SMM Service Provider\">cheapest smm service provider</a> You Can Buy Cheapest SMM Panel Services From Pysmm.</p>\r\n<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Cheapest SMM Service Provider\">Pysmm</a> Has been the one of the best and cheapest smm services seller. Also if you want to start your smm panel then buy the premium and <a href=\"https://scriptssupply.com\" title=\"Cheap SMM Scripts\">best smm panel scripts</a> from <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts\">scriptssupply.com</a>. The <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts Download\">Scriptssupply.com</a> is also known as <a href=\"https://scriptssupply.com\" title=\"ScriptsSupply\">scriptssupply</a> they sell the best smm panel site scripts.</p>\r\n<p>The smm scripts sold by the scriptssupply is very good and there codes are highly reliable. </p>\r\n<p>Some of you might thinking to download free smm panel scripts then go to elitecracker.com this site is owned by <a href=\"https://webersera.com\" target=\"_blank\" rel=\"noopener\" title=\"Webers Era Free SMM Panel Scripts\">https://webersera.com</a> the <a href=\"https://5ghackerz.com\" target=\"_blank\" rel=\"noopener\" title=\"FREE SMM PANEL SCRIPTS DOWNLOAD\">https://5ghackerz.com</a> on this site you can get free smm panel scripts.</p>\r\n<p>You Can Also Join There Telegram Channel For More Info <a href=\"https://telegram.dog/smm_scripts\" title=\"SMM Panel Telegram Group\">https://telegram.dog/smm_scripts</a></p>'),
(130, 'cookies_policy_page', '<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Main Smm Service Seller\">Best SMM Service Seller</a> is Pysmm. The <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Main SMM panel Service Provider\">Pysmm</a> is also the most <a href=\"HTTPS://PYSMM.COM\" target=\"_blank\" rel=\"noopener\" title=\"Cheapest SMM Service Provider\">cheapest smm service provider</a> You Can Buy Cheapest SMM Panel Services From Pysmm.</p>\r\n<p>The <a href=\"HTTPS://PYSMM.COM\" title=\"Cheapest SMM Service Provider\">Pysmm</a> Has been the one of the best and cheapest smm services seller. Also if you want to start your smm panel then buy the premium and <a href=\"https://scriptssupply.com\" title=\"Cheap SMM Scripts\">best smm panel scripts</a> from <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts\">scriptssupply.com</a>. The <a href=\"https://scriptssupply.com\" title=\"SMM Panel Scripts Download\">Scriptssupply.com</a> is also known as <a href=\"https://scriptssupply.com\" title=\"ScriptsSupply\">scriptssupply</a> they sell the best smm panel site scripts.</p>\r\n<p>The smm scripts sold by the scriptssupply is very good and there codes are highly reliable. </p>\r\n<p>Some of you might thinking to download free smm panel scripts then go to elitecracker.com this site is owned by <a href=\"https://webersera.com\" target=\"_blank\" rel=\"noopener\" title=\"Webers Era Free SMM Panel Scripts\">https://webersera.com</a> the <a href=\"https://5ghackerz.com\" target=\"_blank\" rel=\"noopener\" title=\"FREE SMM PANEL SCRIPTS DOWNLOAD\">https://5ghackerz.com</a> on this site you can get free smm panel scripts.</p>\r\n<p>You Can Also Join There Telegram Channel For More Info <a href=\"https://telegram.dog/smm_scripts\" title=\"SMM Panel Telegram Group\">https://telegram.dog/smm_scripts</a></p>\r\n<p></p>'),
(131, 'is_ticket_notice_email', '0'),
(132, 'is_ticket_notice_email_admin', '0'),
(133, 'email_from', 'suporte@sgstorysmm.com.br'),
(134, 'email_name', 'Suporte SGS'),
(135, 'email_protocol_type', 'smtp'),
(136, 'smtp_server', 'smtp.hostinger.com'),
(137, 'smtp_port', '587'),
(138, 'smtp_encryption', 'tls'),
(139, 'smtp_username', 'suporte@sgstorysmm.com.br'),
(140, 'smtp_password', '@Luan1230'),
(141, 'verification_email_subject', '{{website_name}} - Please validate your account'),
(142, 'verification_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p> Thank you for joining! We&#39;re glad to have you as community member, and we&#39;re stocked for you to start exploring our service.  If you don&#39;t verify your address, you won&#39;t be able to create a User Account.</p><p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p><p>Thanks and Best Regards!</p>'),
(143, 'email_welcome_email_subject', '{{website_name}} - Getting Started with Our Service!'),
(144, 'email_welcome_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p><ul><li>Firstname: {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul><p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p><p>Best Regards,</p>'),
(145, 'email_new_registration_subject', '{{website_name}} - New Registration'),
(146, 'email_new_registration_content', '<p>Hi Admin!</p><p>Someone signed up in <strong>{{website_name}}</strong> with follow data</p><ul><li>Firstname {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul> '),
(147, 'email_password_recovery_subject', '{{website_name}} - Password Recovery'),
(148, 'email_password_recovery_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>Somebody (hopefully you) requested a new password for your account. </p><p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p><p>If you did not request a password reset, no further action is required. </p><p>Thanks and Best Regards!</p>                '),
(149, 'email_payment_notice_subject', '{{website_name}} -  Thank You! Deposit Payment Received'),
(150, 'email_payment_notice_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>We&#39;ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p><p>It has been a pleasure doing business with you. We wish you the best of luck.</p><p>Thanks and Best Regards!</p>'),
(151, 'manual_payment_content', ''),
(155, 'get_features_option', '0'),
(152, 'refill_expiry_days', '30'),
(153, 'email_new_refill_subject', ''),
(154, 'email_new_refill_content', ''),
(156, 'enable_affiliate', '');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', 'ab912eb7-569a-4c5c-83af-c81c4d100eab', '3.5'),
(2, '12696d4a50f0962a3107a776c18b3977', '20190826', 'b97855c1-7544-c857-3056-352acedb2735', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ce7a0c603e2268f6fc1ac2ba9a009b96e310abde', '103.175.181.3', 1680940308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303933393935333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2232223b733a333a22696473223b733a33323a223535323566346231333735323134393938623039353834643730336137623535223b733a343a22636f6465223b733a323a226272223b733a31323a22636f756e7472795f636f6465223b733a323a224252223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032322d30352d30352030323a32323a3032223b7d7569647c733a313a2237223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a227765627765727340676d61696c2e636f6d223b733a31303a2266697273745f6e616d65223b733a373a2277656277657273223b733a393a226c6173745f6e616d65223b733a373a2277656277657273223b733a383a2274696d657a6f6e65223b733a31343a22506163696669632f4d6964776179223b7d),
('aa8bdd22789a3adfcdba082189606c06a52e2bc7', '103.175.181.3', 1680939953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638303933393935333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2232223b733a333a22696473223b733a33323a223535323566346231333735323134393938623039353834643730336137623535223b733a343a22636f6465223b733a323a226272223b733a31323a22636f756e7472795f636f6465223b733a323a224252223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032322d30352d30352030323a32323a3032223b7d7569647c733a313a2237223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a227765627765727340676d61696c2e636f6d223b733a31303a2266697273745f6e616d65223b733a373a2277656277657273223b733a393a226c6173745f6e616d65223b733a373a2277656277657273223b733a383a2274696d657a6f6e65223b733a31343a22506163696669632f4d6964776179223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `affiliate_bal_available` decimal(15,4) DEFAULT 0.0000,
  `affiliate_bal_transferred` decimal(15,4) DEFAULT 0.0000,
  `api_key` varchar(191) DEFAULT NULL,
  `affiliate_id` varchar(191) NOT NULL,
  `referral_id` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `affiliate_bal_available`, `affiliate_bal_transferred`, `api_key`, `affiliate_id`, `referral_id`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(7, '2d1f0411eed545cf444589720f6da4b4', 'admin', 'Sign_up_page', 'webwers', 'webwers', 'webwers@gmail.com', '$2a$08$/HBDHZwvXiXk0IqfvKEAheBjHPW2M6Hsl2DgEQLlvjDeW9js7Ti42', 'Pacific/Midway', NULL, '{\"limit_payments\":{\"mercadopago\":\"1\"}}', NULL, '0.0000', 0, '0.0000', '0.0000', 'xacqGAnNNLnm0u1HfPfDs9hnyd1rRLjT', '', NULL, NULL, 'iFrdCDYKgPYuCPP9u2Ebaqkyux57qmwU', '8e37f6c550a42650ea224a6ed131caf8', '103.175.181.3', 1, '2023-04-08 04:29:57', '2023-04-08 04:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` enum('direct','api') NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) DEFAULT NULL,
  `service_id` varchar(191) DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `quantity` varchar(191) DEFAULT NULL,
  `is_refill` varchar(10) NOT NULL DEFAULT 'yes',
  `usernames` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `hashtags` text DEFAULT NULL,
  `hashtag` text DEFAULT NULL,
  `media` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text DEFAULT NULL,
  `sub_response_orders` text DEFAULT NULL,
  `sub_response_posts` text DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') DEFAULT 'pending',
  `start_counter` varchar(191) DEFAULT NULL,
  `remains` varchar(191) DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) DEFAULT '0',
  `note` text DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `refill_status` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `new_users` int(1) NOT NULL DEFAULT 0 COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 100, 1, 0, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"100\",\"new_users\":\"1\",\"status\":\"1\",\"take_fee_from_user\":\"0\",\"option\":{\"environment\":\"sandbox\",\"client_id\":\"\",\"secret_key\":\"\"}}'),
(14, 'stripe', 'Stripe Checkout', 5, 100, 0, 0, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"5\",\"max\":\"100\",\"new_users\":\"0\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"10\",\"environment\":\"sandbox\",\"public_key\":\"\",\"secret_key\":\"\"}}'),
(118, 'mercadopago', 'Mercadopago', 1, 1000, 1, 1, '{\"type\":\"mercadopago\",\"name\":\"Mercadopago\",\"min\":\"1\",\"max\":\"1000\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"0\",\"environment\":\"PROD\",\"public_key\":\"APP_USR-a8eab410-b3cb-462f-9136-7b42266aa5b9\",\"access_token\":\"APP_USR-5286261466307682-032812-560a047279dd594b9d3b1bc0407eae4a-247326589\",\"rate_to_usd\":\"1\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` enum('new','pending','closed','answered') NOT NULL DEFAULT 'pending',
  `user_read` double NOT NULL DEFAULT 0,
  `admin_read` double NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
