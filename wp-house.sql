-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 08, 2019 at 06:10 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp-house`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-07 06:19:23', '2019-08-07 06:19:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wp_house', 'yes'),
(2, 'home', 'http://localhost:8888/wp_house', 'yes'),
(3, 'blogname', 'house', 'yes'),
(4, 'blogdescription', 'Your own House', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mr.tkach.a@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:2;s:45:"wf-magnific-lightbox/wf-magnific-lightbox.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'house', 'yes'),
(41, 'stylesheet', 'house', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:"webp-express/webp-express.php";a:2:{i:0;s:28:"\\WebPExpress\\PluginUninstall";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1565281164;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1565288364;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1565331564;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565331592;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565331593;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1565258670;s:15:"version_checked";s:5:"5.2.2";s:12:"translations";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1565163604;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1565258672;s:7:"checked";a:2:{s:5:"house";s:0:"";s:14:"twentynineteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_9c8a1695b2cc85a8be13fa8c0d37aa9e', '1565763593', 'no'),
(122, '_site_transient_browser_9c8a1695b2cc85a8be13fa8c0d37aa9e', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"75.0.3770.142";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(123, '_site_transient_timeout_php_check_583da61ef3530e40e92d3e732da7ebb3', '1565763593', 'no'),
(124, '_site_transient_php_check_583da61ef3530e40e92d3e732da7ebb3', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(142, 'current_theme', 'House', 'yes'),
(143, 'theme_mods_house', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(148, 'recovery_mode_email_last_sent', '1565169431', 'yes'),
(155, 'WPLANG', '', 'yes'),
(156, 'new_admin_email', 'mr.tkach.a@gmail.com', 'yes'),
(161, '_transient_timeout_plugin_slugs', '1565277390', 'no'),
(162, '_transient_plugin_slugs', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:45:"wf-magnific-lightbox/wf-magnific-lightbox.php";}', 'no'),
(163, 'recently_activated', 'a:2:{s:29:"webp-express/webp-express.php";i:1565190829;s:19:"imagify/imagify.php";i:1565186990;}', 'yes'),
(170, 'acf_version', '5.8.2', 'yes'),
(197, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1565258672;s:7:"checked";a:2:{s:30:"advanced-custom-fields/acf.php";s:5:"5.8.2";s:45:"wf-magnific-lightbox/wf-magnific-lightbox.php";s:6:"0.9.13";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.2.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:45:"wf-magnific-lightbox/wf-magnific-lightbox.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/wf-magnific-lightbox";s:4:"slug";s:20:"wf-magnific-lightbox";s:6:"plugin";s:45:"wf-magnific-lightbox/wf-magnific-lightbox.php";s:11:"new_version";s:6:"0.9.13";s:3:"url";s:51:"https://wordpress.org/plugins/wf-magnific-lightbox/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/wf-magnific-lightbox.0.9.13.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/wf-magnific-lightbox/assets/icon-256x256.png?rev=1334275";s:2:"1x";s:73:"https://ps.w.org/wf-magnific-lightbox/assets/icon-128x128.png?rev=1334275";}s:7:"banners";a:1:{s:2:"1x";s:75:"https://ps.w.org/wf-magnific-lightbox/assets/banner-772x250.png?rev=1334275";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(198, 'wf-magnific-lightbox-copyright', 'a:1:{s:2:"en";a:1:{s:15:"copyrightPrefix";s:0:"";}}', 'yes'),
(199, 'wf-magnific-lightbox-gallery', 'a:2:{s:19:"presetMediaFilelink";b:1;s:18:"forceMediaFilelink";b:1;}', 'yes'),
(208, 'category_children', 'a:0:{}', 'yes'),
(211, '_site_transient_timeout_theme_roots', '1565260471', 'no'),
(212, '_site_transient_theme_roots', 'a:2:{s:5:"house";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";}', 'no'),
(219, '_site_transient_timeout_available_translations', '1565280658', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(220, '_site_transient_available_translations', 'a:117:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"5.0.4";s:7:"updated";s:19:"2019-05-16 12:52:45";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-01 19:39:44";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:6:"4.9.10";s:7:"updated";s:19:"2019-05-14 14:59:20";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.9.10/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"5.2.1";s:7:"updated";s:19:"2019-06-10 20:13:25";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:20:"Bengali (Bangladesh)";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-25 02:28:24";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-24 05:22:45";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-26 14:27:28";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-02 05:01:03";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-21 08:32:15";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-08 20:19:38";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-19 09:56:19";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/5.2.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-19 09:55:37";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-03 11:11:13";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.2.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-03 11:10:51";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_AT";a:8:{s:8:"language";s:5:"de_AT";s:7:"version";s:3:"5.2";s:7:"updated";s:19:"2019-05-07 21:15:55";s:12:"english_name";s:16:"German (Austria)";s:11:"native_name";s:21:"Deutsch (Österreich)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.2/de_AT.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-13 16:40:55";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-20 11:31:40";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-20 16:48:55";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-25 07:12:29";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-06-06 15:48:01";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-20 23:50:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-20 20:46:03";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-22 16:47:50";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-04 20:27:10";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-01 01:18:38";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-03-02 06:35:01";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-07 18:38:30";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-06 21:26:01";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.9.10";s:7:"updated";s:19:"2019-05-23 02:23:28";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-21 11:52:29";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:9:"5.0-beta3";s:7:"updated";s:19:"2018-11-28 16:04:33";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"5.2.1";s:7:"updated";s:19:"2019-05-29 05:00:30";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-30 17:08:47";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-28 14:23:29";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-06 06:39:46";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-29 15:57:31";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-09 17:11:32";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-23 20:53:56";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-19 14:36:40";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 13:16:13";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-22 05:57:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-24 13:42:24";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-02-21 08:17:32";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-21 14:15:57";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 07:34:10";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.3/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:2:"kn";a:8:{s:8:"language";s:2:"kn";s:7:"version";s:6:"4.9.10";s:7:"updated";s:19:"2019-05-08 04:00:57";s:12:"english_name";s:7:"Kannada";s:11:"native_name";s:15:"ಕನ್ನಡ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.10/kn.zip";s:3:"iso";a:2:{i:1;s:2:"kn";i:2;s:3:"kan";}s:7:"strings";a:1:{s:8:"continue";s:30:"ಮುಂದುವರೆಸಿ";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 14:27:41";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-18 14:32:44";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-07 12:10:36";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:6:"4.7.13";s:7:"updated";s:19:"2019-05-10 10:24:08";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.13/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-29 18:32:08";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-18 12:37:38";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-18 12:30:37";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-30 14:24:29";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-20 11:47:07";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-07 06:24:50";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-02 07:58:03";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_AO";a:8:{s:8:"language";s:5:"pt_AO";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-22 05:41:06";s:12:"english_name";s:19:"Portuguese (Angola)";s:11:"native_name";s:20:"Português de Angola";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/pt_AO.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-02 08:07:52";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-28 20:02:31";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-02 10:04:28";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-04 19:46:18";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-10 14:50:59";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-26 11:40:37";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.2.2/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-02 15:10:17";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"5.2.1";s:7:"updated";s:19:"2019-05-21 18:58:08";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-04 23:00:24";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-30 02:47:32";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-08 09:22:35";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-07 20:33:07";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-31 10:39:40";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-23 12:32:40";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-08 01:07:41";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.2.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-06-30 05:27:18";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-07-29 00:33:56";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"5.2.2";s:7:"updated";s:19:"2019-08-05 12:58:25";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.2.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=891 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1565183687'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_edit_lock', '1565280555:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1565278157:1'),
(9, 2, '_edit_last', '1'),
(10, 2, 'site_name', 'timber House'),
(11, 2, '_site_name', 'field_5d4ad2e182d06'),
(12, 2, 'phone_number', '+7 (585) 277-22-17'),
(13, 2, '_phone_number', 'field_5d4ad4d082d07'),
(14, 2, 'main_slogan', 'Дома из бруса под ключ'),
(15, 2, '_main_slogan', 'field_5d4ad51e82d08'),
(16, 16, 'site_name', 'timber House'),
(17, 16, '_site_name', 'field_5d4ad2e182d06'),
(18, 16, 'phone_number', ''),
(19, 16, '_phone_number', 'field_5d4ad4d082d07'),
(20, 16, 'main_slogan', ''),
(21, 16, '_main_slogan', 'field_5d4ad51e82d08'),
(22, 17, 'site_name', 'timber House'),
(23, 17, '_site_name', 'field_5d4ad2e182d06'),
(24, 17, 'phone_number', '+7 (585) 277-22-17'),
(25, 17, '_phone_number', 'field_5d4ad4d082d07'),
(26, 17, 'main_slogan', 'Дома из бруса под ключ'),
(27, 17, '_main_slogan', 'field_5d4ad51e82d08'),
(28, 20, '_wp_attached_file', '2019/08/sale.png'),
(29, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:252;s:6:"height";i:251;s:4:"file";s:16:"2019/08/sale.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"sale-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 20, '_wp_attachment_image_alt', 'sale'),
(31, 2, 'promotion_sale_image', '20'),
(32, 2, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(33, 2, 'background_image', '22'),
(34, 2, '_background_image', 'field_5d4ad9e069b45'),
(35, 21, 'site_name', 'timber House'),
(36, 21, '_site_name', 'field_5d4ad2e182d06'),
(37, 21, 'phone_number', '+7 (585) 277-22-17'),
(38, 21, '_phone_number', 'field_5d4ad4d082d07'),
(39, 21, 'main_slogan', 'Дома из бруса под ключ'),
(40, 21, '_main_slogan', 'field_5d4ad51e82d08'),
(41, 21, 'promotion_sale_image', '20'),
(42, 21, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(43, 21, 'background_image', ''),
(44, 21, '_background_image', 'field_5d4ad9e069b45'),
(45, 22, '_wp_attached_file', '2019/08/header-bg.jpg'),
(46, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:21:"2019/08/header-bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"header-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"header-bg-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"header-bg-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"header-bg-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 22, '_wp_attachment_image_alt', 'background'),
(48, 23, 'site_name', 'timber House'),
(49, 23, '_site_name', 'field_5d4ad2e182d06'),
(50, 23, 'phone_number', '+7 (585) 277-22-17'),
(51, 23, '_phone_number', 'field_5d4ad4d082d07'),
(52, 23, 'main_slogan', 'Дома из бруса под ключ'),
(53, 23, '_main_slogan', 'field_5d4ad51e82d08'),
(54, 23, 'promotion_sale_image', '20'),
(55, 23, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(56, 23, 'background_image', '22'),
(57, 23, '_background_image', 'field_5d4ad9e069b45'),
(58, 24, 'site_name', 'timber House'),
(59, 24, '_site_name', 'field_5d4ad2e182d06'),
(60, 24, 'phone_number', '+7 (585) 277-22-17'),
(61, 24, '_phone_number', 'field_5d4ad4d082d07'),
(62, 24, 'main_slogan', 'Дома из бруса под ключ'),
(63, 24, '_main_slogan', 'field_5d4ad51e82d08'),
(64, 24, 'promotion_sale_image', '20'),
(65, 24, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(66, 24, 'background_image', '22'),
(67, 24, '_background_image', 'field_5d4ad9e069b45'),
(68, 2, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(69, 2, '_heading', 'field_5d4ae33cbdcaa'),
(70, 2, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(71, 2, '_main_text', 'field_5d4ae430bdcab'),
(72, 27, 'site_name', 'timber House'),
(73, 27, '_site_name', 'field_5d4ad2e182d06'),
(74, 27, 'phone_number', '+7 (585) 277-22-17'),
(75, 27, '_phone_number', 'field_5d4ad4d082d07'),
(76, 27, 'main_slogan', 'Дома из бруса под ключ'),
(77, 27, '_main_slogan', 'field_5d4ad51e82d08'),
(78, 27, 'promotion_sale_image', '20'),
(79, 27, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(80, 27, 'background_image', '22'),
(81, 27, '_background_image', 'field_5d4ad9e069b45'),
(82, 27, 'heading', 'Строительство домов и бань из строганного и профилированного бруса'),
(83, 27, '_heading', 'field_5d4ae33cbdcaa'),
(84, 27, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\nгарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;">ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</p>'),
(85, 27, '_main_text', 'field_5d4ae430bdcab'),
(86, 28, 'site_name', 'timber House'),
(87, 28, '_site_name', 'field_5d4ad2e182d06'),
(88, 28, 'phone_number', '+7 (585) 277-22-17'),
(89, 28, '_phone_number', 'field_5d4ad4d082d07'),
(90, 28, 'main_slogan', 'Дома из бруса под ключ'),
(91, 28, '_main_slogan', 'field_5d4ad51e82d08'),
(92, 28, 'promotion_sale_image', '20'),
(93, 28, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(94, 28, 'background_image', '22'),
(95, 28, '_background_image', 'field_5d4ad9e069b45'),
(96, 28, 'heading', 'Строительство домов и бань из строганного и профилированного бруса'),
(97, 28, '_heading', 'field_5d4ae33cbdcaa'),
(98, 28, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ\r\nгарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(99, 28, '_main_text', 'field_5d4ae430bdcab'),
(100, 29, 'site_name', 'timber House'),
(101, 29, '_site_name', 'field_5d4ad2e182d06'),
(102, 29, 'phone_number', '+7 (585) 277-22-17'),
(103, 29, '_phone_number', 'field_5d4ad4d082d07'),
(104, 29, 'main_slogan', 'Дома из бруса под ключ'),
(105, 29, '_main_slogan', 'field_5d4ad51e82d08'),
(106, 29, 'promotion_sale_image', '20'),
(107, 29, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(108, 29, 'background_image', '22'),
(109, 29, '_background_image', 'field_5d4ad9e069b45'),
(110, 29, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(111, 29, '_heading', 'field_5d4ae33cbdcaa'),
(112, 29, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(113, 29, '_main_text', 'field_5d4ae430bdcab'),
(114, 30, '_wp_attached_file', '2019/08/item-1.jpg'),
(115, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:248;s:4:"file";s:18:"2019/08/item-1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(116, 33, '_wp_attached_file', '2019/08/h1.jpg'),
(117, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:248;s:4:"file";s:14:"2019/08/h1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(118, 34, '_wp_attached_file', '2019/08/h2.jpg'),
(119, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:248;s:4:"file";s:14:"2019/08/h2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(120, 35, '_wp_attached_file', '2019/08/h3.jpg'),
(121, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:247;s:6:"height";i:248;s:4:"file";s:14:"2019/08/h3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 36, '_wp_attached_file', '2019/08/h4.jpg'),
(123, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:247;s:4:"file";s:14:"2019/08/h4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 37, '_wp_attached_file', '2019/08/h5.jpg'),
(125, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:225;s:4:"file";s:14:"2019/08/h5.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 38, '_wp_attached_file', '2019/08/h6.jpg'),
(127, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:224;s:4:"file";s:14:"2019/08/h6.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 39, '_wp_attached_file', '2019/08/h7.jpg'),
(129, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:225;s:4:"file";s:14:"2019/08/h7.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 40, '_wp_attached_file', '2019/08/h8.jpg'),
(131, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:226;s:4:"file";s:14:"2019/08/h8.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 41, '_wp_attached_file', '2019/08/h9.jpg'),
(133, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:249;s:4:"file";s:14:"2019/08/h9.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 42, '_wp_attached_file', '2019/08/h10.jpg'),
(135, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:251;s:6:"height";i:250;s:4:"file";s:15:"2019/08/h10.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 43, '_wp_attached_file', '2019/08/h11.jpg'),
(137, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:249;s:4:"file";s:15:"2019/08/h11.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 44, '_wp_attached_file', '2019/08/h12.jpg'),
(139, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:247;s:6:"height";i:250;s:4:"file";s:15:"2019/08/h12.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 45, '_wp_attached_file', '2019/08/h13.jpg'),
(141, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:249;s:6:"height";i:237;s:4:"file";s:15:"2019/08/h13.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(142, 46, '_wp_attached_file', '2019/08/h14.jpg'),
(143, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:237;s:4:"file";s:15:"2019/08/h14.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 47, '_wp_attached_file', '2019/08/h15.jpg'),
(145, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:248;s:6:"height";i:237;s:4:"file";s:15:"2019/08/h15.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(146, 48, '_wp_attached_file', '2019/08/h16.jpg'),
(147, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:248;s:6:"height";i:237;s:4:"file";s:15:"2019/08/h16.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"h16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 33, '_wp_attachment_image_alt', ''),
(149, 2, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(150, 2, '_gallery', 'field_5d4aec838bda1'),
(151, 49, 'site_name', 'timber House'),
(152, 49, '_site_name', 'field_5d4ad2e182d06'),
(153, 49, 'phone_number', '+7 (585) 277-22-17'),
(154, 49, '_phone_number', 'field_5d4ad4d082d07'),
(155, 49, 'main_slogan', 'Дома из бруса под ключ'),
(156, 49, '_main_slogan', 'field_5d4ad51e82d08'),
(157, 49, 'promotion_sale_image', '20'),
(158, 49, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(159, 49, 'background_image', '22'),
(160, 49, '_background_image', 'field_5d4ad9e069b45'),
(161, 49, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(162, 49, '_heading', 'field_5d4ae33cbdcaa'),
(163, 49, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(164, 49, '_main_text', 'field_5d4ae430bdcab'),
(165, 49, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(166, 49, '_gallery', 'field_5d4aec838bda1'),
(167, 2, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(168, 2, '_gallery_title', 'field_5d4bab70cf5a6'),
(169, 2, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(170, 2, '_gallery_description', 'field_5d4babbccf5a7'),
(171, 52, 'site_name', 'timber House'),
(172, 52, '_site_name', 'field_5d4ad2e182d06'),
(173, 52, 'phone_number', '+7 (585) 277-22-17'),
(174, 52, '_phone_number', 'field_5d4ad4d082d07'),
(175, 52, 'main_slogan', 'Дома из бруса под ключ'),
(176, 52, '_main_slogan', 'field_5d4ad51e82d08'),
(177, 52, 'promotion_sale_image', '20'),
(178, 52, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(179, 52, 'background_image', '22'),
(180, 52, '_background_image', 'field_5d4ad9e069b45'),
(181, 52, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(182, 52, '_heading', 'field_5d4ae33cbdcaa'),
(183, 52, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(184, 52, '_main_text', 'field_5d4ae430bdcab'),
(185, 52, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(186, 52, '_gallery', 'field_5d4aec838bda1'),
(187, 52, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(188, 52, '_gallery_title', 'field_5d4bab70cf5a6'),
(189, 52, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(190, 52, '_gallery_description', 'field_5d4babbccf5a7'),
(191, 2, 'contact_email', 'namename@gmail.com'),
(192, 2, '_contact_email', 'field_5d4bafae32adf'),
(193, 55, 'site_name', 'timber House'),
(194, 55, '_site_name', 'field_5d4ad2e182d06'),
(195, 55, 'phone_number', '+7 (585) 277-22-17'),
(196, 55, '_phone_number', 'field_5d4ad4d082d07'),
(197, 55, 'main_slogan', 'Дома из бруса под ключ'),
(198, 55, '_main_slogan', 'field_5d4ad51e82d08'),
(199, 55, 'promotion_sale_image', '20'),
(200, 55, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(201, 55, 'background_image', '22'),
(202, 55, '_background_image', 'field_5d4ad9e069b45'),
(203, 55, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(204, 55, '_heading', 'field_5d4ae33cbdcaa'),
(205, 55, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(206, 55, '_main_text', 'field_5d4ae430bdcab'),
(207, 55, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(208, 55, '_gallery', 'field_5d4aec838bda1'),
(209, 55, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(210, 55, '_gallery_title', 'field_5d4bab70cf5a6'),
(211, 55, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(212, 55, '_gallery_description', 'field_5d4babbccf5a7'),
(213, 55, 'contact_email', 'namename@gmail.com'),
(214, 55, '_contact_email', 'field_5d4bafae32adf'),
(215, 58, '_wp_attached_file', '2019/08/regexp.pdf'),
(216, 2, 'download_link', '58'),
(217, 2, '_download_link', 'field_5d4bb2ec84507'),
(218, 59, 'site_name', 'timber House'),
(219, 59, '_site_name', 'field_5d4ad2e182d06'),
(220, 59, 'phone_number', '+7 (585) 277-22-17'),
(221, 59, '_phone_number', 'field_5d4ad4d082d07'),
(222, 59, 'main_slogan', 'Дома из бруса под ключ'),
(223, 59, '_main_slogan', 'field_5d4ad51e82d08'),
(224, 59, 'promotion_sale_image', '20'),
(225, 59, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(226, 59, 'background_image', '22'),
(227, 59, '_background_image', 'field_5d4ad9e069b45'),
(228, 59, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(229, 59, '_heading', 'field_5d4ae33cbdcaa'),
(230, 59, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(231, 59, '_main_text', 'field_5d4ae430bdcab'),
(232, 59, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(233, 59, '_gallery', 'field_5d4aec838bda1'),
(234, 59, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(235, 59, '_gallery_title', 'field_5d4bab70cf5a6'),
(236, 59, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(237, 59, '_gallery_description', 'field_5d4babbccf5a7'),
(238, 59, 'contact_email', 'namename@gmail.com'),
(239, 59, '_contact_email', 'field_5d4bafae32adf'),
(240, 59, 'download_link', '58'),
(241, 59, '_download_link', 'field_5d4bb2ec84507'),
(242, 1, '_edit_lock', '1565278503:1'),
(244, 2, 'projects', 'a:3:{i:0;s:1:"1";i:1;s:2:"72";i:2;s:3:"118";}'),
(245, 2, '_projects', 'field_5d4bb8b57dc2a'),
(246, 63, 'site_name', 'timber House'),
(247, 63, '_site_name', 'field_5d4ad2e182d06'),
(248, 63, 'phone_number', '+7 (585) 277-22-17'),
(249, 63, '_phone_number', 'field_5d4ad4d082d07'),
(250, 63, 'main_slogan', 'Дома из бруса под ключ'),
(251, 63, '_main_slogan', 'field_5d4ad51e82d08'),
(252, 63, 'promotion_sale_image', '20'),
(253, 63, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(254, 63, 'background_image', '22'),
(255, 63, '_background_image', 'field_5d4ad9e069b45'),
(256, 63, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(257, 63, '_heading', 'field_5d4ae33cbdcaa'),
(258, 63, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(259, 63, '_main_text', 'field_5d4ae430bdcab'),
(260, 63, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(261, 63, '_gallery', 'field_5d4aec838bda1'),
(262, 63, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(263, 63, '_gallery_title', 'field_5d4bab70cf5a6'),
(264, 63, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(265, 63, '_gallery_description', 'field_5d4babbccf5a7'),
(266, 63, 'contact_email', 'namename@gmail.com'),
(267, 63, '_contact_email', 'field_5d4bafae32adf'),
(268, 63, 'download_link', '58'),
(269, 63, '_download_link', 'field_5d4bb2ec84507'),
(270, 63, 'projects', 'a:1:{i:0;s:1:"1";}'),
(271, 63, '_projects', 'field_5d4bb8b57dc2a'),
(272, 64, 'site_name', 'timber House'),
(273, 64, '_site_name', 'field_5d4ad2e182d06'),
(274, 64, 'phone_number', '+7 (585) 277-22-17'),
(275, 64, '_phone_number', 'field_5d4ad4d082d07'),
(276, 64, 'main_slogan', 'Дома из бруса под ключ'),
(277, 64, '_main_slogan', 'field_5d4ad51e82d08'),
(278, 64, 'promotion_sale_image', '20'),
(279, 64, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(280, 64, 'background_image', '22'),
(281, 64, '_background_image', 'field_5d4ad9e069b45'),
(282, 64, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(283, 64, '_heading', 'field_5d4ae33cbdcaa'),
(284, 64, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(285, 64, '_main_text', 'field_5d4ae430bdcab'),
(286, 64, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(287, 64, '_gallery', 'field_5d4aec838bda1'),
(288, 64, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(289, 64, '_gallery_title', 'field_5d4bab70cf5a6'),
(290, 64, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(291, 64, '_gallery_description', 'field_5d4babbccf5a7'),
(292, 64, 'contact_email', 'namename@gmail.com'),
(293, 64, '_contact_email', 'field_5d4bafae32adf'),
(294, 64, 'download_link', '58'),
(295, 64, '_download_link', 'field_5d4bb2ec84507'),
(296, 64, 'projects', 'a:1:{i:0;s:1:"1";}'),
(297, 64, '_projects', 'field_5d4bb8b57dc2a'),
(298, 65, 'site_name', 'timber House'),
(299, 65, '_site_name', 'field_5d4ad2e182d06'),
(300, 65, 'phone_number', '+7 (585) 277-22-17'),
(301, 65, '_phone_number', 'field_5d4ad4d082d07'),
(302, 65, 'main_slogan', 'Дома из бруса под ключ'),
(303, 65, '_main_slogan', 'field_5d4ad51e82d08'),
(304, 65, 'promotion_sale_image', '20'),
(305, 65, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(306, 65, 'background_image', '22'),
(307, 65, '_background_image', 'field_5d4ad9e069b45'),
(308, 65, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(309, 65, '_heading', 'field_5d4ae33cbdcaa'),
(310, 65, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(311, 65, '_main_text', 'field_5d4ae430bdcab'),
(312, 65, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(313, 65, '_gallery', 'field_5d4aec838bda1'),
(314, 65, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(315, 65, '_gallery_title', 'field_5d4bab70cf5a6'),
(316, 65, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(317, 65, '_gallery_description', 'field_5d4babbccf5a7'),
(318, 65, 'contact_email', 'namename@gmail.com'),
(319, 65, '_contact_email', 'field_5d4bafae32adf'),
(320, 65, 'download_link', '58'),
(321, 65, '_download_link', 'field_5d4bb2ec84507'),
(322, 65, 'projects', 'a:1:{i:0;s:1:"1";}'),
(323, 65, '_projects', 'field_5d4bb8b57dc2a'),
(324, 66, '_edit_lock', '1565269247:1'),
(325, 67, '_edit_last', '1'),
(326, 67, '_edit_lock', '1565278343:1'),
(328, 1, '_edit_last', '1'),
(330, 1, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(331, 1, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(332, 70, 'blog_of_houses', ''),
(333, 70, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(335, 1, '_wp_old_slug', 'hello-world'),
(336, 72, '_edit_lock', '1565278373:1'),
(337, 73, '_wp_attached_file', '2019/08/project2.jpg'),
(338, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:20:"2019/08/project2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"project2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"project2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"project2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(339, 74, '_wp_attached_file', '2019/08/project2.1.jpg'),
(340, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1004;s:6:"height";i:669;s:4:"file";s:22:"2019/08/project2.1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"project2.1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"project2.1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"project2.1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(342, 72, '_edit_last', '1'),
(344, 72, 'blog_of_houses', 'fvdfdfgdfg'),
(345, 72, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(346, 75, 'blog_of_houses', ''),
(347, 75, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(350, 76, 'blog_of_houses', ''),
(351, 76, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(354, 77, 'site_name', 'timber House'),
(355, 77, '_site_name', 'field_5d4ad2e182d06'),
(356, 77, 'phone_number', '+7 (585) 277-22-17'),
(357, 77, '_phone_number', 'field_5d4ad4d082d07'),
(358, 77, 'main_slogan', 'Дома из бруса под ключ'),
(359, 77, '_main_slogan', 'field_5d4ad51e82d08'),
(360, 77, 'promotion_sale_image', '20'),
(361, 77, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(362, 77, 'background_image', '22'),
(363, 77, '_background_image', 'field_5d4ad9e069b45'),
(364, 77, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(365, 77, '_heading', 'field_5d4ae33cbdcaa'),
(366, 77, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(367, 77, '_main_text', 'field_5d4ae430bdcab'),
(368, 77, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(369, 77, '_gallery', 'field_5d4aec838bda1'),
(370, 77, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(371, 77, '_gallery_title', 'field_5d4bab70cf5a6'),
(372, 77, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(373, 77, '_gallery_description', 'field_5d4babbccf5a7'),
(374, 77, 'contact_email', 'namename@gmail.com'),
(375, 77, '_contact_email', 'field_5d4bafae32adf'),
(376, 77, 'download_link', '58'),
(377, 77, '_download_link', 'field_5d4bb2ec84507'),
(378, 77, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(379, 77, '_projects', 'field_5d4bb8b57dc2a'),
(382, 78, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(383, 78, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(384, 79, 'site_name', 'timber House'),
(385, 79, '_site_name', 'field_5d4ad2e182d06'),
(386, 79, 'phone_number', '+7 (585) 277-22-17'),
(387, 79, '_phone_number', 'field_5d4ad4d082d07'),
(388, 79, 'main_slogan', 'Дома из бруса под ключ'),
(389, 79, '_main_slogan', 'field_5d4ad51e82d08'),
(390, 79, 'promotion_sale_image', '20'),
(391, 79, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(392, 79, 'background_image', '22'),
(393, 79, '_background_image', 'field_5d4ad9e069b45'),
(394, 79, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(395, 79, '_heading', 'field_5d4ae33cbdcaa'),
(396, 79, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(397, 79, '_main_text', 'field_5d4ae430bdcab'),
(398, 79, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(399, 79, '_gallery', 'field_5d4aec838bda1'),
(400, 79, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(401, 79, '_gallery_title', 'field_5d4bab70cf5a6'),
(402, 79, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(403, 79, '_gallery_description', 'field_5d4babbccf5a7'),
(404, 79, 'contact_email', 'namename@gmail.com'),
(405, 79, '_contact_email', 'field_5d4bafae32adf'),
(406, 79, 'download_link', '58'),
(407, 79, '_download_link', 'field_5d4bb2ec84507'),
(408, 79, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(409, 79, '_projects', 'field_5d4bb8b57dc2a'),
(412, 80, 'blog_of_houses', 'fvdfdfgdfg'),
(413, 80, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(414, 81, 'site_name', 'timber House'),
(415, 81, '_site_name', 'field_5d4ad2e182d06'),
(416, 81, 'phone_number', '+7 (585) 277-22-17'),
(417, 81, '_phone_number', 'field_5d4ad4d082d07'),
(418, 81, 'main_slogan', 'Дома из бруса под ключ'),
(419, 81, '_main_slogan', 'field_5d4ad51e82d08'),
(420, 81, 'promotion_sale_image', '20'),
(421, 81, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(422, 81, 'background_image', '22'),
(423, 81, '_background_image', 'field_5d4ad9e069b45'),
(424, 81, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(425, 81, '_heading', 'field_5d4ae33cbdcaa'),
(426, 81, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(427, 81, '_main_text', 'field_5d4ae430bdcab'),
(428, 81, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(429, 81, '_gallery', 'field_5d4aec838bda1'),
(430, 81, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(431, 81, '_gallery_title', 'field_5d4bab70cf5a6'),
(432, 81, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(433, 81, '_gallery_description', 'field_5d4babbccf5a7'),
(434, 81, 'contact_email', 'namename@gmail.com'),
(435, 81, '_contact_email', 'field_5d4bafae32adf'),
(436, 81, 'download_link', '58'),
(437, 81, '_download_link', 'field_5d4bb2ec84507'),
(438, 81, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(439, 81, '_projects', 'field_5d4bb8b57dc2a'),
(442, 72, 'project_name', 'House #2'),
(443, 72, '_project_name', 'field_5d4bf5a3266ee'),
(444, 82, 'blog_of_houses', 'fvdfdfgdfg'),
(445, 82, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(446, 82, 'project_name', 'hghghfghfghnghnfghn'),
(447, 82, '_project_name', 'field_5d4bf5a3266ee'),
(448, 83, 'site_name', 'timber House'),
(449, 83, '_site_name', 'field_5d4ad2e182d06'),
(450, 83, 'phone_number', '+7 (585) 277-22-17'),
(451, 83, '_phone_number', 'field_5d4ad4d082d07'),
(452, 83, 'main_slogan', 'Дома из бруса под ключ'),
(453, 83, '_main_slogan', 'field_5d4ad51e82d08'),
(454, 83, 'promotion_sale_image', '20'),
(455, 83, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(456, 83, 'background_image', '22'),
(457, 83, '_background_image', 'field_5d4ad9e069b45'),
(458, 83, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(459, 83, '_heading', 'field_5d4ae33cbdcaa'),
(460, 83, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(461, 83, '_main_text', 'field_5d4ae430bdcab'),
(462, 83, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(463, 83, '_gallery', 'field_5d4aec838bda1'),
(464, 83, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(465, 83, '_gallery_title', 'field_5d4bab70cf5a6'),
(466, 83, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(467, 83, '_gallery_description', 'field_5d4babbccf5a7'),
(468, 83, 'contact_email', 'namename@gmail.com'),
(469, 83, '_contact_email', 'field_5d4bafae32adf'),
(470, 83, 'download_link', '58'),
(471, 83, '_download_link', 'field_5d4bb2ec84507'),
(472, 83, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(473, 83, '_projects', 'field_5d4bb8b57dc2a'),
(475, 72, 'project_size', 'Размер дома: 6 x 7,5'),
(476, 72, '_project_size', 'field_5d4c37d8fa731'),
(477, 72, 'project_area', 'Общая площадь дома: 72 кв.'),
(478, 72, '_project_area', 'field_5d4c37eafa732'),
(479, 72, 'project_price', 'Стоимость - 457 000 рублей'),
(480, 72, '_project_price', 'field_5d4c389c2f4b7'),
(481, 72, 'project_images_item_first', '102'),
(482, 72, '_project_images_item_first', 'field_5d4c3948bec1a'),
(483, 72, 'project_images_item_second', '74'),
(484, 72, '_project_images_item_second', 'field_5d4c398bbec1b'),
(485, 89, 'blog_of_houses', 'fvdfdfgdfg'),
(486, 89, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(487, 89, 'project_name', 'House #2'),
(488, 89, '_project_name', 'field_5d4bf5a3266ee'),
(489, 89, 'project_size', 'Размер дома: 6 x 7,5'),
(490, 89, '_project_size', 'field_5d4c37d8fa731'),
(491, 89, 'project_area', 'Общая площадь дома: 72 кв.'),
(492, 89, '_project_area', 'field_5d4c37eafa732'),
(493, 89, 'project_price', 'Стоимость - 457 000 рублей'),
(494, 89, '_project_price', 'field_5d4c389c2f4b7'),
(495, 89, 'project_images_item_first', ''),
(496, 89, '_project_images_item_first', 'field_5d4c3948bec1a'),
(497, 89, 'project_images_item_second', ''),
(498, 89, '_project_images_item_second', 'field_5d4c398bbec1b'),
(500, 90, 'blog_of_houses', 'fvdfdfgdfg'),
(501, 90, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(502, 90, 'project_name', 'House #2'),
(503, 90, '_project_name', 'field_5d4bf5a3266ee'),
(504, 90, 'project_size', 'Размер дома: 6 x 7,5'),
(505, 90, '_project_size', 'field_5d4c37d8fa731'),
(506, 90, 'project_area', 'Общая площадь дома: 72 кв.'),
(507, 90, '_project_area', 'field_5d4c37eafa732'),
(508, 90, 'project_price', 'Стоимость - 457 000 рублей'),
(509, 90, '_project_price', 'field_5d4c389c2f4b7'),
(510, 90, 'project_images_item_first', ''),
(511, 90, '_project_images_item_first', 'field_5d4c3948bec1a'),
(512, 90, 'project_images_item_second', ''),
(513, 90, '_project_images_item_second', 'field_5d4c398bbec1b'),
(515, 91, 'blog_of_houses', 'fvdfdfgdfg'),
(516, 91, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(517, 91, 'project_name', 'House #2'),
(518, 91, '_project_name', 'field_5d4bf5a3266ee'),
(519, 91, 'project_size', 'Размер дома: 6 x 7,5'),
(520, 91, '_project_size', 'field_5d4c37d8fa731'),
(521, 91, 'project_area', 'Общая площадь дома: 72 кв.'),
(522, 91, '_project_area', 'field_5d4c37eafa732'),
(523, 91, 'project_price', 'Стоимость - 457 000 рублей'),
(524, 91, '_project_price', 'field_5d4c389c2f4b7'),
(525, 91, 'project_images_item_first', '73'),
(526, 91, '_project_images_item_first', 'field_5d4c3948bec1a'),
(527, 91, 'project_images_item_second', '74'),
(528, 91, '_project_images_item_second', 'field_5d4c398bbec1b'),
(530, 92, 'blog_of_houses', 'fvdfdfgdfg'),
(531, 92, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(532, 92, 'project_name', 'House #2'),
(533, 92, '_project_name', 'field_5d4bf5a3266ee'),
(534, 92, 'project_size', 'Размер дома: 6 x 7,5'),
(535, 92, '_project_size', 'field_5d4c37d8fa731'),
(536, 92, 'project_area', 'Общая площадь дома: 72 кв.'),
(537, 92, '_project_area', 'field_5d4c37eafa732'),
(538, 92, 'project_price', 'Стоимость - 457 000 рублей'),
(539, 92, '_project_price', 'field_5d4c389c2f4b7'),
(540, 92, 'project_images_item_first', '73'),
(541, 92, '_project_images_item_first', 'field_5d4c3948bec1a'),
(542, 92, 'project_images_item_second', '74'),
(543, 92, '_project_images_item_second', 'field_5d4c398bbec1b'),
(545, 94, 'blog_of_houses', 'fvdfdfgdfg'),
(546, 94, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(547, 94, 'project_name', 'House #2'),
(548, 94, '_project_name', 'field_5d4bf5a3266ee'),
(549, 94, 'project_size', 'Размер дома: 6 x 7,5'),
(550, 94, '_project_size', 'field_5d4c37d8fa731'),
(551, 94, 'project_area', 'Общая площадь дома: 72 кв.'),
(552, 94, '_project_area', 'field_5d4c37eafa732'),
(553, 94, 'project_price', 'Стоимость - 457 000 рублей'),
(554, 94, '_project_price', 'field_5d4c389c2f4b7'),
(555, 94, 'project_images_item_first', '73'),
(556, 94, '_project_images_item_first', 'field_5d4c3948bec1a'),
(557, 94, 'project_images_item_second', '74'),
(558, 94, '_project_images_item_second', 'field_5d4c398bbec1b'),
(561, 96, 'blog_of_houses', 'fvdfdfgdfg'),
(562, 96, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(563, 96, 'project_name', 'House #2'),
(564, 96, '_project_name', 'field_5d4bf5a3266ee'),
(565, 96, 'project_size', 'Размер дома: 6 x 7,5'),
(566, 96, '_project_size', 'field_5d4c37d8fa731'),
(567, 96, 'project_area', 'Общая площадь дома: 72 кв.'),
(568, 96, '_project_area', 'field_5d4c37eafa732'),
(569, 96, 'project_price', 'Стоимость - 457 000 рублей'),
(570, 96, '_project_price', 'field_5d4c389c2f4b7'),
(571, 96, 'project_images_item_first', '73'),
(572, 96, '_project_images_item_first', 'field_5d4c3948bec1a'),
(573, 96, 'project_images_item_second', '74'),
(574, 96, '_project_images_item_second', 'field_5d4c398bbec1b'),
(577, 97, 'blog_of_houses', 'fvdfdfgdfg'),
(578, 97, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(579, 97, 'project_name', 'House #2'),
(580, 97, '_project_name', 'field_5d4bf5a3266ee'),
(581, 97, 'project_size', 'Размер дома: 6 x 7,5'),
(582, 97, '_project_size', 'field_5d4c37d8fa731'),
(583, 97, 'project_area', 'Общая площадь дома: 72 кв.'),
(584, 97, '_project_area', 'field_5d4c37eafa732'),
(585, 97, 'project_price', 'Стоимость - 457 000 рублей'),
(586, 97, '_project_price', 'field_5d4c389c2f4b7'),
(587, 97, 'project_images_item_first', '73'),
(588, 97, '_project_images_item_first', 'field_5d4c3948bec1a'),
(589, 97, 'project_images_item_second', '74'),
(590, 97, '_project_images_item_second', 'field_5d4c398bbec1b'),
(591, 98, 'site_name', 'timber House'),
(592, 98, '_site_name', 'field_5d4ad2e182d06'),
(593, 98, 'phone_number', '+7 (585) 277-22-17'),
(594, 98, '_phone_number', 'field_5d4ad4d082d07'),
(595, 98, 'main_slogan', 'Дома из бруса под ключ'),
(596, 98, '_main_slogan', 'field_5d4ad51e82d08'),
(597, 98, 'promotion_sale_image', '20'),
(598, 98, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(599, 98, 'background_image', '22'),
(600, 98, '_background_image', 'field_5d4ad9e069b45'),
(601, 98, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(602, 98, '_heading', 'field_5d4ae33cbdcaa'),
(603, 98, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(604, 98, '_main_text', 'field_5d4ae430bdcab'),
(605, 98, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(606, 98, '_gallery', 'field_5d4aec838bda1'),
(607, 98, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(608, 98, '_gallery_title', 'field_5d4bab70cf5a6'),
(609, 98, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(610, 98, '_gallery_description', 'field_5d4babbccf5a7'),
(611, 98, 'contact_email', 'namename@gmail.com'),
(612, 98, '_contact_email', 'field_5d4bafae32adf'),
(613, 98, 'download_link', '58'),
(614, 98, '_download_link', 'field_5d4bb2ec84507'),
(615, 98, 'projects', ''),
(616, 98, '_projects', 'field_5d4bb8b57dc2a'),
(617, 99, 'site_name', 'timber House'),
(618, 99, '_site_name', 'field_5d4ad2e182d06'),
(619, 99, 'phone_number', '+7 (585) 277-22-17'),
(620, 99, '_phone_number', 'field_5d4ad4d082d07'),
(621, 99, 'main_slogan', 'Дома из бруса под ключ'),
(622, 99, '_main_slogan', 'field_5d4ad51e82d08'),
(623, 99, 'promotion_sale_image', '20'),
(624, 99, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(625, 99, 'background_image', '22'),
(626, 99, '_background_image', 'field_5d4ad9e069b45'),
(627, 99, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(628, 99, '_heading', 'field_5d4ae33cbdcaa'),
(629, 99, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(630, 99, '_main_text', 'field_5d4ae430bdcab'),
(631, 99, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(632, 99, '_gallery', 'field_5d4aec838bda1'),
(633, 99, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(634, 99, '_gallery_title', 'field_5d4bab70cf5a6'),
(635, 99, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(636, 99, '_gallery_description', 'field_5d4babbccf5a7'),
(637, 99, 'contact_email', 'namename@gmail.com'),
(638, 99, '_contact_email', 'field_5d4bafae32adf'),
(639, 99, 'download_link', '58'),
(640, 99, '_download_link', 'field_5d4bb2ec84507'),
(641, 99, 'projects', 'a:1:{i:0;s:2:"72";}'),
(642, 99, '_projects', 'field_5d4bb8b57dc2a'),
(645, 101, 'blog_of_houses', 'fvdfdfgdfg'),
(646, 101, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(647, 101, 'project_name', 'House #2'),
(648, 101, '_project_name', 'field_5d4bf5a3266ee'),
(649, 101, 'project_size', 'Размер дома: 6 x 7,5'),
(650, 101, '_project_size', 'field_5d4c37d8fa731'),
(651, 101, 'project_area', 'Общая площадь дома: 72 кв.'),
(652, 101, '_project_area', 'field_5d4c37eafa732'),
(653, 101, 'project_price', 'Стоимость - 457 000 рублей'),
(654, 101, '_project_price', 'field_5d4c389c2f4b7'),
(655, 101, 'project_images_item_first', ''),
(656, 101, '_project_images_item_first', 'field_5d4c3948bec1a'),
(657, 101, 'project_images_item_second', ''),
(658, 101, '_project_images_item_second', 'field_5d4c398bbec1b'),
(659, 102, '_wp_attached_file', '2019/08/project2-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(660, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:22:"2019/08/project2-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"project2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"project2-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"project2-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(663, 103, 'blog_of_houses', 'fvdfdfgdfg'),
(664, 103, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(665, 103, 'project_name', 'House #2'),
(666, 103, '_project_name', 'field_5d4bf5a3266ee'),
(667, 103, 'project_size', 'Размер дома: 6 x 7,5'),
(668, 103, '_project_size', 'field_5d4c37d8fa731'),
(669, 103, 'project_area', 'Общая площадь дома: 72 кв.'),
(670, 103, '_project_area', 'field_5d4c37eafa732'),
(671, 103, 'project_price', 'Стоимость - 457 000 рублей'),
(672, 103, '_project_price', 'field_5d4c389c2f4b7'),
(673, 103, 'project_images_item_first', '102'),
(674, 103, '_project_images_item_first', 'field_5d4c3948bec1a'),
(675, 103, 'project_images_item_second', '74'),
(676, 103, '_project_images_item_second', 'field_5d4c398bbec1b'),
(677, 104, 'site_name', 'timber House'),
(678, 104, '_site_name', 'field_5d4ad2e182d06'),
(679, 104, 'phone_number', '+7 (585) 277-22-17'),
(680, 104, '_phone_number', 'field_5d4ad4d082d07'),
(681, 104, 'main_slogan', 'Дома из бруса под ключ'),
(682, 104, '_main_slogan', 'field_5d4ad51e82d08'),
(683, 104, 'promotion_sale_image', '20'),
(684, 104, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(685, 104, 'background_image', '22'),
(686, 104, '_background_image', 'field_5d4ad9e069b45'),
(687, 104, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(688, 104, '_heading', 'field_5d4ae33cbdcaa'),
(689, 104, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(690, 104, '_main_text', 'field_5d4ae430bdcab'),
(691, 104, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(692, 104, '_gallery', 'field_5d4aec838bda1'),
(693, 104, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(694, 104, '_gallery_title', 'field_5d4bab70cf5a6'),
(695, 104, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(696, 104, '_gallery_description', 'field_5d4babbccf5a7'),
(697, 104, 'contact_email', 'namename@gmail.com'),
(698, 104, '_contact_email', 'field_5d4bafae32adf'),
(699, 104, 'download_link', '58'),
(700, 104, '_download_link', 'field_5d4bb2ec84507'),
(701, 104, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(702, 104, '_projects', 'field_5d4bb8b57dc2a'),
(703, 106, '_wp_attached_file', '2019/08/project-1.jpg'),
(704, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:21:"2019/08/project-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"project-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"project-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"project-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(705, 107, '_wp_attached_file', '2019/08/project-2.jpg'),
(706, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:991;s:6:"height";i:543;s:4:"file";s:21:"2019/08/project-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"project-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"project-2-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"project-2-768x421.jpg";s:5:"width";i:768;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(709, 1, 'project_name', 'House #1'),
(710, 1, '_project_name', 'field_5d4bf5a3266ee'),
(711, 1, 'project_size', 'Размер дома: 6 x 6'),
(712, 1, '_project_size', 'field_5d4c37d8fa731'),
(713, 1, 'project_area', 'Общая площадь дома: 54 кв. м'),
(714, 1, '_project_area', 'field_5d4c37eafa732'),
(715, 1, 'project_price', 'Стоимость - 402 000 рублей'),
(716, 1, '_project_price', 'field_5d4c389c2f4b7'),
(717, 1, 'project_images_item_first', '106'),
(718, 1, '_project_images_item_first', 'field_5d4c3948bec1a'),
(719, 1, 'project_images_item_second', '107'),
(720, 1, '_project_images_item_second', 'field_5d4c398bbec1b'),
(721, 109, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(722, 109, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(723, 109, 'project_name', 'House #1'),
(724, 109, '_project_name', 'field_5d4bf5a3266ee'),
(725, 109, 'project_size', 'Размер дома: 6 x 6'),
(726, 109, '_project_size', 'field_5d4c37d8fa731'),
(727, 109, 'project_area', 'Общая площадь дома: 54 кв. м'),
(728, 109, '_project_area', 'field_5d4c37eafa732'),
(729, 109, 'project_price', 'Стоимость - 402 000 рублей'),
(730, 109, '_project_price', 'field_5d4c389c2f4b7'),
(731, 109, 'project_images_item_first', '106'),
(732, 109, '_project_images_item_first', 'field_5d4c3948bec1a'),
(733, 109, 'project_images_item_second', '107'),
(734, 109, '_project_images_item_second', 'field_5d4c398bbec1b'),
(735, 2, 'project_title', 'ПРОЕКТЫ ДОМОВ ИЗ БРУСА'),
(736, 2, '_project_title', 'field_5d4c3ccf0d7b7'),
(737, 111, 'site_name', 'timber House'),
(738, 111, '_site_name', 'field_5d4ad2e182d06'),
(739, 111, 'phone_number', '+7 (585) 277-22-17'),
(740, 111, '_phone_number', 'field_5d4ad4d082d07'),
(741, 111, 'main_slogan', 'Дома из бруса под ключ'),
(742, 111, '_main_slogan', 'field_5d4ad51e82d08'),
(743, 111, 'promotion_sale_image', '20'),
(744, 111, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(745, 111, 'background_image', '22'),
(746, 111, '_background_image', 'field_5d4ad9e069b45'),
(747, 111, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(748, 111, '_heading', 'field_5d4ae33cbdcaa'),
(749, 111, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(750, 111, '_main_text', 'field_5d4ae430bdcab'),
(751, 111, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(752, 111, '_gallery', 'field_5d4aec838bda1'),
(753, 111, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(754, 111, '_gallery_title', 'field_5d4bab70cf5a6'),
(755, 111, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(756, 111, '_gallery_description', 'field_5d4babbccf5a7'),
(757, 111, 'contact_email', 'namename@gmail.com'),
(758, 111, '_contact_email', 'field_5d4bafae32adf'),
(759, 111, 'download_link', '58'),
(760, 111, '_download_link', 'field_5d4bb2ec84507'),
(761, 111, 'projects', 'a:2:{i:0;s:1:"1";i:1;s:2:"72";}'),
(762, 111, '_projects', 'field_5d4bb8b57dc2a'),
(763, 111, 'project_title', 'ПРОЕКТЫ ДОМОВ ИЗ БРУСА'),
(764, 111, '_project_title', 'field_5d4c3ccf0d7b7'),
(767, 112, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(768, 112, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(769, 112, 'project_name', 'House #1'),
(770, 112, '_project_name', 'field_5d4bf5a3266ee'),
(771, 112, 'project_size', '6 x 6'),
(772, 112, '_project_size', 'field_5d4c37d8fa731'),
(773, 112, 'project_area', 'Общая площадь дома: 54 кв. м'),
(774, 112, '_project_area', 'field_5d4c37eafa732'),
(775, 112, 'project_price', 'Стоимость - 402 000 рублей'),
(776, 112, '_project_price', 'field_5d4c389c2f4b7'),
(777, 112, 'project_images_item_first', '106'),
(778, 112, '_project_images_item_first', 'field_5d4c3948bec1a'),
(779, 112, 'project_images_item_second', '107'),
(780, 112, '_project_images_item_second', 'field_5d4c398bbec1b'),
(783, 113, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(784, 113, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(785, 113, 'project_name', 'House #1'),
(786, 113, '_project_name', 'field_5d4bf5a3266ee'),
(787, 113, 'project_size', ''),
(788, 113, '_project_size', 'field_5d4c37d8fa731'),
(789, 113, 'project_area', 'Общая площадь дома: 54 кв. м'),
(790, 113, '_project_area', 'field_5d4c37eafa732'),
(791, 113, 'project_price', 'Стоимость - 402 000 рублей'),
(792, 113, '_project_price', 'field_5d4c389c2f4b7'),
(793, 113, 'project_images_item_first', '106'),
(794, 113, '_project_images_item_first', 'field_5d4c3948bec1a'),
(795, 113, 'project_images_item_second', '107'),
(796, 113, '_project_images_item_second', 'field_5d4c398bbec1b'),
(799, 114, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(800, 114, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(801, 114, 'project_name', 'House #1'),
(802, 114, '_project_name', 'field_5d4bf5a3266ee'),
(803, 114, 'project_size', ''),
(804, 114, '_project_size', 'field_5d4c37d8fa731'),
(805, 114, 'project_area', ''),
(806, 114, '_project_area', 'field_5d4c37eafa732'),
(807, 114, 'project_price', 'Стоимость - 402 000 рублей'),
(808, 114, '_project_price', 'field_5d4c389c2f4b7'),
(809, 114, 'project_images_item_first', '106'),
(810, 114, '_project_images_item_first', 'field_5d4c3948bec1a'),
(811, 114, 'project_images_item_second', '107'),
(812, 114, '_project_images_item_second', 'field_5d4c398bbec1b'),
(813, 115, '_edit_lock', '1565277990:1'),
(816, 116, 'blog_of_houses', 'vdfvsdfuvsdfvsdfv'),
(817, 116, '_blog_of_houses', 'field_5d4bf5a3266ee'),
(818, 116, 'project_name', 'House #1'),
(819, 116, '_project_name', 'field_5d4bf5a3266ee'),
(820, 116, 'project_size', 'Размер дома: 6 x 6'),
(821, 116, '_project_size', 'field_5d4c37d8fa731'),
(822, 116, 'project_area', 'Общая площадь дома: 54 кв. м'),
(823, 116, '_project_area', 'field_5d4c37eafa732'),
(824, 116, 'project_price', 'Стоимость - 402 000 рублей'),
(825, 116, '_project_price', 'field_5d4c389c2f4b7'),
(826, 116, 'project_images_item_first', '106'),
(827, 116, '_project_images_item_first', 'field_5d4c3948bec1a'),
(828, 116, 'project_images_item_second', '107'),
(829, 116, '_project_images_item_second', 'field_5d4c398bbec1b'),
(830, 117, '_edit_lock', '1565278401:1'),
(831, 118, '_edit_lock', '1565279165:1'),
(832, 119, '_wp_attached_file', '2019/08/project3.jpg'),
(833, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:20:"2019/08/project3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"project3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"project3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"project3-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(834, 120, '_wp_attached_file', '2019/08/project3.2.jpg'),
(835, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1008;s:6:"height";i:512;s:4:"file";s:22:"2019/08/project3.2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"project3.2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"project3.2-300x152.jpg";s:5:"width";i:300;s:6:"height";i:152;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"project3.2-768x390.jpg";s:5:"width";i:768;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(837, 118, '_edit_last', '1'),
(838, 118, '_encloseme', '1'),
(839, 118, 'project_name', 'ДОМ #3'),
(840, 118, '_project_name', 'field_5d4bf5a3266ee'),
(841, 118, 'project_size', 'Размер дома: 8 х 7,5'),
(842, 118, '_project_size', 'field_5d4c37d8fa731'),
(843, 118, 'project_area', 'Общая площадь дома: 92 кв. м'),
(844, 118, '_project_area', 'field_5d4c37eafa732'),
(845, 118, 'project_price', 'Стоимость - 635 000 рублей'),
(846, 118, '_project_price', 'field_5d4c389c2f4b7'),
(847, 118, 'project_images_item_first', '119'),
(848, 118, '_project_images_item_first', 'field_5d4c3948bec1a'),
(849, 118, 'project_images_item_second', '120'),
(850, 118, '_project_images_item_second', 'field_5d4c398bbec1b'),
(851, 122, 'project_name', 'ДОМ #3'),
(852, 122, '_project_name', 'field_5d4bf5a3266ee'),
(853, 122, 'project_size', 'Размер дома: 8 х 7,5'),
(854, 122, '_project_size', 'field_5d4c37d8fa731'),
(855, 122, 'project_area', 'Общая площадь дома: 92 кв. м'),
(856, 122, '_project_area', 'field_5d4c37eafa732'),
(857, 122, 'project_price', 'Стоимость - 635 000 рублей'),
(858, 122, '_project_price', 'field_5d4c389c2f4b7'),
(859, 122, 'project_images_item_first', '119'),
(860, 122, '_project_images_item_first', 'field_5d4c3948bec1a'),
(861, 122, 'project_images_item_second', '120'),
(862, 122, '_project_images_item_second', 'field_5d4c398bbec1b'),
(863, 123, 'site_name', 'timber House'),
(864, 123, '_site_name', 'field_5d4ad2e182d06'),
(865, 123, 'phone_number', '+7 (585) 277-22-17'),
(866, 123, '_phone_number', 'field_5d4ad4d082d07'),
(867, 123, 'main_slogan', 'Дома из бруса под ключ'),
(868, 123, '_main_slogan', 'field_5d4ad51e82d08'),
(869, 123, 'promotion_sale_image', '20'),
(870, 123, '_promotion_sale_image', 'field_5d4ad7d669b44'),
(871, 123, 'background_image', '22'),
(872, 123, '_background_image', 'field_5d4ad9e069b45'),
(873, 123, 'heading', 'Строительство домов и бань из \r\nстроганного и профилированного бруса'),
(874, 123, '_heading', 'field_5d4ae33cbdcaa'),
(875, 123, 'main_text', '<p style="text-align: center;">За 10 лет мы возвели больше 250 домов и бань из бруса</p>\r\n<p style="text-align: center;">ИМЕЕМ БОЛЬШОЙ ОПЫТ В СТРОИТЕЛЬСТВЕ</p>\r\n<p style="text-align: center;">гарантируем качество и надежность всех построенных нами объектов</p>\r\n<p style="text-align: center;"><strong>ГАРАНТИЯ НА ДОМА И БАНИ ИЗ БРУСА 3 ГОДА</strong></p>'),
(876, 123, '_main_text', 'field_5d4ae430bdcab'),
(877, 123, 'gallery', '[gallery columns="4" size="full" ids="33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48" link="file"]'),
(878, 123, '_gallery', 'field_5d4aec838bda1'),
(879, 123, 'gallery_title', 'ФОТОГРАФИИ НАШИХ РАБОТ'),
(880, 123, '_gallery_title', 'field_5d4bab70cf5a6'),
(881, 123, 'gallery_description', 'некоторые фотографии построенных нами домов и бань из бруса'),
(882, 123, '_gallery_description', 'field_5d4babbccf5a7'),
(883, 123, 'contact_email', 'namename@gmail.com'),
(884, 123, '_contact_email', 'field_5d4bafae32adf'),
(885, 123, 'download_link', '58'),
(886, 123, '_download_link', 'field_5d4bb2ec84507'),
(887, 123, 'projects', 'a:3:{i:0;s:1:"1";i:1;s:2:"72";i:2;s:3:"118";}'),
(888, 123, '_projects', 'field_5d4bb8b57dc2a'),
(889, 123, 'project_title', 'ПРОЕКТЫ ДОМОВ ИЗ БРУСА'),
(890, 123, '_project_title', 'field_5d4c3ccf0d7b7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-07 06:19:23', '2019-08-07 06:19:23', '', 'House #1', '', 'publish', 'open', 'open', '', 'house1', '', '', '2019-08-08 15:35:02', '2019-08-08 15:35:02', '', 0, 'http://localhost:8888/wp_house/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-07 06:19:23', '2019-08-07 06:19:23', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-08 15:38:06', '2019-08-08 15:38:06', '', 0, 'http://localhost:8888/wp_house/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-07 06:19:23', '2019-08-07 06:19:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/wp_house.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-08-07 13:14:47', '2019-08-07 13:14:47', '', 0, 'http://localhost:8888/wp_house/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-07 06:19:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-07 06:19:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wp_house/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-07 13:14:47', '2019-08-07 13:14:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/wp_house.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-08-07 13:14:47', '2019-08-07 13:14:47', '', 3, 'http://localhost:8888/wp_house/2019/08/07/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-08-07 13:19:19', '2019-08-07 13:19:19', '<!-- wp:paragraph -->\n<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/wp_house/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Main page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 13:19:19', '2019-08-07 13:19:19', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-08-07 13:28:05', '2019-08-07 13:28:05', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Main page', 'main-page', 'publish', 'closed', 'closed', '', 'group_5d4ad06cbcbd8', '', '', '2019-08-08 15:18:24', '2019-08-08 15:18:24', '', 0, 'http://localhost:8888/wp_house/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2019-08-07 13:28:05', '2019-08-07 13:28:05', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'First display', 'first_display', 'publish', 'closed', 'closed', '', 'field_5d4ad0dd178a4', '', '', '2019-08-07 13:28:05', '2019-08-07 13:28:05', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2019-08-07 13:28:05', '2019-08-07 13:28:05', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Main text', 'main_text', 'publish', 'closed', 'closed', '', 'field_5d4ad146178a5', '', '', '2019-08-07 14:03:12', '2019-08-07 14:03:12', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=9', 6, 'acf-field', '', 0),
(10, 1, '2019-08-07 13:28:05', '2019-08-07 13:28:05', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Projects photos', 'projects_photos', 'publish', 'closed', 'closed', '', 'field_5d4ad193178a6', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=10', 14, 'acf-field', '', 0),
(12, 1, '2019-08-07 13:31:10', '2019-08-07 13:31:10', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 13:31:10', '2019-08-07 13:31:10', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-08-07 13:42:50', '2019-08-07 13:42:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:28:"Write a name of your company";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Site name', 'site_name', 'publish', 'closed', 'closed', '', 'field_5d4ad2e182d06', '', '', '2019-08-07 13:43:50', '2019-08-07 13:43:50', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=13', 1, 'acf-field', '', 0),
(14, 1, '2019-08-07 13:42:50', '2019-08-07 13:42:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:27:"Enter a wished phone number";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'phone number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5d4ad4d082d07', '', '', '2019-08-07 13:43:50', '2019-08-07 13:43:50', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=14', 2, 'acf-field', '', 0),
(15, 1, '2019-08-07 13:42:50', '2019-08-07 13:42:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";i:25;}', 'main slogan', 'main_slogan', 'publish', 'closed', 'closed', '', 'field_5d4ad51e82d08', '', '', '2019-08-07 13:43:50', '2019-08-07 13:43:50', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=15', 3, 'acf-field', '', 0),
(16, 1, '2019-08-07 13:46:39', '2019-08-07 13:46:39', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 13:46:39', '2019-08-07 13:46:39', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-08-07 13:49:01', '2019-08-07 13:49:01', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 13:49:01', '2019-08-07 13:49:01', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-08-07 14:02:52', '2019-08-07 14:02:52', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:53:"Choose an image for sale or promotion of the day/week";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'promotion-sale image', 'promotion_sale_image', 'publish', 'closed', 'closed', '', 'field_5d4ad7d669b44', '', '', '2019-08-07 14:03:12', '2019-08-07 14:03:12', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=18', 4, 'acf-field', '', 0),
(19, 1, '2019-08-07 14:02:52', '2019-08-07 14:02:52', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'background image', 'background_image', 'publish', 'closed', 'closed', '', 'field_5d4ad9e069b45', '', '', '2019-08-07 14:03:12', '2019-08-07 14:03:12', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=19', 5, 'acf-field', '', 0),
(20, 1, '2019-08-07 14:04:40', '2019-08-07 14:04:40', '', 'sale', '', 'inherit', 'open', 'closed', '', 'sale', '', '', '2019-08-07 14:05:16', '2019-08-07 14:05:16', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/sale.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2019-08-07 14:12:49', '2019-08-07 14:12:49', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:12:49', '2019-08-07 14:12:49', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-08-07 14:13:02', '2019-08-07 14:13:02', '', 'header-bg', '', 'inherit', 'open', 'closed', '', 'header-bg', '', '', '2019-08-07 14:13:19', '2019-08-07 14:13:19', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/header-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-08-07 14:13:24', '2019-08-07 14:13:24', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:13:24', '2019-08-07 14:13:24', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-08-07 14:13:28', '2019-08-07 14:13:28', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:13:28', '2019-08-07 14:13:28', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-08-07 14:49:28', '2019-08-07 14:49:28', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:2:"br";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5d4ae33cbdcaa', '', '', '2019-08-07 15:04:14', '2019-08-07 15:04:14', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=25', 7, 'acf-field', '', 0),
(26, 1, '2019-08-07 14:49:28', '2019-08-07 14:49:28', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Main text', 'main_text', 'publish', 'closed', 'closed', '', 'field_5d4ae430bdcab', '', '', '2019-08-07 14:50:08', '2019-08-07 14:50:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=26', 8, 'acf-field', '', 0),
(27, 1, '2019-08-07 14:54:00', '2019-08-07 14:54:00', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:54:00', '2019-08-07 14:54:00', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-08-07 14:54:28', '2019-08-07 14:54:28', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:54:28', '2019-08-07 14:54:28', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-08-07 14:59:41', '2019-08-07 14:59:41', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 14:59:41', '2019-08-07 14:59:41', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-08-07 15:20:49', '2019-08-07 15:20:49', '', 'item-1', '', 'inherit', 'open', 'closed', '', 'item-1', '', '', '2019-08-07 15:20:49', '2019-08-07 15:20:49', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/item-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-08-07 15:23:00', '2019-08-07 15:23:00', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:33:"choose an images for your gallery";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5d4aec838bda1', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=31', 17, 'acf-field', '', 0),
(33, 1, '2019-08-07 15:37:49', '2019-08-07 15:37:49', '', '', ' ', 'inherit', 'open', 'closed', '', 'h1', '', '', '2019-08-07 15:43:56', '2019-08-07 15:43:56', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-08-07 15:37:49', '2019-08-07 15:37:49', '', '', ' ', 'inherit', 'open', 'closed', '', 'h2', '', '', '2019-08-07 15:43:53', '2019-08-07 15:43:53', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-08-07 15:37:50', '2019-08-07 15:37:50', '', '', ' ', 'inherit', 'open', 'closed', '', 'h3', '', '', '2019-08-07 15:43:52', '2019-08-07 15:43:52', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-08-07 15:37:51', '2019-08-07 15:37:51', '', '', ' ', 'inherit', 'open', 'closed', '', 'h4', '', '', '2019-08-07 15:43:49', '2019-08-07 15:43:49', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h4.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-08-07 15:37:51', '2019-08-07 15:37:51', '', '', ' ', 'inherit', 'open', 'closed', '', 'h5', '', '', '2019-08-07 15:43:47', '2019-08-07 15:43:47', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h5.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-08-07 15:37:52', '2019-08-07 15:37:52', '', '', ' ', 'inherit', 'open', 'closed', '', 'h6', '', '', '2019-08-07 15:43:44', '2019-08-07 15:43:44', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h6.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-08-07 15:37:52', '2019-08-07 15:37:52', '', '', ' ', 'inherit', 'open', 'closed', '', 'h7', '', '', '2019-08-07 15:43:22', '2019-08-07 15:43:22', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h7.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-08-07 15:37:53', '2019-08-07 15:37:53', '', '', ' ', 'inherit', 'open', 'closed', '', 'h8', '', '', '2019-08-07 15:43:41', '2019-08-07 15:43:41', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h8.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-08-07 15:37:53', '2019-08-07 15:37:53', '', '', ' ', 'inherit', 'open', 'closed', '', 'h9', '', '', '2019-08-07 15:44:09', '2019-08-07 15:44:09', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h9.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-08-07 15:37:54', '2019-08-07 15:37:54', '', '', ' ', 'inherit', 'open', 'closed', '', 'h10', '', '', '2019-08-07 15:43:29', '2019-08-07 15:43:29', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h10.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-08-07 15:37:54', '2019-08-07 15:37:54', '', '', '  ', 'inherit', 'open', 'closed', '', 'h11', '', '', '2019-08-07 15:43:26', '2019-08-07 15:43:26', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h11.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-08-07 15:37:55', '2019-08-07 15:37:55', '', '', ' ', 'inherit', 'open', 'closed', '', 'h12', '', '', '2019-08-07 15:43:25', '2019-08-07 15:43:25', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h12.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-08-07 15:37:56', '2019-08-07 15:37:56', '', '', '  ', 'inherit', 'open', 'closed', '', 'h13', '', '', '2019-08-07 15:44:04', '2019-08-07 15:44:04', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h13.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-08-07 15:37:56', '2019-08-07 15:37:56', '', '', ' ', 'inherit', 'open', 'closed', '', 'h14', '', '', '2019-08-07 15:44:03', '2019-08-07 15:44:03', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h14.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-08-07 15:37:57', '2019-08-07 15:37:57', '', '', ' ', 'inherit', 'open', 'closed', '', 'h15', '', '', '2019-08-07 15:44:01', '2019-08-07 15:44:01', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h15.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-08-07 15:37:57', '2019-08-07 15:37:57', '', '', ' ', 'inherit', 'open', 'closed', '', 'h16', '', '', '2019-08-07 15:43:58', '2019-08-07 15:43:58', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/h16.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-08-07 15:38:44', '2019-08-07 15:38:44', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-07 15:38:44', '2019-08-07 15:38:44', '', 2, 'http://localhost:8888/wp_house/2019/08/07/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-08-08 04:58:36', '2019-08-08 04:58:36', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Gallery Title', 'gallery_title', 'publish', 'closed', 'closed', '', 'field_5d4bab70cf5a6', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=50', 15, 'acf-field', '', 0),
(51, 1, '2019-08-08 04:58:36', '2019-08-08 04:58:36', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:21:"describe your gallery";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Gallery description', 'gallery_description', 'publish', 'closed', 'closed', '', 'field_5d4babbccf5a7', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=51', 16, 'acf-field', '', 0),
(52, 1, '2019-08-08 05:01:24', '2019-08-08 05:01:24', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 05:01:24', '2019-08-08 05:01:24', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-08-08 05:15:03', '2019-08-08 05:15:03', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Contacts', 'contact_email', 'publish', 'closed', 'closed', '', 'field_5d4baf6632ade', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=53', 18, 'acf-field', '', 0),
(54, 1, '2019-08-08 05:15:03', '2019-08-08 05:15:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:24:"enter your contact email";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'contact email', 'contact_email', 'publish', 'closed', 'closed', '', 'field_5d4bafae32adf', '', '', '2019-08-08 15:17:08', '2019-08-08 15:17:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=54', 19, 'acf-field', '', 0),
(55, 1, '2019-08-08 05:16:35', '2019-08-08 05:16:35', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 05:16:35', '2019-08-08 05:16:35', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-08-08 05:31:34', '2019-08-08 05:31:34', 'a:10:{s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:8:"min_size";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'File of catalog', 'download_link', 'publish', 'closed', 'closed', '', 'field_5d4bb2ec84507', '', '', '2019-08-08 15:18:24', '2019-08-08 15:18:24', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=56', 13, 'acf-field', '', 0),
(57, 1, '2019-08-08 05:32:33', '2019-08-08 05:32:33', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Catalog', 'catalog', 'publish', 'closed', 'closed', '', 'field_5d4bb3cf38d52', '', '', '2019-08-08 15:18:24', '2019-08-08 15:18:24', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=57', 12, 'acf-field', '', 0),
(58, 1, '2019-08-08 05:36:34', '2019-08-08 05:36:34', '', 'regexp', '', 'inherit', 'open', 'closed', '', 'regexp', '', '', '2019-08-08 05:36:34', '2019-08-08 05:36:34', '', 2, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/regexp.pdf', 0, 'attachment', 'application/pdf', 0),
(59, 1, '2019-08-08 05:37:48', '2019-08-08 05:37:48', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 05:37:48', '2019-08-08 05:37:48', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-08-08 05:54:27', '2019-08-08 05:54:27', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'House Projects', 'house_projects', 'publish', 'closed', 'closed', '', 'field_5d4bb89d7dc29', '', '', '2019-08-08 05:55:08', '2019-08-08 05:55:08', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=60', 9, 'acf-field', '', 0),
(61, 1, '2019-08-08 05:54:27', '2019-08-08 05:54:27', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:13:"Choose a post";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:4:"post";}s:8:"taxonomy";s:0:"";s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'field_5d4bb8b57dc2a', '', '', '2019-08-08 15:18:24', '2019-08-08 15:18:24', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=61', 11, 'acf-field', '', 0),
(62, 1, '2019-08-08 10:08:28', '2019-08-08 10:08:28', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 10:08:28', '2019-08-08 10:08:28', '', 1, 'http://localhost:8888/wp_house/2019/08/08/1-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-08-08 10:10:36', '2019-08-08 10:10:36', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 10:10:36', '2019-08-08 10:10:36', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-08-08 10:10:53', '2019-08-08 10:10:53', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 10:10:53', '2019-08-08 10:10:53', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-08-08 10:11:49', '2019-08-08 10:11:49', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 10:11:49', '2019-08-08 10:11:49', '', 2, 'http://localhost:8888/wp_house/2019/08/08/2-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-08-08 10:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-08 10:12:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wp_house/?p=66', 0, 'post', '', 0),
(67, 1, '2019-08-08 10:13:43', '2019-08-08 10:13:43', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Posts', 'posts', 'publish', 'closed', 'closed', '', 'group_5d4bf5948027d', '', '', '2019-08-08 15:32:22', '2019-08-08 15:32:22', '', 0, 'http://localhost:8888/wp_house/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2019-08-08 10:13:43', '2019-08-08 10:13:43', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project name', 'project_name', 'publish', 'closed', 'closed', '', 'field_5d4bf5a3266ee', '', '', '2019-08-08 14:56:26', '2019-08-08 14:56:26', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(70, 1, '2019-08-08 13:05:21', '2019-08-08 13:05:21', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 13:05:21', '2019-08-08 13:05:21', '', 1, 'http://localhost:8888/wp_house/2019/08/08/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-08-08 13:06:36', '2019-08-08 13:06:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 13:06:36', '2019-08-08 13:06:36', '', 1, 'http://localhost:8888/wp_house/2019/08/08/1-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-08-08 13:17:00', '2019-08-08 13:17:00', '', 'House #2', '', 'publish', 'open', 'open', '', 'house-2', '', '', '2019-08-08 15:08:00', '2019-08-08 15:08:00', '', 0, 'http://localhost:8888/wp_house/?p=72', 0, 'post', '', 0),
(73, 1, '2019-08-08 13:16:24', '2019-08-08 13:16:24', '', 'project2', '', 'inherit', 'open', 'closed', '', 'project2', '', '', '2019-08-08 13:16:24', '2019-08-08 13:16:24', '', 72, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-08-08 13:16:57', '2019-08-08 13:16:57', '', 'project2.1', '', 'inherit', 'open', 'closed', '', 'project2-1', '', '', '2019-08-08 13:16:57', '2019-08-08 13:16:57', '', 72, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-08-08 13:17:00', '2019-08-08 13:17:00', '<!-- wp:paragraph -->\n<p> Размер дома: 6 x 7,5<br> Общая площадь дома: 72 кв. <br> Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":73} -->\n<figure class="wp-block-image"><img src="http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.jpg" alt="" class="wp-image-73"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {"id":74} -->\n<figure class="wp-block-image"><img src="http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.1.jpg" alt="" class="wp-image-74"/></figure>\n<!-- /wp:image -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 13:17:00', '2019-08-08 13:17:00', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-08-08 13:18:40', '2019-08-08 13:18:40', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":73} -->\n<figure class="wp-block-image"><img src="http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.jpg" alt="" class="wp-image-73"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {"id":74} -->\n<figure class="wp-block-image"><img src="http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2.1.jpg" alt="" class="wp-image-74"/></figure>\n<!-- /wp:image -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 13:18:40', '2019-08-08 13:18:40', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-08-08 13:19:57', '2019-08-08 13:19:57', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 13:19:57', '2019-08-08 13:19:57', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-08-08 14:47:30', '2019-08-08 14:47:30', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! </p>\n<!-- /wp:paragraph -->', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 14:47:30', '2019-08-08 14:47:30', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-08-08 14:47:56', '2019-08-08 14:47:56', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 14:47:56', '2019-08-08 14:47:56', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-08-08 14:49:11', '2019-08-08 14:49:11', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 14:49:11', '2019-08-08 14:49:11', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-08-08 14:50:07', '2019-08-08 14:50:07', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 14:50:07', '2019-08-08 14:50:07', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-08-08 14:50:40', '2019-08-08 14:50:40', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 14:50:40', '2019-08-08 14:50:40', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-08-08 14:50:54', '2019-08-08 14:50:54', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 14:50:54', '2019-08-08 14:50:54', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-08-08 14:56:26', '2019-08-08 14:56:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:22:"Размер дома:";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project size', 'project_size', 'publish', 'closed', 'closed', '', 'field_5d4c37d8fa731', '', '', '2019-08-08 15:23:42', '2019-08-08 15:23:42', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=84', 1, 'acf-field', '', 0),
(85, 1, '2019-08-08 14:56:26', '2019-08-08 14:56:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:35:"Общая площадь дома:";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project area', 'project_area', 'publish', 'closed', 'closed', '', 'field_5d4c37eafa732', '', '', '2019-08-08 15:26:17', '2019-08-08 15:26:17', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=85', 2, 'acf-field', '', 0),
(86, 1, '2019-08-08 14:58:50', '2019-08-08 14:58:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:20:"Стоимость -";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project price', 'project_price', 'publish', 'closed', 'closed', '', 'field_5d4c389c2f4b7', '', '', '2019-08-08 15:29:17', '2019-08-08 15:29:17', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=86', 3, 'acf-field', '', 0),
(87, 1, '2019-08-08 15:03:24', '2019-08-08 15:03:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Project images item first', 'project_images_item_first', 'publish', 'closed', 'closed', '', 'field_5d4c3948bec1a', '', '', '2019-08-08 15:32:22', '2019-08-08 15:32:22', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=87', 5, 'acf-field', '', 0),
(88, 1, '2019-08-08 15:03:24', '2019-08-08 15:03:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Project images item second', 'project_images_item_second', 'publish', 'closed', 'closed', '', 'field_5d4c398bbec1b', '', '', '2019-08-08 15:32:22', '2019-08-08 15:32:22', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=88', 6, 'acf-field', '', 0),
(89, 1, '2019-08-08 15:04:21', '2019-08-08 15:04:21', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:04:21', '2019-08-08 15:04:21', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-08-08 15:04:24', '2019-08-08 15:04:24', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:04:24', '2019-08-08 15:04:24', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-08-08 15:04:39', '2019-08-08 15:04:39', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:04:39', '2019-08-08 15:04:39', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2019-08-08 15:04:50', '2019-08-08 15:04:50', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:04:50', '2019-08-08 15:04:50', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-08-08 15:05:01', '2019-08-08 15:05:01', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"> Размер дома: 6 x 7,5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Общая площадь дома: 72 кв.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center">Стоимость - 457 000 рублей</p>\n<!-- /wp:paragraph -->', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:05:01', '2019-08-08 15:05:01', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-08-08 15:05:09', '2019-08-08 15:05:09', '', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:05:09', '2019-08-08 15:05:09', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-08-08 15:05:09', '2019-08-08 15:05:09', '', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:05:09', '2019-08-08 15:05:09', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-08-08 15:05:35', '2019-08-08 15:05:35', '', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:05:35', '2019-08-08 15:05:35', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-08-08 15:05:47', '2019-08-08 15:05:47', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 15:05:47', '2019-08-08 15:05:47', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-08-08 15:05:51', '2019-08-08 15:05:51', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 15:05:51', '2019-08-08 15:05:51', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-08-08 15:06:59', '2019-08-08 15:06:59', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Project images', 'project_images', 'publish', 'closed', 'closed', '', 'field_5d4c3a809af51', '', '', '2019-08-08 15:06:59', '2019-08-08 15:06:59', '', 67, 'http://localhost:8888/wp_house/?post_type=acf-field&p=100', 4, 'acf-field', '', 0),
(101, 1, '2019-08-08 15:07:23', '2019-08-08 15:07:23', '', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:07:23', '2019-08-08 15:07:23', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-08-08 15:07:50', '2019-08-08 15:07:50', '', 'project2', '', 'inherit', 'open', 'closed', '', 'project2-2', '', '', '2019-08-08 15:07:50', '2019-08-08 15:07:50', '', 72, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-08-08 15:08:00', '2019-08-08 15:08:00', '', 'House #2', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-08 15:08:00', '2019-08-08 15:08:00', '', 72, 'http://localhost:8888/wp_house/72-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-08-08 15:08:32', '2019-08-08 15:08:32', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 15:08:32', '2019-08-08 15:08:32', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-08-08 15:09:54', '2019-08-08 15:09:54', '', 'project-1', '', 'inherit', 'open', 'closed', '', 'project-1', '', '', '2019-08-08 15:09:54', '2019-08-08 15:09:54', '', 1, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-08-08 15:10:08', '2019-08-08 15:10:08', '', 'project-2', '', 'inherit', 'open', 'closed', '', 'project-2', '', '', '2019-08-08 15:10:08', '2019-08-08 15:10:08', '', 1, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-08-08 15:10:13', '2019-08-08 15:10:13', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:10:13', '2019-08-08 15:10:13', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-08-08 15:10:14', '2019-08-08 15:10:14', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:10:14', '2019-08-08 15:10:14', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-08-08 15:17:08', '2019-08-08 15:17:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Project title', 'project_title', 'publish', 'closed', 'closed', '', 'field_5d4c3ccf0d7b7', '', '', '2019-08-08 15:18:24', '2019-08-08 15:18:24', '', 7, 'http://localhost:8888/wp_house/?post_type=acf-field&#038;p=110', 10, 'acf-field', '', 0),
(111, 1, '2019-08-08 15:19:02', '2019-08-08 15:19:02', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 15:19:02', '2019-08-08 15:19:02', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-08-08 15:23:51', '2019-08-08 15:23:51', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:23:51', '2019-08-08 15:23:51', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-08-08 15:24:18', '2019-08-08 15:24:18', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:24:18', '2019-08-08 15:24:18', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-08-08 15:26:33', '2019-08-08 15:26:33', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:26:33', '2019-08-08 15:26:33', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-08-08 15:27:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-08 15:27:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wp_house/?p=115', 0, 'post', '', 0),
(116, 1, '2019-08-08 15:35:02', '2019-08-08 15:35:02', '', 'House #1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-08 15:35:02', '2019-08-08 15:35:02', '', 1, 'http://localhost:8888/wp_house/1-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-08-08 15:35:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-08 15:35:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wp_house/?p=117', 0, 'post', '', 0),
(118, 1, '2019-08-08 15:37:53', '2019-08-08 15:37:53', '', 'House #3', '', 'publish', 'open', 'open', '', 'house-3', '', '', '2019-08-08 15:37:54', '2019-08-08 15:37:54', '', 0, 'http://localhost:8888/wp_house/?p=118', 0, 'post', '', 0),
(119, 1, '2019-08-08 15:37:31', '2019-08-08 15:37:31', '', 'project3', '', 'inherit', 'open', 'closed', '', 'project3', '', '', '2019-08-08 15:37:31', '2019-08-08 15:37:31', '', 118, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project3.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-08-08 15:37:44', '2019-08-08 15:37:44', '', 'project3.2', '', 'inherit', 'open', 'closed', '', 'project3-2', '', '', '2019-08-08 15:37:44', '2019-08-08 15:37:44', '', 118, 'http://localhost:8888/wp_house/wp-content/uploads/2019/08/project3.2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-08-08 15:37:53', '2019-08-08 15:37:53', '', 'House #3', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-08-08 15:37:53', '2019-08-08 15:37:53', '', 118, 'http://localhost:8888/wp_house/118-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-08-08 15:37:54', '2019-08-08 15:37:54', '', 'House #3', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-08-08 15:37:54', '2019-08-08 15:37:54', '', 118, 'http://localhost:8888/wp_house/118-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-08-08 15:38:06', '2019-08-08 15:38:06', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-08 15:38:06', '2019-08-08 15:38:06', '', 2, 'http://localhost:8888/wp_house/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(72, 1, 0),
(118, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"3384d5a826ca15a614cb9e5514eaa800d700bc3485b06705d751944d1f96d994";a:4:{s:10:"expiration";i:1565331591;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36";s:5:"login";i:1565158791;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:0:{}'),
(20, 1, 'meta-box-order_page', 'a:4:{s:6:"normal";s:23:"acf-group_5d4ad06cbcbd8";s:15:"acf_after_title";s:0:"";s:4:"side";s:0:"";s:8:"advanced";s:0:"";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1565189977');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bef7wtmKu0V5wpn/lHu1CLzGuemWwf1', 'admin', 'mr.tkach.a@gmail.com', '', '2019-08-07 06:19:23', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=891;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
