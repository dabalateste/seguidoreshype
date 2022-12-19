-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Jul-2021 às 14:19
-- Versão do servidor: 5.7.35
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mirandar_vox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `api_providers`
--

INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `type`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES
(1, '6c08835fc25dd0add2f1f6be7c828578', 38, 'SmmNow', 'https://smmnow.net/api/v2', '29f89bcc73e2fc36829f9b8e64a130147a5a6cdb', 'standard', 0.00000, 'USD', 'SmmNow - Services - The Best SMM Panel - Social Media Services for Resellers', 1, '2019-04-09 11:36:34', '2021-07-21 09:24:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `image` text,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `question` text,
  `answer` longtext,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` int(1) DEFAULT '1',
  `position` int(1) DEFAULT '0',
  `name` text,
  `slug` text,
  `image` text,
  `description` longtext,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4,
  `file_type` text CHARACTER SET utf8mb4,
  `file_ext` text CHARACTER SET utf8mb4,
  `file_size` text CHARACTER SET utf8mb4,
  `is_image` text CHARACTER SET utf8mb4,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '00cf79903db8946e155b0ff66d319bf1', 'en', 'GB', 1, 1, '2021-07-21 09:14:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '0'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'SmartPanel - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services!'),
(70, 'website_keywords', 'smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel'),
(71, 'website_title', 'SmartPanel - SMM Panel Reseller Tool'),
(72, 'website_favicon', 'https://demo.smartpanelsmm.com/assets/images/favicon.png'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo_white', 'https://demo.smartpanelsmm.com/assets/images/logo-white.png'),
(75, 'enable_service_list_no_login', ''),
(76, 'enable_api_tab', ''),
(77, 'disable_signup_page', ''),
(78, 'website_name', ''),
(79, 'social_facebook_link', ''),
(80, 'social_twitter_link', ''),
(81, 'social_pinterest_link', ''),
(82, 'social_instagram_link', ''),
(83, 'social_youtube_link', ''),
(84, 'copy_right_content', 'Copyright &copy; 2020 - SmartPanel'),
(85, 'notification_popup_content', ''),
(86, 'embed_javascript', ''),
(87, 'enable_notification_popup', '0'),
(88, 'new_currecry_rate', '1'),
(89, 'default_price_percentage_increase', '30'),
(90, 'enable_goolge_recapcha', ''),
(91, 'currency_decimal_separator', 'dot'),
(92, 'currency_thousand_separator', 'comma'),
(93, 'currency_symbol', '$'),
(94, 'currency_decimal', '2'),
(95, 'default_header_skin', 'default'),
(96, 'enable_news_announcement', ''),
(97, 'is_cookie_policy_page', ''),
(98, 'contact_tel', '+12345678'),
(99, 'contact_email', 'do-not-reply@smartpanel.com'),
(100, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(101, 'social_tumblr_link', ''),
(102, 'auto_rounding_x_decimal_places', '2'),
(103, 'is_auto_currency_convert', '0'),
(104, 'is_maintenance_mode', '0'),
(105, 'website_logo', 'https://demo.smartpanelsmm.com/assets/images/logo.png'),
(106, 'enable_drip_feed', ''),
(107, 'enable_attentions_orderpage', ''),
(108, 'enable_signup_skype_field', ''),
(109, 'enable_explication_service_symbol', ''),
(110, 'default_limit_per_page', '10'),
(111, 'is_verification_new_account', '0'),
(112, 'is_welcome_email', ''),
(113, 'is_new_user_email', ''),
(114, 'is_clear_ticket', ''),
(115, 'currency_code', 'USD'),
(116, 'is_active_manual', ''),
(117, 'is_payment_notice_email', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` text,
  `purchase_code` text,
  `version` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', 'ab912eb7-569a-4c5c-83af-c81c4d100eab', '3.5'),
(2, '12696d4a50f0962a3107a776c18b3977', '20190826', 'b97855c1-7544-c857-3056-352acedb2735', '1.1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('12d7d1f530f511044355c60f766171a39f074035', '213.190.6.200', 1627147070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134373037303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d),
('9210a484075a46a2ec8ce4816bc1e2c6ae370509', '213.190.6.200', 1627146533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134363533333b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d),
('b9e6a26a68bdc98c70b271428d3e3b355c93143a', '213.190.6.200', 1627146434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134363433343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d),
('f4b3bbdf87450a79a24ced3f708c6178cff5c32d', '201.49.204.51', 1627146366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134363336363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d7569647c733a323a223338223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2241646d696e223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('c19da1c3869b10496134b7bd249ff8173c1621cc', '45.174.239.122', 1627145969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134353936393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d),
('d72bb8db8053698ded5e50352bb736c07fd260ff', '201.49.204.51', 1627146366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134363336363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d7569647c733a323a223338223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2241646d696e223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('a846411275ab16b6560a6926e1f9247e6acf53f1', '45.174.239.122', 1627143028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134333032383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d),
('767d0a551c52877afe155cdaf6f6018f57505160', '45.174.239.122', 1627145384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632373134343939373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223030636637393930336462383934366531353562306666363664333139626631223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30372d32312030393a31343a3034223b7d7569647c733a323a223338223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2241646d696e223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d);

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `ip` text,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `general_transaction_logs`
--

INSERT INTO `general_transaction_logs` (`id`, `ids`, `uid`, `payer_email`, `type`, `transaction_id`, `txn_fee`, `note`, `data`, `amount`, `status`, `created`) VALUES
(41, 'c1121e6375ad89d78b8e06d0dc7c9b84', 39, NULL, 'mercadopago', '141431106-c2090a4e-e29f-4e0d-9e77-585baf2383a0', 0, 2, '{\"preference_id\":\"141431106-c2090a4e-e29f-4e0d-9e77-585baf2383a0\",\"status\":\"completed\",\"data\":[{\"id\":16011509703,\"transaction_amount\":2,\"total_paid_amount\":2,\"shipping_cost\":0,\"currency_id\":\"BRL\",\"status\":\"approved\",\"status_detail\":\"accredited\",\"operation_type\":\"regular_payment\",\"date_approved\":\"2021-07-24T01:27:06.000-04:00\",\"date_created\":\"2021-07-24T01:26:28.000-04:00\",\"last_modified\":\"2021-07-24T01:27:06.000-04:00\",\"amount_refunded\":0}]}', 0.3333, 1, '2021-07-24 10:56:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `password` text,
  `timezone` text,
  `more_information` text,
  `settings` longtext,
  `desc` longtext,
  `balance` decimal(15,4) DEFAULT '0.0000',
  `custom_rate` int(11) NOT NULL DEFAULT '0',
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text,
  `reset_key` text,
  `history_ip` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(38, 'e7ace76210625c6880498190c0af2d58', 'admin', NULL, 'Admin', 'Admin', 'admin@admin.com', '$2a$08$vN4xXbMEmH0r6LXGEQCL5.8SW0ezHPOWlaFLLqQiwe5G8RJlT.JDC', 'Asia/Kolkata', NULL, NULL, NULL, 0.0000, 0, NULL, NULL, 'c4a78c5172c30e669bb05d9dse48d6f5', '924baa6daaeecd9838c6b322c835148f', '201.49.204.51', 1, NULL, NULL),
(39, '68fcd60d6f709044f6f409e09e0f36ce', 'user', 'Sign_up_page', 'Andre', 'Batista', 'andrejujudaila@gmail.com', '$2a$08$efpIawddUMwc4jHqgdttB.M5V0qS/jkjX/vGwVEcHYqkdv/Phk0Kq', 'America/Sao_Paulo', NULL, '{\"limit_payments\":{\"mercadopago\":\"1\"}}', NULL, 0.3333, 0, '5baxqORwESXmtlZaHmsByLb8ATeSSfZT', '0.6666', 'zxhp0rBknXGYu8W4k7hDwqfADPWY88uZ', 'chWnLHxr6pSxmXTSnuWbJ9gc52XTe5zh', '201.49.204.51', 1, '2021-07-24 10:55:46', '2021-07-24 10:55:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT '0',
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci,
  `username` text COLLATE utf8mb4_unicode_ci,
  `hashtags` text COLLATE utf8mb4_unicode_ci,
  `hashtag` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT '0',
  `runs` int(11) DEFAULT '0',
  `interval` int(2) DEFAULT '0',
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `new_users` int(1) NOT NULL DEFAULT '0' COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 100, 1, 0, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"100\",\"new_users\":\"1\",\"status\":\"1\",\"take_fee_from_user\":\"0\",\"option\":{\"environment\":\"sandbox\",\"client_id\":\"\",\"secret_key\":\"\"}}'),
(14, 'stripe', 'Stripe Checkout', 5, 100, 0, 0, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"5\",\"max\":\"100\",\"new_users\":\"0\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"10\",\"environment\":\"sandbox\",\"public_key\":\"\",\"secret_key\":\"\"}}'),
(118, 'mercadopago', 'Mercadopago', 2, 100, 1, 1, '{\"type\":\"mercadopago\",\"name\":\"Mercadopago\",\"min\":\"2\",\"max\":\"100\",\"new_users\":\"1\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"0\",\"environment\":\"PROD\",\"public_key\":\"APP_USR-3ddd220b-5505-438a-83b3-1a99c92326e2\",\"access_token\":\"APP_USR-7753527049220544-070417-ecd6c6c459cddfdfd8474772783296ae-141431106\",\"rate_to_usd\":\"6\"}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed','answered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `user_read` double NOT NULL DEFAULT '0',
  `admin_read` double NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Índices para tabela `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices para tabela `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Índices para tabela `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT de tabela `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389720;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de tabela `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
