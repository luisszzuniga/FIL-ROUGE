-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 17 mars 2022 à 17:40
-- Version du serveur : 5.7.33
-- Version de PHP : 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pasta`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, '2022-03-15 22:33:08', '2022-03-15 22:33:08');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nos Incontournables', '2022-03-11 13:07:03', '2022-03-11 13:07:03'),
(2, 'Nos Recettes de Nouilles', '2022-03-11 13:46:55', '2022-03-11 13:46:55'),
(3, 'Nos Salades de Pâtes', '2022-03-11 13:51:13', '2022-03-11 13:51:13'),
(4, 'Nos Recettes Véganes', '2022-03-11 13:54:02', '2022-03-11 13:54:02'),
(5, 'Nos Desserts', '2022-03-11 13:55:47', '2022-03-11 13:55:47');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iframe_url` text COLLATE utf8mb4_unicode_ci,
  `open` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `day`, `iframe_url`, `open`, `created_at`, `updated_at`) VALUES
(1, 'Lundi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 1, NULL, NULL),
(2, 'Mardi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 1, NULL, NULL),
(3, 'Mercredi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 1, NULL, '2022-03-14 21:34:32'),
(4, 'Jeudi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 1, NULL, NULL),
(5, 'Vendredi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 1, NULL, NULL),
(6, 'Samedi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 0, NULL, NULL),
(7, 'Dimanche', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.6150700545627!2d-1.6797236841795204!3d48.09836956186962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9afc3473af0c6a7d!2zNDjCsDA1JzU0LjEiTiAxwrA0MCczOS4xIlc!5e0!3m2!1sfr!2sfr!4v1647173356338!5m2!1sfr!2sfr', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Plate', 1, '11efc122-4136-4029-bac1-51c4e7e51bd6', 'default', 'php3311', 'php3311.tmp', 'image/jpeg', 'public', 'public', 132706, '[]', '[]', '[]', '[]', 1, '2022-03-11 13:08:34', '2022-03-11 13:08:34'),
(2, 'App\\Models\\Plate', 2, '46741d18-19bd-48d9-a60c-a1dc2123bd41', 'default', 'php8B83', 'php8B83.tmp', 'image/jpeg', 'public', 'public', 148885, '[]', '[]', '[]', '[]', 2, '2022-03-11 13:08:56', '2022-03-11 13:08:56'),
(3, 'App\\Models\\Plate', 3, '31e3b71c-3aa1-48db-b83e-f3e12175018d', 'default', 'php76A', 'php76A.tmp', 'image/jpeg', 'public', 'public', 173081, '[]', '[]', '[]', '[]', 3, '2022-03-11 13:09:28', '2022-03-11 13:09:28'),
(4, 'App\\Models\\Plate', 4, 'a26971a5-ef59-46d1-8c28-4658623f6c58', 'default', 'php4E77', 'php4E77.tmp', 'image/jpeg', 'public', 'public', 99921, '[]', '[]', '[]', '[]', 4, '2022-03-11 13:09:46', '2022-03-11 13:09:46'),
(5, 'App\\Models\\Plate', 5, 'a34ce5b2-a6ab-4a83-b206-e6a86600c2b7', 'default', 'phpBAFD', 'phpBAFD.tmp', 'image/jpeg', 'public', 'public', 80398, '[]', '[]', '[]', '[]', 5, '2022-03-11 13:10:14', '2022-03-11 13:10:14'),
(6, 'App\\Models\\Plate', 6, '28bcbe09-2d9a-45a8-a46c-cd58b11f3e86', 'default', 'phpFCF9', 'phpFCF9.tmp', 'image/jpeg', 'public', 'public', 37460, '[]', '[]', '[]', '[]', 6, '2022-03-11 13:10:31', '2022-03-11 13:10:31'),
(7, 'App\\Models\\Plate', 7, '7766826f-7412-4490-9f25-d057c38d9469', 'default', 'phpE1DB', 'phpE1DB.tmp', 'image/jpeg', 'public', 'public', 42925, '[]', '[]', '[]', '[]', 7, '2022-03-11 13:47:32', '2022-03-11 13:47:32'),
(8, 'App\\Models\\Plate', 8, 'c405196f-05dd-49d0-a406-88de77effbf2', 'default', 'php3674', 'php3674.tmp', 'image/jpeg', 'public', 'public', 257754, '[]', '[]', '[]', '[]', 8, '2022-03-11 13:47:54', '2022-03-11 13:47:54'),
(9, 'App\\Models\\Plate', 9, 'e6c8e15e-3cf1-41e5-82d9-af6328d5cc8a', 'default', 'php7A83', 'php7A83.tmp', 'image/jpeg', 'public', 'public', 50095, '[]', '[]', '[]', '[]', 9, '2022-03-11 13:48:11', '2022-03-11 13:48:11'),
(10, 'App\\Models\\Plate', 10, '7d979fa9-aafb-44ea-99db-056e52117524', 'default', 'phpDE9D', 'phpDE9D.tmp', 'image/jpeg', 'public', 'public', 101638, '[]', '[]', '[]', '[]', 10, '2022-03-11 13:48:37', '2022-03-11 13:48:37'),
(11, 'App\\Models\\Plate', 11, 'aab3d742-fe10-4ab2-ae3d-a4f8a60462e3', 'default', 'phpC616', 'phpC616.tmp', 'image/jpeg', 'public', 'public', 763292, '[]', '[]', '[]', '[]', 11, '2022-03-11 13:51:47', '2022-03-11 13:51:47'),
(12, 'App\\Models\\Plate', 12, 'e85840ad-aa57-4ae5-a5ad-ec623fc55197', 'default', 'php227F', 'php227F.tmp', 'image/jpeg', 'public', 'public', 117070, '[]', '[]', '[]', '[]', 12, '2022-03-11 13:52:11', '2022-03-11 13:52:11'),
(13, 'App\\Models\\Plate', 13, 'aca2848d-3c85-45bd-8ca3-73464348975a', 'default', 'php831F', 'php831F.tmp', 'image/jpeg', 'public', 'public', 168914, '[]', '[]', '[]', '[]', 13, '2022-03-11 13:52:36', '2022-03-11 13:52:36'),
(14, 'App\\Models\\Plate', 14, '5544d680-a531-4250-bb57-9bb09977f86b', 'default', 'php948', 'php948.tmp', 'image/jpeg', 'public', 'public', 70622, '[]', '[]', '[]', '[]', 14, '2022-03-11 13:53:10', '2022-03-11 13:53:10'),
(15, 'App\\Models\\Plate', 15, '3f58fb4c-d528-4f0f-8153-3617d966578f', 'default', 'php1CDB', 'php1CDB.tmp', 'image/jpeg', 'public', 'public', 132706, '[]', '[]', '[]', '[]', 15, '2022-03-11 13:54:20', '2022-03-11 13:54:20'),
(16, 'App\\Models\\Plate', 16, '112a2bba-eab3-4244-a7ff-9c1bca1b6419', 'default', 'php83E3', 'php83E3.tmp', 'image/jpeg', 'public', 'public', 173081, '[]', '[]', '[]', '[]', 16, '2022-03-11 13:54:47', '2022-03-11 13:54:47'),
(17, 'App\\Models\\Plate', 17, '6e69913f-c15a-4b86-a7a8-26e237d51043', 'default', 'phpCB1F', 'phpCB1F.tmp', 'image/jpeg', 'public', 'public', 70622, '[]', '[]', '[]', '[]', 17, '2022-03-11 13:55:05', '2022-03-11 13:55:05'),
(18, 'App\\Models\\Plate', 18, '640129ff-a7ce-42bb-b060-26efc299bfd0', 'default', 'php26CD', 'php26CD.tmp', 'image/jpeg', 'public', 'public', 117070, '[]', '[]', '[]', '[]', 18, '2022-03-11 13:55:29', '2022-03-11 13:55:29'),
(19, 'App\\Models\\Plate', 19, '5f53f0f2-f640-494d-865c-b11218b05ccf', 'default', 'phpAED5', 'phpAED5.tmp', 'image/png', 'public', 'public', 83963, '[]', '[]', '[]', '[]', 19, '2022-03-11 13:57:09', '2022-03-11 13:57:09'),
(20, 'App\\Models\\Plate', 20, '94c0f79e-9a8d-4f88-a439-871a60615b91', 'default', 'phpECAA', 'phpECAA.tmp', 'image/jpeg', 'public', 'public', 96245, '[]', '[]', '[]', '[]', 20, '2022-03-11 13:57:25', '2022-03-11 13:57:25'),
(21, 'App\\Models\\Plate', 21, '8e36add2-0067-41eb-905f-e2418e4f9123', 'default', 'php209C', 'php209C.tmp', 'image/jpeg', 'public', 'public', 166993, '[]', '[]', '[]', '[]', 21, '2022-03-11 13:57:38', '2022-03-11 13:57:38'),
(22, 'App\\Models\\Plate', 22, 'f3053eb6-bb6a-4e58-81f8-4949469b4bbc', 'default', 'php4B37', 'php4B37.tmp', 'image/jpeg', 'public', 'public', 115018, '[]', '[]', '[]', '[]', 22, '2022-03-11 13:57:49', '2022-03-11 13:57:49'),
(23, 'App\\Models\\Photo', 1, '43196d43-9d71-428a-880b-75f652ac5d26', 'default', 'php3F21', 'php3F21.tmp', 'image/jpeg', 'public', 'public', 37460, '[]', '[]', '[]', '[]', 23, '2022-03-13 10:52:54', '2022-03-13 10:52:54'),
(24, 'App\\Models\\Photo', 2, 'ad15a7d4-bbad-4d2c-b440-d060574eb67f', 'default', 'php58EF', 'php58EF.tmp', 'image/jpeg', 'public', 'public', 117070, '[]', '[]', '[]', '[]', 24, '2022-03-13 10:54:06', '2022-03-13 10:54:06'),
(25, 'App\\Models\\Photo', 3, '40f18536-1198-43bf-919c-603e0a595c3e', 'default', 'phpDB4A', 'phpDB4A.tmp', 'image/jpeg', 'public', 'public', 80398, '[]', '[]', '[]', '[]', 25, '2022-03-13 10:55:45', '2022-03-13 10:55:45'),
(26, 'App\\Models\\Photo', 4, '4430ceca-1952-4f03-a5c5-fe0d7bf04097', 'default', 'phpB27E', 'phpB27E.tmp', 'image/jpeg', 'public', 'public', 166993, '[]', '[]', '[]', '[]', 26, '2022-03-13 11:01:02', '2022-03-13 11:01:02'),
(27, 'App\\Models\\Photo', 5, '055e7153-ffb1-49f4-b618-afc634fa89a1', 'default', 'phpC2AB', 'phpC2AB.tmp', 'image/jpeg', 'public', 'public', 763292, '[]', '[]', '[]', '[]', 27, '2022-03-13 11:01:06', '2022-03-13 11:01:06');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_07_111129_create_sessions_table', 1),
(7, '2022_01_07_125035_create_plates_table', 1),
(8, '2022_01_07_125220_create_plate_sizes_table', 1),
(9, '2022_01_07_125241_create_plate_plate_sizes_table', 1),
(10, '2022_01_07_125308_create_locations_table', 1),
(11, '2022_01_07_130550_create_media_table', 1),
(12, '2022_01_07_135645_create_admins_table', 1),
(13, '2022_02_04_085718_create_categories_table', 1),
(14, '2022_03_02_140322_photos', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `name`, `position`, `created_at`, `updated_at`) VALUES
(1, 'pâtes', 2, '2022-03-13 10:52:54', '2022-03-13 11:01:16'),
(2, 'aaa', 3, '2022-03-13 10:54:06', '2022-03-13 11:01:16'),
(3, 'ffgdfgdfg', 4, '2022-03-13 10:55:45', '2022-03-13 11:01:16'),
(4, 'd', 1, '2022-03-13 11:01:02', '2022-03-13 11:01:16'),
(5, 'q', 5, '2022-03-13 11:01:06', '2022-03-13 11:01:16');

-- --------------------------------------------------------

--
-- Structure de la table `plates`
--

CREATE TABLE `plates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plates`
--

INSERT INTO `plates` (`id`, `name`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Spaghettis à la bolognaise', 'Ingrédients: ............', 1, '2022-03-11 13:08:34', '2022-03-11 13:08:34'),
(2, 'Spaghettis à la carbonara', 'Ingrédients: ............', 1, '2022-03-11 13:08:56', '2022-03-11 13:08:56'),
(3, 'Tagliatelles au pesto', 'Ingrédients: ............', 1, '2022-03-11 13:09:28', '2022-03-11 13:09:28'),
(4, 'Tagliatelles au saumon', 'Ingrédients: ............', 1, '2022-03-11 13:09:46', '2022-03-11 13:09:46'),
(5, 'Pennes à la crème et aux champignons', 'Ingrédients: ............', 1, '2022-03-11 13:10:14', '2022-03-11 13:10:14'),
(6, 'Pennes à la crème et émincés de dinde', 'Ingrédients: ............', 1, '2022-03-11 13:10:31', '2022-03-11 13:10:31'),
(7, 'Nouilles chinoises au Boeuf', 'Ingrédients: ............', 2, '2022-03-11 13:47:32', '2022-03-11 13:47:32'),
(8, 'Nouilles chinoises au Poulet', 'Ingrédients: ............', 2, '2022-03-11 13:47:54', '2022-03-11 13:47:54'),
(9, 'Nouilles chinoises au Curry', 'Ingrédients: ............', 2, '2022-03-11 13:48:11', '2022-03-11 13:48:11'),
(10, 'Nouilles chinoises aux Légumes et aux épices', 'Ingrédients: ............', 2, '2022-03-11 13:48:37', '2022-03-11 13:48:37'),
(11, 'Salade de pâtes au Thon', 'Ingrédients: ............', 3, '2022-03-11 13:51:47', '2022-03-11 13:51:47'),
(12, 'Salade de pâtes au Jambon cru', 'Ingrédients: ............', 3, '2022-03-11 13:52:11', '2022-03-11 13:52:11'),
(13, 'Salade de pâtes au Poulet rôti', 'Ingrédients: ............', 3, '2022-03-11 13:52:36', '2022-03-11 13:52:36'),
(14, 'Salade de pâtes au Chèvre et Tomates', 'Ingrédients: ............', 3, '2022-03-11 13:53:10', '2022-03-11 13:53:10'),
(15, 'Spaghettis à la sauce bolognaise', 'Ingrédients: ............', 4, '2022-03-11 13:54:20', '2022-03-11 13:54:20'),
(16, 'Tagliatelles aux champignons et crème soja', 'Ingrédients: ............', 4, '2022-03-11 13:54:47', '2022-03-11 13:54:47'),
(17, 'Pennes aux épinards et tomates', 'Ingrédients: ............', 4, '2022-03-11 13:55:05', '2022-03-11 13:55:05'),
(18, 'Salade de pâtes tomates et maïs', 'Ingrédients: ............', 4, '2022-03-11 13:55:29', '2022-03-11 13:55:29'),
(19, 'Tiramisu', 'Ingrédients: ............', 5, '2022-03-11 13:57:09', '2022-03-11 13:57:09'),
(20, 'Cookie', 'Ingrédients: ............', 5, '2022-03-11 13:57:25', '2022-03-11 13:57:25'),
(21, 'Mousse au chocolat', 'Ingrédients: ............', 5, '2022-03-11 13:57:38', '2022-03-11 13:57:38'),
(22, 'Muffin', 'Ingrédients: ............', 5, '2022-03-11 13:57:49', '2022-03-11 13:57:49');

-- --------------------------------------------------------

--
-- Structure de la table `plate_plate_size`
--

CREATE TABLE `plate_plate_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plate_id` int(11) NOT NULL,
  `plate_size_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plate_plate_size`
--

INSERT INTO `plate_plate_size` (`id`, `plate_id`, `plate_size_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6.00, NULL, NULL),
(2, 1, 2, 7.00, NULL, NULL),
(3, 1, 3, 8.00, NULL, NULL),
(4, 2, 1, 6.00, NULL, NULL),
(5, 2, 2, 7.00, NULL, NULL),
(6, 2, 3, 8.00, NULL, NULL),
(7, 3, 1, 6.00, NULL, NULL),
(8, 3, 2, 7.00, NULL, NULL),
(9, 3, 3, 8.00, NULL, NULL),
(10, 4, 1, 6.00, NULL, NULL),
(11, 4, 2, 7.00, NULL, NULL),
(12, 4, 3, 8.00, NULL, NULL),
(13, 5, 1, 6.00, NULL, NULL),
(14, 5, 2, 7.00, NULL, NULL),
(15, 5, 3, 8.00, NULL, NULL),
(16, 6, 1, 6.00, NULL, NULL),
(17, 6, 2, 7.00, NULL, NULL),
(18, 6, 3, 8.00, NULL, NULL),
(19, 7, 1, 6.00, NULL, NULL),
(20, 7, 2, 7.00, NULL, NULL),
(21, 7, 3, 8.00, NULL, NULL),
(22, 8, 1, 6.00, NULL, NULL),
(23, 8, 2, 7.00, NULL, NULL),
(24, 8, 3, 8.00, NULL, NULL),
(25, 9, 1, 6.00, NULL, NULL),
(26, 9, 2, 7.00, NULL, NULL),
(27, 9, 3, 8.00, NULL, NULL),
(28, 10, 1, 6.00, NULL, NULL),
(29, 10, 2, 7.00, NULL, NULL),
(30, 10, 3, 8.00, NULL, NULL),
(31, 11, 1, 6.00, NULL, NULL),
(32, 11, 2, 7.00, NULL, NULL),
(33, 11, 3, 8.00, NULL, NULL),
(34, 12, 1, 6.00, NULL, NULL),
(35, 12, 2, 7.00, NULL, NULL),
(36, 12, 3, 8.00, NULL, NULL),
(37, 13, 1, 6.00, NULL, NULL),
(38, 13, 2, 7.00, NULL, NULL),
(39, 13, 3, 8.00, NULL, NULL),
(40, 14, 1, 6.00, NULL, NULL),
(41, 14, 2, 7.00, NULL, NULL),
(42, 14, 3, 8.00, NULL, NULL),
(43, 15, 1, 6.00, NULL, NULL),
(44, 15, 2, 7.00, NULL, NULL),
(45, 15, 3, 8.00, NULL, NULL),
(46, 16, 1, 6.00, NULL, NULL),
(47, 16, 2, 7.00, NULL, NULL),
(48, 16, 3, 8.00, NULL, NULL),
(49, 17, 1, 6.00, NULL, NULL),
(50, 17, 2, 7.00, NULL, NULL),
(51, 17, 3, 8.00, NULL, NULL),
(52, 18, 1, 6.00, NULL, NULL),
(53, 18, 2, 7.00, NULL, NULL),
(54, 18, 3, 8.00, NULL, NULL),
(55, 19, 2, 4.00, NULL, NULL),
(56, 20, 2, 2.00, NULL, NULL),
(57, 21, 2, 4.00, NULL, NULL),
(58, 22, 2, 3.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `plate_sizes`
--

CREATE TABLE `plate_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plate_sizes`
--

INSERT INTO `plate_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2022-03-11 13:07:18', '2022-03-11 13:07:18'),
(2, 'M', '2022-03-11 13:07:22', '2022-03-11 13:07:22'),
(3, 'L', '2022-03-11 13:07:25', '2022-03-11 13:07:25');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DBEEpHxmAFI8JWVsw37PqdUn6QjhwL8CIuNdBRC2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT3kxVElTMlFvdTJVQVl0bWh1a09hOFZNa2dqWlYwZktMVjFMSVJraCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkVFI5Q1BpUUdDbVJtVWhwSVVFN1VrLk9JMFI5RUJKbUozdDZCcjZ3eFRvWUFYMmZ4di9mVzYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFRSOUNQaVFHQ21SbVVocElVRTdVay5PSTBSOUVCSm1KM3Q2QnI2d3hUb1lBWDJmeHYvZlc2Ijt9', 1647459604),
('pR2KctsWJ6diT4QcGd6KkbVxTBQehpwmWT74XmQL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRFVwNFBvNlRWSDdBakY2ZTZVQlVMSzRybHNINWhhR3c4QjNwYVVzWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1647457241),
('x9VWOCGXJ3cRLYPJhXVrkUxp8HokJu6yQTDlbieu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidTRxNmhBNUJqbkdkY1JkS2p1dGYzMzZDbUpjaXg2b09nMGthSk5jeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUUjlDUGlRR0NtUm1VaHBJVUU3VWsuT0kwUjlFQkptSjN0NkJyNnd4VG9ZQVgyZnh2L2ZXNiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVFI5Q1BpUUdDbVJtVWhwSVVFN1VrLk9JMFI5RUJKbUozdDZCcjZ3eFRvWUFYMmZ4di9mVzYiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO319', 1647387216);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loyalty_points` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `loyalty_points`, `created_at`, `updated_at`) VALUES
(1, 'Luis', 'luiszu7779@gmail.com', NULL, '$2y$10$TR9CPiQGCmRmUhpIUE7Uk.OI0R9EBJmJ3t6Br6wxToYAX2fxv/fW6', NULL, NULL, NULL, NULL, NULL, 7, '2022-03-06 11:33:00', '2022-03-15 22:06:35'),
(2, 'test', 'test@test.com', NULL, '$2y$10$BLzXPstbgY.BBjZdS/IQO.SmaERS6dpMKX0AxhuiwjDsGlLXa07Ae', NULL, NULL, NULL, NULL, NULL, 0, '2022-03-15 22:27:41', '2022-03-15 22:27:41');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plates`
--
ALTER TABLE `plates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plate_plate_size`
--
ALTER TABLE `plate_plate_size`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plate_sizes`
--
ALTER TABLE `plate_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `plates`
--
ALTER TABLE `plates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `plate_plate_size`
--
ALTER TABLE `plate_plate_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `plate_sizes`
--
ALTER TABLE `plate_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
