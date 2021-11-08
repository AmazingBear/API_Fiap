-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2021 às 12:43
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_fiap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add aluno', 7, 'add_aluno'),
(26, 'Can change aluno', 7, 'change_aluno'),
(27, 'Can delete aluno', 7, 'delete_aluno'),
(28, 'Can view aluno', 7, 'view_aluno'),
(29, 'Can add assinatura', 8, 'add_assinatura'),
(30, 'Can change assinatura', 8, 'change_assinatura'),
(31, 'Can delete assinatura', 8, 'delete_assinatura'),
(32, 'Can view assinatura', 8, 'view_assinatura'),
(33, 'Can add colaborador', 9, 'add_colaborador'),
(34, 'Can change colaborador', 9, 'change_colaborador'),
(35, 'Can delete colaborador', 9, 'delete_colaborador'),
(36, 'Can view colaborador', 9, 'view_colaborador'),
(37, 'Can add fiap', 10, 'add_fiap'),
(38, 'Can change fiap', 10, 'change_fiap'),
(39, 'Can delete fiap', 10, 'delete_fiap'),
(40, 'Can view fiap', 10, 'view_fiap'),
(41, 'Can add turma', 11, 'add_turma'),
(42, 'Can change turma', 11, 'change_turma'),
(43, 'Can delete turma', 11, 'delete_turma'),
(44, 'Can view turma', 11, 'view_turma'),
(45, 'Can add ocorrencia', 12, 'add_ocorrencia'),
(46, 'Can change ocorrencia', 12, 'change_ocorrencia'),
(47, 'Can delete ocorrencia', 12, 'delete_ocorrencia'),
(48, 'Can view ocorrencia', 12, 'view_ocorrencia'),
(49, 'Can add observacao', 13, 'add_observacao'),
(50, 'Can change observacao', 13, 'change_observacao'),
(51, 'Can delete observacao', 13, 'delete_observacao'),
(52, 'Can view observacao', 13, 'view_observacao'),
(53, 'Can add materia', 14, 'add_materia'),
(54, 'Can change materia', 14, 'change_materia'),
(55, 'Can delete materia', 14, 'delete_materia'),
(56, 'Can view materia', 14, 'view_materia'),
(57, 'Can add frequencia', 15, 'add_frequencia'),
(58, 'Can change frequencia', 15, 'change_frequencia'),
(59, 'Can delete frequencia', 15, 'delete_frequencia'),
(60, 'Can view frequencia', 15, 'view_frequencia'),
(61, 'Can add aproveitamento', 16, 'add_aproveitamento'),
(62, 'Can change aproveitamento', 16, 'change_aproveitamento'),
(63, 'Can delete aproveitamento', 16, 'delete_aproveitamento'),
(64, 'Can view aproveitamento', 16, 'view_aproveitamento'),
(65, 'Can add aprendizagem', 17, 'add_aprendizagem'),
(66, 'Can change aprendizagem', 17, 'change_aprendizagem'),
(67, 'Can delete aprendizagem', 17, 'delete_aprendizagem'),
(68, 'Can view aprendizagem', 17, 'view_aprendizagem'),
(69, 'Can add aprendizagem', 18, 'add_aprendizagem'),
(70, 'Can change aprendizagem', 18, 'change_aprendizagem'),
(71, 'Can delete aprendizagem', 18, 'delete_aprendizagem'),
(72, 'Can view aprendizagem', 18, 'view_aprendizagem'),
(73, 'Can add observacao', 19, 'add_observacao'),
(74, 'Can change observacao', 19, 'change_observacao'),
(75, 'Can delete observacao', 19, 'delete_observacao'),
(76, 'Can view observacao', 19, 'view_observacao'),
(77, 'Can add assinatura', 20, 'add_assinatura'),
(78, 'Can change assinatura', 20, 'change_assinatura'),
(79, 'Can delete assinatura', 20, 'delete_assinatura'),
(80, 'Can view assinatura', 20, 'view_assinatura'),
(81, 'Can add frequencia', 21, 'add_frequencia'),
(82, 'Can change frequencia', 21, 'change_frequencia'),
(83, 'Can delete frequencia', 21, 'delete_frequencia'),
(84, 'Can view frequencia', 21, 'view_frequencia'),
(85, 'Can add aluno', 22, 'add_aluno'),
(86, 'Can change aluno', 22, 'change_aluno'),
(87, 'Can delete aluno', 22, 'delete_aluno'),
(88, 'Can view aluno', 22, 'view_aluno'),
(89, 'Can add fiap', 23, 'add_fiap'),
(90, 'Can change fiap', 23, 'change_fiap'),
(91, 'Can delete fiap', 23, 'delete_fiap'),
(92, 'Can view fiap', 23, 'view_fiap'),
(93, 'Can add ocorrencia', 24, 'add_ocorrencia'),
(94, 'Can change ocorrencia', 24, 'change_ocorrencia'),
(95, 'Can delete ocorrencia', 24, 'delete_ocorrencia'),
(96, 'Can view ocorrencia', 24, 'view_ocorrencia'),
(97, 'Can add colaborador', 25, 'add_colaborador'),
(98, 'Can change colaborador', 25, 'change_colaborador'),
(99, 'Can delete colaborador', 25, 'delete_colaborador'),
(100, 'Can view colaborador', 25, 'view_colaborador'),
(101, 'Can add turma', 26, 'add_turma'),
(102, 'Can change turma', 26, 'change_turma'),
(103, 'Can delete turma', 26, 'delete_turma'),
(104, 'Can view turma', 26, 'view_turma'),
(105, 'Can add aproveitamento', 27, 'add_aproveitamento'),
(106, 'Can change aproveitamento', 27, 'change_aproveitamento'),
(107, 'Can delete aproveitamento', 27, 'delete_aproveitamento'),
(108, 'Can view aproveitamento', 27, 'view_aproveitamento'),
(109, 'Can add materia', 28, 'add_materia'),
(110, 'Can change materia', 28, 'change_materia'),
(111, 'Can delete materia', 28, 'delete_materia'),
(112, 'Can view materia', 28, 'view_materia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$832u0wS0qqplnA2ghs2Af7$sTfihXbSGZrbcPFd/TyX7BAqS+XzJ+o58EAKTNzvBFI=', '2021-11-08 11:28:34.462456', 1, 'master', '', '', 'master@master.com', 1, 1, '2021-09-22 13:00:51.713022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-22 13:02:29.886032', '1', '2DES', 1, '[{\"added\": {}}]', 11, 1),
(2, '2021-09-22 13:02:45.910419', '1', 'Testando da SIlva', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-09-22 13:35:01.755925', '1', 'Silva do Teste', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-09-22 13:36:47.874277', '1', 'Frontend', 1, '[{\"added\": {}}]', 14, 1),
(5, '2021-09-22 13:50:16.804350', '1', '1', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-09-22 13:50:38.129874', '1', '1', 3, '', 10, 1),
(7, '2021-09-22 13:50:48.902349', '2', '1', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-09-22 13:52:39.993954', '2', 'O aluno o e mal educado', 1, '[{\"added\": {}}]', 13, 1),
(9, '2021-09-24 12:41:46.349817', '3', '5DES', 2, '[{\"changed\": {\"fields\": [\"Nome\"]}}]', 11, 1),
(12, '2021-10-19 11:16:32.385087', '3', '1', 1, '[{\"added\": {}}]', 10, 1),
(13, '2021-10-19 11:30:35.914706', '6', '6', 1, '[{\"added\": {}}]', 17, 1),
(14, '2021-10-19 11:31:00.422932', '1', '1', 1, '[{\"added\": {}}]', 16, 1),
(15, '2021-10-19 13:40:33.096660', '4', 'turmaNova', 1, '[{\"added\": {}}]', 11, 1),
(16, '2021-11-04 13:57:56.664363', '2', 'Fabricação de Bico', 1, '[{\"added\": {}}]', 14, 1),
(17, '2021-11-04 14:03:02.054879', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(18, '2021-11-05 10:59:24.404987', '1', '1', 1, '[{\"added\": {}}]', 15, 1),
(19, '2021-11-05 10:59:40.930310', '3', '3', 1, '[{\"added\": {}}]', 13, 1),
(20, '2021-11-05 10:59:49.655668', '1', '1', 1, '[{\"added\": {}}]', 12, 1),
(21, '2021-11-05 11:00:07.997214', '7', '7', 1, '[{\"added\": {}}]', 17, 1),
(22, '2021-11-05 11:00:18.442221', '2', '2', 1, '[{\"added\": {}}]', 16, 1),
(23, '2021-11-08 11:30:02.220302', '1', '1des', 1, '[{\"added\": {}}]', 26, 1),
(24, '2021-11-08 11:30:09.127941', '2', '2ds', 1, '[{\"added\": {}}]', 26, 1),
(25, '2021-11-08 11:30:17.676485', '1', 'teste', 1, '[{\"added\": {}}]', 22, 1),
(26, '2021-11-08 11:34:34.917409', '4', 'des', 1, '[{\"added\": {}}]', 26, 1),
(27, '2021-11-08 11:39:37.897900', '5', 'des', 1, '[{\"added\": {}}]', 26, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'aluno'),
(17, 'home', 'aprendizagem'),
(16, 'home', 'aproveitamento'),
(8, 'home', 'assinatura'),
(9, 'home', 'colaborador'),
(10, 'home', 'fiap'),
(15, 'home', 'frequencia'),
(14, 'home', 'materia'),
(13, 'home', 'observacao'),
(12, 'home', 'ocorrencia'),
(11, 'home', 'turma'),
(22, 'main', 'aluno'),
(18, 'main', 'aprendizagem'),
(27, 'main', 'aproveitamento'),
(20, 'main', 'assinatura'),
(25, 'main', 'colaborador'),
(23, 'main', 'fiap'),
(21, 'main', 'frequencia'),
(28, 'main', 'materia'),
(19, 'main', 'observacao'),
(24, 'main', 'ocorrencia'),
(26, 'main', 'turma'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-22 12:58:46.983940'),
(2, 'auth', '0001_initial', '2021-09-22 12:58:52.716703'),
(3, 'admin', '0001_initial', '2021-09-22 12:58:54.464594'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-22 12:58:54.491518'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-22 12:58:54.510895'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-22 12:58:54.816217'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-22 12:58:55.422170'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-22 12:58:56.221998'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-22 12:58:56.280584'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-22 12:58:57.058405'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-22 12:58:57.106778'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-22 12:58:57.190929'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-22 12:58:57.596114'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-22 12:58:57.679348'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-22 12:58:58.087805'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-22 12:58:58.113327'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-22 12:58:58.187065'),
(18, 'home', '0001_initial', '2021-09-22 12:59:10.191142'),
(19, 'sessions', '0001_initial', '2021-09-22 12:59:10.601631'),
(20, 'home', '0002_auto_20210922_1036', '2021-09-22 13:36:15.275105'),
(21, 'home', '0003_auto_20210922_1045', '2021-09-22 13:45:58.445904'),
(22, 'home', '0004_auto_20210922_1050', '2021-09-22 13:50:10.562175'),
(23, 'home', '0005_auto_20210922_1052', '2021-09-22 13:52:34.926633'),
(24, 'home', '0006_auto_20210922_1054', '2021-09-22 13:54:57.052340'),
(25, 'home', '0007_auto_20211019_0828', '2021-10-19 11:28:26.154511'),
(26, 'home', '0008_auto_20211019_0830', '2021-10-19 11:30:31.880839'),
(27, 'home', '0009_auto_20211019_0855', '2021-10-19 11:55:29.614498'),
(28, 'home', '0010_auto_20211019_1013', '2021-10-19 13:13:36.618092'),
(29, 'home', '0011_auto_20211019_1042', '2021-10-19 13:42:46.583668'),
(30, 'home', '0012_auto_20211105_0813', '2021-11-05 11:13:46.482584'),
(31, 'main', '0001_initial', '2021-11-08 11:27:51.566008'),
(32, 'main', '0002_auto_20211108_0839', '2021-11-08 11:39:18.731898');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7ijzey4624ar0yjfeak7t57phk7o7ifc', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mid7b:ksayiM-3O--x1Is4l7HGrgqvx4dqSQAXfyVAvZGftAU', '2021-11-18 13:49:39.416145'),
('cybid4xiws38f82lx3g557t3jhzqdr4v', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mTkW8:es5bggNdHgMtvNirumUn9nrOtoCXgbFKfItAyVJ_gow', '2021-10-08 12:41:28.840061'),
('flxzdxhnuk5wu7oqmz1xst3a56h7xloh', '.eJxVjDsOwjAQBe_iGln-fyjpOYO167VxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwkO_1uCPlR-g7oDv028zz3dZmQ7wo_6ODXmcrzcrh_Bw1G-9bBeFVkFGCjtkKicVGRct6Qy1aihQgVa8XgMJAS5HXxHrR0CsCiNuz9AcJPN24:1mk2pG:_SAUn9O6TLpndjRanxy-3B9tR7BYFmPIhfZn1Mc2_6s', '2021-11-22 11:28:34.496178'),
('g5vxbldtxm5a24z3r58bxkqwgcyfjv17', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mT1rv:Mi8Hq74FDDblrgmNlpSZu8UtdMP0kx6p6cZc28H0UXI', '2021-10-06 13:00:59.293188'),
('p6iyft8js34nk16q3gktvoulcbnnt5po', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1miwqz:_u7K1gmhh1cbV8t-YIT3GtuEWFxgnZ0Vef5YBBoPdaM', '2021-11-19 10:53:49.756888'),
('w7fiau9jtgxdb2k8u2du1aa07bat0a1g', '.eJxVjDsOwjAQBe_iGlmwjn-U9JzBWu-ucQA5UpxUiLtDpBTQvpl5L5VwXWpau8xpZHVWJ3X43TLSQ9oG-I7tNmma2jKPWW-K3mnX14nledndv4OKvX5rj_7ImF3J4E22BZnAUoxigoUyFDKDRUcAhcRLLAzGBRKMHlwQAfX-AAoQONc:1mcn3W:wPf9YmmxP-lEtQ6dIyfOJ1q49oej-EvDvxFMRif33mg', '2021-11-02 11:13:18.628259');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aluno`
--

CREATE TABLE `home_aluno` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ra` varchar(8) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_aluno`
--

INSERT INTO `home_aluno` (`id`, `nome`, `ra`, `turma_id`) VALUES
(2, 'João ComBraço', '89089067', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aprendizagem`
--

CREATE TABLE `home_aprendizagem` (
  `id` bigint(20) NOT NULL,
  `atencao` tinyint(1) DEFAULT NULL,
  `compreensao` tinyint(1) DEFAULT NULL,
  `comprometimento` tinyint(1) DEFAULT NULL,
  `relacionamento` tinyint(1) DEFAULT NULL,
  `Outros` varchar(100) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_aprendizagem`
--

INSERT INTO `home_aprendizagem` (`id`, `atencao`, `compreensao`, `comprometimento`, `relacionamento`, `Outros`, `fiap_id`) VALUES
(7, 1, 1, 1, 0, NULL, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_aproveitamento`
--

CREATE TABLE `home_aproveitamento` (
  `id` bigint(20) NOT NULL,
  `notamedia` int(11) NOT NULL,
  `notaaluno` int(11) NOT NULL,
  `notarec` int(11) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL,
  `materia_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_aproveitamento`
--

INSERT INTO `home_aproveitamento` (`id`, `notamedia`, `notaaluno`, `notarec`, `fiap_id`, `materia_id`) VALUES
(3, 3, 4, 1, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_assinatura`
--

CREATE TABLE `home_assinatura` (
  `id` bigint(20) NOT NULL,
  `docente` varchar(100) DEFAULT NULL,
  `coordenador` varchar(100) DEFAULT NULL,
  `social` varchar(100) DEFAULT NULL,
  `aluno` varchar(100) DEFAULT NULL,
  `responsavel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_assinatura`
--

INSERT INTO `home_assinatura` (`id`, `docente`, `coordenador`, `social`, `aluno`, `responsavel`) VALUES
(1, 'docente/21/11/04/assinatura.png', 'coordenador/21/11/04/assWalder.png', 'social/21/11/04/assinatura.png', 'aluno/21/11/04/assWalder.png', 'responsavel/21/11/04/assWalder.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_colaborador`
--

CREATE TABLE `home_colaborador` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nif` varchar(11) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_colaborador`
--

INSERT INTO `home_colaborador` (`id`, `nome`, `nif`, `senha`, `nivelAcesso`) VALUES
(1, 'Silva do Teste', 'SN1234567', 'senha', '2'),
(2, 'João TalvezTenhaBraço', 'SN867564756', 'joaotalvezsembraco', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_fiap`
--

CREATE TABLE `home_fiap` (
  `id` bigint(20) NOT NULL,
  `progresso` varchar(20) NOT NULL,
  `dataInicio` datetime(6) NOT NULL,
  `dataFinal` datetime(6) DEFAULT NULL,
  `aluno_id` bigint(20) NOT NULL,
  `assinatura_id` bigint(20) DEFAULT NULL,
  `colaborador_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_fiap`
--

INSERT INTO `home_fiap` (`id`, `progresso`, `dataInicio`, `dataFinal`, `aluno_id`, `assinatura_id`, `colaborador_id`, `turma_id`) VALUES
(4, '2', '2021-10-19 11:13:00.000000', '2021-10-19 11:13:00.000000', 2, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_frequencia`
--

CREATE TABLE `home_frequencia` (
  `id` bigint(20) NOT NULL,
  `aulasprevistas` int(11) NOT NULL,
  `ausencias` int(11) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_frequencia`
--

INSERT INTO `home_frequencia` (`id`, `aulasprevistas`, `ausencias`, `fiap_id`) VALUES
(1, 2, 3, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_materia`
--

CREATE TABLE `home_materia` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `professor_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_materia`
--

INSERT INTO `home_materia` (`id`, `nome`, `professor_id`, `turma_id`) VALUES
(2, 'Fabricação de Bico', 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_observacao`
--

CREATE TABLE `home_observacao` (
  `id` bigint(20) NOT NULL,
  `observacao` varchar(500) NOT NULL,
  `data` datetime(6) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_observacao`
--

INSERT INTO `home_observacao` (`id`, `observacao`, `data`, `fiap_id`) VALUES
(3, 'Testando Obs', '2021-11-05 10:59:39.000000', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_ocorrencia`
--

CREATE TABLE `home_ocorrencia` (
  `id` bigint(20) NOT NULL,
  `advverbal` tinyint(1) DEFAULT NULL,
  `advescrita` tinyint(1) DEFAULT NULL,
  `afastamento` tinyint(1) DEFAULT NULL,
  `cancelmatricula` tinyint(1) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_ocorrencia`
--

INSERT INTO `home_ocorrencia` (`id`, `advverbal`, `advescrita`, `afastamento`, `cancelmatricula`, `fiap_id`) VALUES
(2, 0, 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_turma`
--

CREATE TABLE `home_turma` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `periodo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `home_turma`
--

INSERT INTO `home_turma` (`id`, `nome`, `periodo`) VALUES
(2, '500D', '3'),
(5, 'turmaFoda2', '1'),
(6, '777D', '3'),
(7, '222D', '2'),
(8, '222D', '2'),
(9, '111D', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_aluno`
--

CREATE TABLE `main_aluno` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ra` varchar(8) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `main_aluno`
--

INSERT INTO `main_aluno` (`id`, `nome`, `ra`, `turma_id`) VALUES
(1, 'teste', '34324234', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_aprendizagem`
--

CREATE TABLE `main_aprendizagem` (
  `id` bigint(20) NOT NULL,
  `atencao` tinyint(1) DEFAULT NULL,
  `compreensao` tinyint(1) DEFAULT NULL,
  `comprometimento` tinyint(1) DEFAULT NULL,
  `relacionamento` tinyint(1) DEFAULT NULL,
  `Outros` varchar(100) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_aproveitamento`
--

CREATE TABLE `main_aproveitamento` (
  `id` bigint(20) NOT NULL,
  `notamedia` int(11) NOT NULL,
  `notaaluno` int(11) NOT NULL,
  `notarec` int(11) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL,
  `materia_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_assinatura`
--

CREATE TABLE `main_assinatura` (
  `id` bigint(20) NOT NULL,
  `docente` varchar(100) DEFAULT NULL,
  `coordenador` varchar(100) DEFAULT NULL,
  `social` varchar(100) DEFAULT NULL,
  `aluno` varchar(100) DEFAULT NULL,
  `responsavel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_colaborador`
--

CREATE TABLE `main_colaborador` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nif` varchar(11) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_fiap`
--

CREATE TABLE `main_fiap` (
  `id` bigint(20) NOT NULL,
  `progresso` varchar(20) NOT NULL,
  `dataInicio` datetime(6) NOT NULL,
  `dataFinal` datetime(6) DEFAULT NULL,
  `aluno_id` bigint(20) NOT NULL,
  `assinatura_id` bigint(20) DEFAULT NULL,
  `colaborador_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_frequencia`
--

CREATE TABLE `main_frequencia` (
  `id` bigint(20) NOT NULL,
  `aulasprevistas` int(11) NOT NULL,
  `ausencias` int(11) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_materia`
--

CREATE TABLE `main_materia` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `professor_id` bigint(20) NOT NULL,
  `turma_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_observacao`
--

CREATE TABLE `main_observacao` (
  `id` bigint(20) NOT NULL,
  `observacao` varchar(500) NOT NULL,
  `data` datetime(6) NOT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_ocorrencia`
--

CREATE TABLE `main_ocorrencia` (
  `id` bigint(20) NOT NULL,
  `advverbal` tinyint(1) DEFAULT NULL,
  `advescrita` tinyint(1) DEFAULT NULL,
  `afastamento` tinyint(1) DEFAULT NULL,
  `cancelmatricula` tinyint(1) DEFAULT NULL,
  `fiap_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_turma`
--

CREATE TABLE `main_turma` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `periodo` varchar(15) NOT NULL,
  `dataInicio` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `main_turma`
--

INSERT INTO `main_turma` (`id`, `nome`, `periodo`, `dataInicio`) VALUES
(1, '1des', '1', '2021-11-08 11:39:11.854655'),
(2, '2ds', '2', '2021-11-08 11:39:11.854655'),
(4, 'des', '1', '2021-11-08 11:39:11.854655'),
(5, 'des', '2', '2021-11-08 11:39:26.000000');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aluno_turma_id_fe7c15bb_fk_home_turma_id` (`turma_id`);

--
-- Índices para tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aprendizagem_fiap_id_f91c88d3_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_aproveitamento_fiap_id_7d6a1fbf_fk_home_fiap_id` (`fiap_id`),
  ADD KEY `home_aproveitamento_materia_id_be82cd78_fk_home_materia_id` (`materia_id`);

--
-- Índices para tabela `home_assinatura`
--
ALTER TABLE `home_assinatura`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_colaborador`
--
ALTER TABLE `home_colaborador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_fiap_turma_id_d6cc84c6_fk_home_turma_id` (`turma_id`),
  ADD KEY `home_fiap_aluno_id_f7fe145a_fk_home_aluno_id` (`aluno_id`),
  ADD KEY `home_fiap_colaborador_id_f71a9739_fk_home_colaborador_id` (`colaborador_id`),
  ADD KEY `home_fiap_assinatura_id_5e86c855_fk_home_assinatura_id` (`assinatura_id`);

--
-- Índices para tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_frequencia_fiap_id_6184acd0_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_materia`
--
ALTER TABLE `home_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_materia_professor_id_3e57bb3c_fk_home_colaborador_id` (`professor_id`),
  ADD KEY `home_materia_turma_id_64dedf86_fk_home_turma_id` (`turma_id`);

--
-- Índices para tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_observacao_fiap_id_2a8eee33_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_ocorrencia_fiap_id_93b547b4_fk_home_fiap_id` (`fiap_id`);

--
-- Índices para tabela `home_turma`
--
ALTER TABLE `home_turma`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_aluno`
--
ALTER TABLE `main_aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_aluno_turma_id_422413c9_fk_main_turma_id` (`turma_id`);

--
-- Índices para tabela `main_aprendizagem`
--
ALTER TABLE `main_aprendizagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_aprendizagem_fiap_id_11fc6c56_fk_main_fiap_id` (`fiap_id`);

--
-- Índices para tabela `main_aproveitamento`
--
ALTER TABLE `main_aproveitamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_aproveitamento_fiap_id_5a748fd2_fk_main_fiap_id` (`fiap_id`),
  ADD KEY `main_aproveitamento_materia_id_2e1497ca_fk_main_materia_id` (`materia_id`);

--
-- Índices para tabela `main_assinatura`
--
ALTER TABLE `main_assinatura`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_colaborador`
--
ALTER TABLE `main_colaborador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_fiap`
--
ALTER TABLE `main_fiap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_fiap_turma_id_45cd4bf0_fk_main_turma_id` (`turma_id`),
  ADD KEY `main_fiap_aluno_id_0814b74d_fk_main_aluno_id` (`aluno_id`),
  ADD KEY `main_fiap_assinatura_id_ef4541bc_fk_main_assinatura_id` (`assinatura_id`),
  ADD KEY `main_fiap_colaborador_id_a9143fe2_fk_main_colaborador_id` (`colaborador_id`);

--
-- Índices para tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_frequencia_fiap_id_0a8e6a32_fk_main_fiap_id` (`fiap_id`);

--
-- Índices para tabela `main_materia`
--
ALTER TABLE `main_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_materia_professor_id_ed847677_fk_main_colaborador_id` (`professor_id`),
  ADD KEY `main_materia_turma_id_83301e68_fk_main_turma_id` (`turma_id`);

--
-- Índices para tabela `main_observacao`
--
ALTER TABLE `main_observacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_observacao_fiap_id_ae6f63f2_fk_main_fiap_id` (`fiap_id`);

--
-- Índices para tabela `main_ocorrencia`
--
ALTER TABLE `main_ocorrencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_ocorrencia_fiap_id_dcedad54_fk_main_fiap_id` (`fiap_id`);

--
-- Índices para tabela `main_turma`
--
ALTER TABLE `main_turma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `home_assinatura`
--
ALTER TABLE `home_assinatura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `home_colaborador`
--
ALTER TABLE `home_colaborador`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_materia`
--
ALTER TABLE `home_materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_turma`
--
ALTER TABLE `home_turma`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `main_aluno`
--
ALTER TABLE `main_aluno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `main_aprendizagem`
--
ALTER TABLE `main_aprendizagem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_aproveitamento`
--
ALTER TABLE `main_aproveitamento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_assinatura`
--
ALTER TABLE `main_assinatura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_colaborador`
--
ALTER TABLE `main_colaborador`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_fiap`
--
ALTER TABLE `main_fiap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_materia`
--
ALTER TABLE `main_materia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_observacao`
--
ALTER TABLE `main_observacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_ocorrencia`
--
ALTER TABLE `main_ocorrencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_turma`
--
ALTER TABLE `main_turma`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `home_aluno`
--
ALTER TABLE `home_aluno`
  ADD CONSTRAINT `home_aluno_turma_id_fe7c15bb_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_aprendizagem`
--
ALTER TABLE `home_aprendizagem`
  ADD CONSTRAINT `home_aprendizagem_fiap_id_f91c88d3_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_aproveitamento`
--
ALTER TABLE `home_aproveitamento`
  ADD CONSTRAINT `home_aproveitamento_fiap_id_7d6a1fbf_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`),
  ADD CONSTRAINT `home_aproveitamento_materia_id_be82cd78_fk_home_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `home_materia` (`id`);

--
-- Limitadores para a tabela `home_fiap`
--
ALTER TABLE `home_fiap`
  ADD CONSTRAINT `home_fiap_aluno_id_f7fe145a_fk_home_aluno_id` FOREIGN KEY (`aluno_id`) REFERENCES `home_aluno` (`id`),
  ADD CONSTRAINT `home_fiap_assinatura_id_5e86c855_fk_home_assinatura_id` FOREIGN KEY (`assinatura_id`) REFERENCES `home_assinatura` (`id`),
  ADD CONSTRAINT `home_fiap_colaborador_id_f71a9739_fk_home_colaborador_id` FOREIGN KEY (`colaborador_id`) REFERENCES `home_colaborador` (`id`),
  ADD CONSTRAINT `home_fiap_turma_id_d6cc84c6_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_frequencia`
--
ALTER TABLE `home_frequencia`
  ADD CONSTRAINT `home_frequencia_fiap_id_6184acd0_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_materia`
--
ALTER TABLE `home_materia`
  ADD CONSTRAINT `home_materia_professor_id_3e57bb3c_fk_home_colaborador_id` FOREIGN KEY (`professor_id`) REFERENCES `home_colaborador` (`id`),
  ADD CONSTRAINT `home_materia_turma_id_64dedf86_fk_home_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `home_turma` (`id`);

--
-- Limitadores para a tabela `home_observacao`
--
ALTER TABLE `home_observacao`
  ADD CONSTRAINT `home_observacao_fiap_id_2a8eee33_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `home_ocorrencia`
--
ALTER TABLE `home_ocorrencia`
  ADD CONSTRAINT `home_ocorrencia_fiap_id_93b547b4_fk_home_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `home_fiap` (`id`);

--
-- Limitadores para a tabela `main_aluno`
--
ALTER TABLE `main_aluno`
  ADD CONSTRAINT `main_aluno_turma_id_422413c9_fk_main_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `main_turma` (`id`);

--
-- Limitadores para a tabela `main_aprendizagem`
--
ALTER TABLE `main_aprendizagem`
  ADD CONSTRAINT `main_aprendizagem_fiap_id_11fc6c56_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`);

--
-- Limitadores para a tabela `main_aproveitamento`
--
ALTER TABLE `main_aproveitamento`
  ADD CONSTRAINT `main_aproveitamento_fiap_id_5a748fd2_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`),
  ADD CONSTRAINT `main_aproveitamento_materia_id_2e1497ca_fk_main_materia_id` FOREIGN KEY (`materia_id`) REFERENCES `main_materia` (`id`);

--
-- Limitadores para a tabela `main_fiap`
--
ALTER TABLE `main_fiap`
  ADD CONSTRAINT `main_fiap_aluno_id_0814b74d_fk_main_aluno_id` FOREIGN KEY (`aluno_id`) REFERENCES `main_aluno` (`id`),
  ADD CONSTRAINT `main_fiap_assinatura_id_ef4541bc_fk_main_assinatura_id` FOREIGN KEY (`assinatura_id`) REFERENCES `main_assinatura` (`id`),
  ADD CONSTRAINT `main_fiap_colaborador_id_a9143fe2_fk_main_colaborador_id` FOREIGN KEY (`colaborador_id`) REFERENCES `main_colaborador` (`id`),
  ADD CONSTRAINT `main_fiap_turma_id_45cd4bf0_fk_main_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `main_turma` (`id`);

--
-- Limitadores para a tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  ADD CONSTRAINT `main_frequencia_fiap_id_0a8e6a32_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`);

--
-- Limitadores para a tabela `main_materia`
--
ALTER TABLE `main_materia`
  ADD CONSTRAINT `main_materia_professor_id_ed847677_fk_main_colaborador_id` FOREIGN KEY (`professor_id`) REFERENCES `main_colaborador` (`id`),
  ADD CONSTRAINT `main_materia_turma_id_83301e68_fk_main_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `main_turma` (`id`);

--
-- Limitadores para a tabela `main_observacao`
--
ALTER TABLE `main_observacao`
  ADD CONSTRAINT `main_observacao_fiap_id_ae6f63f2_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`);

--
-- Limitadores para a tabela `main_ocorrencia`
--
ALTER TABLE `main_ocorrencia`
  ADD CONSTRAINT `main_ocorrencia_fiap_id_dcedad54_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
