-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:8889
-- Generation Time: Jul 28, 2017 at 12:00 PM
-- Server version: 5.6.34-log
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `agentes`
--

CREATE TABLE IF NOT EXISTS `agentes` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `deletado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_cadastro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condominio_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agentes`
--

INSERT INTO `agentes` (`id`, `nome`, `telefone`, `usuario`, `senha`, `ativo`, `deletado`, `data_cadastro`, `condominio_id`) VALUES
(1, 'João Santos', '91999858774', 'joao.santos', '12345', 0, '1', '2017-07-11', 1),
(2, 'Manoel Oliveira', '91999858774', 'manoel.oliveira', '12345', 1, '0', '2017-07-11', 1),
(3, 'João Santos', '91999858774', 'joao.santos', '12345', 1, '0', '2017-07-11', 2),
(4, NULL, NULL, NULL, NULL, NULL, '0', '2017-07-14', 1),
(7, NULL, NULL, NULL, NULL, 0, '1', '2017-07-14', 1),
(8, NULL, NULL, NULL, NULL, 0, '1', '2017-07-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `condominios`
--

CREATE TABLE IF NOT EXISTS `condominios` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsavel_nome` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsavel_telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portaria_telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_nome` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_cnpj` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `deletado` int(11) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condominios`
--

INSERT INTO `condominios` (`id`, `nome`, `endereco`, `bairro`, `complemento`, `cidade`, `estado`, `cep`, `responsavel_nome`, `responsavel_telefone`, `portaria_telefone`, `empresa_nome`, `empresa_telefone`, `empresa_cnpj`, `usuario`, `senha`, `ativo`, `deletado`, `data_cadastro`) VALUES
(1, 'Condominio 01', 'TV ENÉAS PINHEIRO', 'Marco', 'Px à RBA', 'BELÉM', 'Pará', '66095-130', 'João Oliveira', '999858774', '91999858774', 'Adminio', '91999858774', '12.345.678/9101-11', 'joao.oliveira', NULL, 0, 0, '2017-07-11'),
(2, 'Condominio 02', 'Endereço do  Condominio 02', 'Bairro do Condominio 02', 'Complemento do Condominio 02', 'BELÉM', 'Pará', '68635222', '9132650254', '999858774', '91999858774', 'Adminio', '91999858774', '12.345.678/9101-11', 'condominio02', '456', 1, 0, '2017-07-17'),
(3, 'Condominio 03', 'Rua Padre José De Acnchieta, 48', 'Centro', NULL, 'São Domingos do Capim', 'PA', '68635000', 'Benedito Raiol', '91999858774', '91999858774', NULL, NULL, NULL, 'condominio03', '123456', 1, 0, '2017-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `liberacoes`
--

CREATE TABLE IF NOT EXISTS `liberacoes` (
  `id` int(10) unsigned NOT NULL,
  `tipo_liberacao` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome_visita` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `possui_veiculo` int(11) DEFAULT NULL,
  `tipo_veiculo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantidade_veiculo` int(11) DEFAULT NULL,
  `observacao` longtext COLLATE utf8mb4_unicode_ci,
  `data_cadastro` date DEFAULT NULL,
  `hora_cadastro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_liberacao` date DEFAULT NULL,
  `hora_liberacao` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidade_id` int(10) unsigned DEFAULT NULL,
  `agente_id` int(10) unsigned DEFAULT NULL,
  `condominio_id` int(11) DEFAULT NULL,
  `deletado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liberacoes`
--

INSERT INTO `liberacoes` (`id`, `tipo_liberacao`, `nome_visita`, `possui_veiculo`, `tipo_veiculo`, `quantidade_veiculo`, `observacao`, `data_cadastro`, `hora_cadastro`, `status`, `data_liberacao`, `hora_liberacao`, `unidade_id`, `agente_id`, `condominio_id`, `deletado`) VALUES
(1, 'Visitante', 'Ester Lopes', 1, 'Carro', 2, 'blabláblá', '2017-07-12', '12:54:33', '1', NULL, NULL, 1, NULL, 1, 0),
(2, 'Visitante', 'teste', 0, NULL, NULL, 'ee', '2017-07-12', '20:02:06', '1', NULL, NULL, 1, NULL, 1, 0),
(3, 'Visitante', 'ESTER', 0, NULL, NULL, NULL, '2017-07-13', '11:06:23', '1', NULL, NULL, 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_10_31_162633_scaffoldinterfaces', 1),
(4, '2017_07_11_124647_create_permission_tables', 1),
(5, '2017_07_11_011425_condominios', 2),
(6, '2017_07_11_030459_agentes', 3),
(7, '2017_07_11_072227_unidades', 4),
(8, '2017_07_12_114049_liberacaos', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('krissiamlm@gmail.com', '$2y$10$OCOgQpX8we5pdJj0LmzSnuw.WZkXCx7lDx9lTyaXTEMLmrqtqIXUS', '2017-07-14 14:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scaffoldinterfaces`
--

CREATE TABLE IF NOT EXISTS `scaffoldinterfaces` (
  `id` int(10) unsigned NOT NULL,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scaffoldinterfaces`
--

INSERT INTO `scaffoldinterfaces` (`id`, `package`, `migration`, `model`, `controller`, `views`, `tablename`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'C:\\MAMP\\htdocs\\laravel\\portapp\\database/migrations/2017_07_11_011425_condominios.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Condominio.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Http/Controllers/CondominioController.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\resources/views/condominio', 'condominios', '2017-07-11 16:14:25', '2017-07-11 16:14:25'),
(2, 'Laravel', 'C:\\MAMP\\htdocs\\laravel\\portapp\\database/migrations/2017_07_11_030459_agentes.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Agente.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Http/Controllers/AgenteController.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\resources/views/agente', 'agentes', '2017-07-11 18:04:59', '2017-07-11 18:04:59'),
(3, 'Laravel', 'C:\\MAMP\\htdocs\\laravel\\portapp\\database/migrations/2017_07_11_072227_unidades.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Unidade.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Http/Controllers/UnidadeController.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\resources/views/unidade', 'unidades', '2017-07-11 22:22:27', '2017-07-11 22:22:27'),
(4, 'Laravel', 'C:\\MAMP\\htdocs\\laravel\\portapp\\database/migrations/2017_07_12_114049_liberacaos.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Liberacao.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\app/Http/Controllers/LiberacaoController.php', 'C:\\MAMP\\htdocs\\laravel\\portapp\\resources/views/liberacao', 'liberacaos', '2017-07-12 14:40:49', '2017-07-12 14:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id` int(10) unsigned NOT NULL,
  `unidade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloco` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsavel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `deletado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `condominio_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unidades`
--

INSERT INTO `unidades` (`id`, `unidade`, `bloco`, `responsavel`, `telefone`, `usuario`, `senha`, `ativo`, `deletado`, `data_cadastro`, `condominio_id`) VALUES
(1, '107', '1', 'Manoel Oliveira', '91999858774', 'manoel.oliveira', '1234', 0, '0', '2017-07-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'krissiamlm@gmail.com', '$2y$10$QzUyt3./tTQHd4CFEQXCW.1pO7UfWt/lZgPN1vi4YKfeDuXZ6HM.K', 'j1ASCtIG9tSo6XCEHco5x0uDgFSsgShiNTSRG9bhyTJSgE06moVbwwP3wK4q', '2017-07-11 16:37:36', '2017-07-12 20:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE IF NOT EXISTS `user_has_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE IF NOT EXISTS `user_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agentes_condominio_id_foreign` (`condominio_id`);

--
-- Indexes for table `condominios`
--
ALTER TABLE `condominios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liberacoes`
--
ALTER TABLE `liberacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liberacaos_unidade_id_foreign` (`unidade_id`),
  ADD KEY `liberacaos_agente_id_foreign` (`agente_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scaffoldinterfaces`
--
ALTER TABLE `scaffoldinterfaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidades_condominio_id_foreign` (`condominio_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agentes`
--
ALTER TABLE `agentes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `condominios`
--
ALTER TABLE `condominios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `liberacoes`
--
ALTER TABLE `liberacoes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `scaffoldinterfaces`
--
ALTER TABLE `scaffoldinterfaces`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `agentes`
--
ALTER TABLE `agentes`
  ADD CONSTRAINT `agentes_condominio_id_foreign` FOREIGN KEY (`condominio_id`) REFERENCES `condominios` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `liberacoes`
--
ALTER TABLE `liberacoes`
  ADD CONSTRAINT `liberacaos_agente_id_foreign` FOREIGN KEY (`agente_id`) REFERENCES `agentes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `liberacaos_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_condominio_id_foreign` FOREIGN KEY (`condominio_id`) REFERENCES `condominios` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
