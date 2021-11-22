-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2021 às 13:28
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(33, 'Can add fiap', 9, 'add_fiap'),
(34, 'Can change fiap', 9, 'change_fiap'),
(35, 'Can delete fiap', 9, 'delete_fiap'),
(36, 'Can view fiap', 9, 'view_fiap'),
(37, 'Can add turma', 10, 'add_turma'),
(38, 'Can change turma', 10, 'change_turma'),
(39, 'Can delete turma', 10, 'delete_turma'),
(40, 'Can view turma', 10, 'view_turma'),
(41, 'Can add ocorrencia', 11, 'add_ocorrencia'),
(42, 'Can change ocorrencia', 11, 'change_ocorrencia'),
(43, 'Can delete ocorrencia', 11, 'delete_ocorrencia'),
(44, 'Can view ocorrencia', 11, 'view_ocorrencia'),
(45, 'Can add observacao', 12, 'add_observacao'),
(46, 'Can change observacao', 12, 'change_observacao'),
(47, 'Can delete observacao', 12, 'delete_observacao'),
(48, 'Can view observacao', 12, 'view_observacao'),
(49, 'Can add materia', 13, 'add_materia'),
(50, 'Can change materia', 13, 'change_materia'),
(51, 'Can delete materia', 13, 'delete_materia'),
(52, 'Can view materia', 13, 'view_materia'),
(53, 'Can add frequencia', 14, 'add_frequencia'),
(54, 'Can change frequencia', 14, 'change_frequencia'),
(55, 'Can delete frequencia', 14, 'delete_frequencia'),
(56, 'Can view frequencia', 14, 'view_frequencia'),
(57, 'Can add aproveitamento', 15, 'add_aproveitamento'),
(58, 'Can change aproveitamento', 15, 'change_aproveitamento'),
(59, 'Can delete aproveitamento', 15, 'delete_aproveitamento'),
(60, 'Can view aproveitamento', 15, 'view_aproveitamento'),
(61, 'Can add aprendizagem', 16, 'add_aprendizagem'),
(62, 'Can change aprendizagem', 16, 'change_aprendizagem'),
(63, 'Can delete aprendizagem', 16, 'delete_aprendizagem'),
(64, 'Can view aprendizagem', 16, 'view_aprendizagem'),
(65, 'Can add empresa', 17, 'add_empresa'),
(66, 'Can change empresa', 17, 'change_empresa'),
(67, 'Can delete empresa', 17, 'delete_empresa'),
(68, 'Can view empresa', 17, 'view_empresa'),
(69, 'Can add importancia', 18, 'add_importancia'),
(70, 'Can change importancia', 18, 'change_importancia'),
(71, 'Can delete importancia', 18, 'delete_importancia'),
(72, 'Can view importancia', 18, 'view_importancia'),
(73, 'Can add pergunta', 19, 'add_pergunta'),
(74, 'Can change pergunta', 19, 'change_pergunta'),
(75, 'Can delete pergunta', 19, 'delete_pergunta'),
(76, 'Can view pergunta', 19, 'view_pergunta'),
(77, 'Can add satisfacao', 20, 'add_satisfacao'),
(78, 'Can change satisfacao', 20, 'change_satisfacao'),
(79, 'Can delete satisfacao', 20, 'delete_satisfacao'),
(80, 'Can view satisfacao', 20, 'view_satisfacao'),
(81, 'Can add upload csv', 21, 'add_uploadcsv'),
(82, 'Can change upload csv', 21, 'change_uploadcsv'),
(83, 'Can delete upload csv', 21, 'delete_uploadcsv'),
(84, 'Can view upload csv', 21, 'view_uploadcsv'),
(85, 'Can add usuario', 22, 'add_usuario'),
(86, 'Can change usuario', 22, 'change_usuario'),
(87, 'Can delete usuario', 22, 'delete_usuario'),
(88, 'Can view usuario', 22, 'view_usuario'),
(89, 'Can add formulario', 23, 'add_formulario'),
(90, 'Can change formulario', 23, 'change_formulario'),
(91, 'Can delete formulario', 23, 'delete_formulario'),
(92, 'Can view formulario', 23, 'view_formulario');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'aluno'),
(16, 'main', 'aprendizagem'),
(15, 'main', 'aproveitamento'),
(8, 'main', 'assinatura'),
(17, 'main', 'empresa'),
(9, 'main', 'fiap'),
(23, 'main', 'formulario'),
(14, 'main', 'frequencia'),
(18, 'main', 'importancia'),
(13, 'main', 'materia'),
(12, 'main', 'observacao'),
(11, 'main', 'ocorrencia'),
(19, 'main', 'pergunta'),
(20, 'main', 'satisfacao'),
(10, 'main', 'turma'),
(21, 'main', 'uploadcsv'),
(22, 'main', 'usuario'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-22 12:26:01.359122'),
(2, 'auth', '0001_initial', '2021-11-22 12:26:15.812040'),
(3, 'admin', '0001_initial', '2021-11-22 12:26:19.525677'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-22 12:26:19.607676'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-22 12:26:19.657248'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-22 12:26:20.669941'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-22 12:26:21.949310'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-22 12:26:22.069966'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-22 12:26:22.140580'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-22 12:26:22.811600'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-22 12:26:22.856885'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-22 12:26:22.906855'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-22 12:26:23.186525'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-22 12:26:23.387635'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-22 12:26:23.628134'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-22 12:26:23.682214'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-22 12:26:23.877050'),
(18, 'main', '0001_initial', '2021-11-22 12:26:48.093291'),
(19, 'main', '0002_auto_20211108_0839', '2021-11-22 12:26:50.182974'),
(20, 'main', '0003_auto_20211109_0808', '2021-11-22 12:27:07.077100'),
(21, 'main', '0004_auto_20211122_0925', '2021-11-22 12:27:07.187273'),
(22, 'sessions', '0001_initial', '2021-11-22 12:27:08.187470');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_aluno`
--

CREATE TABLE `main_aluno` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ra` varchar(8) NOT NULL,
  `turma_id` bigint(20) NOT NULL,
  `cpf` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Estrutura da tabela `main_empresa`
--

CREATE TABLE `main_empresa` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL
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
  `turma_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_formulario`
--

CREATE TABLE `main_formulario` (
  `id` bigint(20) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `aluno_id` bigint(20) NOT NULL,
  `importancia_id` bigint(20) NOT NULL,
  `pergunta_id` bigint(20) NOT NULL,
  `satisfacao_id` bigint(20) NOT NULL
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
-- Estrutura da tabela `main_importancia`
--

CREATE TABLE `main_importancia` (
  `id` bigint(20) NOT NULL,
  `nivel` varchar(10) NOT NULL
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
-- Estrutura da tabela `main_pergunta`
--

CREATE TABLE `main_pergunta` (
  `id` bigint(20) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_satisfacao`
--

CREATE TABLE `main_satisfacao` (
  `id` bigint(20) NOT NULL,
  `nivel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_turma`
--

CREATE TABLE `main_turma` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `periodo` varchar(15) NOT NULL,
  `dataInicio` datetime(6) NOT NULL,
  `cod_turma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_uploadcsv`
--

CREATE TABLE `main_uploadcsv` (
  `id` bigint(20) NOT NULL,
  `File` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_usuario`
--

CREATE TABLE `main_usuario` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `identificador` varchar(30) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivelAcesso` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Índices para tabela `main_empresa`
--
ALTER TABLE `main_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_fiap`
--
ALTER TABLE `main_fiap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_fiap_turma_id_45cd4bf0_fk_main_turma_id` (`turma_id`),
  ADD KEY `main_fiap_aluno_id_0814b74d_fk_main_aluno_id` (`aluno_id`),
  ADD KEY `main_fiap_assinatura_id_ef4541bc_fk_main_assinatura_id` (`assinatura_id`),
  ADD KEY `main_fiap_usuario_id_a864eca0_fk_main_usuario_id` (`usuario_id`);

--
-- Índices para tabela `main_formulario`
--
ALTER TABLE `main_formulario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_formulario_aluno_id_97343958_fk_main_aluno_id` (`aluno_id`),
  ADD KEY `main_formulario_importancia_id_03fd59e3_fk_main_importancia_id` (`importancia_id`),
  ADD KEY `main_formulario_pergunta_id_b184123c_fk_main_pergunta_id` (`pergunta_id`),
  ADD KEY `main_formulario_satisfacao_id_ed5856ae_fk_main_satisfacao_id` (`satisfacao_id`);

--
-- Índices para tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_frequencia_fiap_id_0a8e6a32_fk_main_fiap_id` (`fiap_id`);

--
-- Índices para tabela `main_importancia`
--
ALTER TABLE `main_importancia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_materia`
--
ALTER TABLE `main_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_materia_turma_id_83301e68_fk_main_turma_id` (`turma_id`),
  ADD KEY `main_materia_professor_id_ed847677_fk_main_usuario_id` (`professor_id`);

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
-- Índices para tabela `main_pergunta`
--
ALTER TABLE `main_pergunta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_satisfacao`
--
ALTER TABLE `main_satisfacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_turma`
--
ALTER TABLE `main_turma`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_uploadcsv`
--
ALTER TABLE `main_uploadcsv`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_usuario`
--
ALTER TABLE `main_usuario`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `main_aluno`
--
ALTER TABLE `main_aluno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de tabela `main_empresa`
--
ALTER TABLE `main_empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_fiap`
--
ALTER TABLE `main_fiap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_formulario`
--
ALTER TABLE `main_formulario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_importancia`
--
ALTER TABLE `main_importancia`
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
-- AUTO_INCREMENT de tabela `main_pergunta`
--
ALTER TABLE `main_pergunta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_satisfacao`
--
ALTER TABLE `main_satisfacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_turma`
--
ALTER TABLE `main_turma`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_uploadcsv`
--
ALTER TABLE `main_uploadcsv`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_usuario`
--
ALTER TABLE `main_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `main_fiap_turma_id_45cd4bf0_fk_main_turma_id` FOREIGN KEY (`turma_id`) REFERENCES `main_turma` (`id`),
  ADD CONSTRAINT `main_fiap_usuario_id_a864eca0_fk_main_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `main_usuario` (`id`);

--
-- Limitadores para a tabela `main_formulario`
--
ALTER TABLE `main_formulario`
  ADD CONSTRAINT `main_formulario_aluno_id_97343958_fk_main_aluno_id` FOREIGN KEY (`aluno_id`) REFERENCES `main_aluno` (`id`),
  ADD CONSTRAINT `main_formulario_importancia_id_03fd59e3_fk_main_importancia_id` FOREIGN KEY (`importancia_id`) REFERENCES `main_importancia` (`id`),
  ADD CONSTRAINT `main_formulario_pergunta_id_b184123c_fk_main_pergunta_id` FOREIGN KEY (`pergunta_id`) REFERENCES `main_pergunta` (`id`),
  ADD CONSTRAINT `main_formulario_satisfacao_id_ed5856ae_fk_main_satisfacao_id` FOREIGN KEY (`satisfacao_id`) REFERENCES `main_satisfacao` (`id`);

--
-- Limitadores para a tabela `main_frequencia`
--
ALTER TABLE `main_frequencia`
  ADD CONSTRAINT `main_frequencia_fiap_id_0a8e6a32_fk_main_fiap_id` FOREIGN KEY (`fiap_id`) REFERENCES `main_fiap` (`id`);

--
-- Limitadores para a tabela `main_materia`
--
ALTER TABLE `main_materia`
  ADD CONSTRAINT `main_materia_professor_id_ed847677_fk_main_usuario_id` FOREIGN KEY (`professor_id`) REFERENCES `main_usuario` (`id`),
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
