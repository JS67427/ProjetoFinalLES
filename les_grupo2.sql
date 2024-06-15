-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jun-2024 às 21:53
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `les_grupo2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

CREATE TABLE `acao` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `acao`
--

INSERT INTO `acao` (`ID`, `Name`) VALUES
(1, 'Criar'),
(2, 'Eliminar'),
(3, 'Editar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano_letivo`
--

CREATE TABLE `ano_letivo` (
  `ID` int(11) NOT NULL,
  `ano_letivo` varchar(255) NOT NULL,
  `dia_inicio` date NOT NULL,
  `dia_fim` date NOT NULL,
  `ativo` varchar(10) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ano_letivo`
--

INSERT INTO `ano_letivo` (`ID`, `ano_letivo`, `dia_inicio`, `dia_fim`, `ativo`) VALUES
(1, '2022/23', '2022-09-19', '2023-07-21', 'N'),
(16, '2021/22', '2023-05-02', '2023-06-03', 'N'),
(21, '2027/28', '2023-05-26', '2023-06-10', 'N'),
(22, '2023/24', '2023-09-10', '2024-08-29', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Docente'),
(1, 'Funcionario'),
(3, 'PCP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user', 10, 'add_authuser'),
(38, 'Can change auth user', 10, 'change_authuser'),
(39, 'Can delete auth user', 10, 'delete_authuser'),
(40, 'Can view auth user', 10, 'view_authuser'),
(41, 'Can add auth user groups', 11, 'add_authusergroups'),
(42, 'Can change auth user groups', 11, 'change_authusergroups'),
(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(44, 'Can view auth user groups', 11, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(49, 'Can add departamento', 13, 'add_departamento'),
(50, 'Can change departamento', 13, 'change_departamento'),
(51, 'Can delete departamento', 13, 'delete_departamento'),
(52, 'Can view departamento', 13, 'view_departamento'),
(53, 'Can add django admin log', 14, 'add_djangoadminlog'),
(54, 'Can change django admin log', 14, 'change_djangoadminlog'),
(55, 'Can delete django admin log', 14, 'delete_djangoadminlog'),
(56, 'Can view django admin log', 14, 'view_djangoadminlog'),
(57, 'Can add django content type', 15, 'add_djangocontenttype'),
(58, 'Can change django content type', 15, 'change_djangocontenttype'),
(59, 'Can delete django content type', 15, 'delete_djangocontenttype'),
(60, 'Can view django content type', 15, 'view_djangocontenttype'),
(61, 'Can add django migrations', 16, 'add_djangomigrations'),
(62, 'Can change django migrations', 16, 'change_djangomigrations'),
(63, 'Can delete django migrations', 16, 'delete_djangomigrations'),
(64, 'Can view django migrations', 16, 'view_djangomigrations'),
(65, 'Can add django session', 17, 'add_djangosession'),
(66, 'Can change django session', 17, 'change_djangosession'),
(67, 'Can delete django session', 17, 'delete_djangosession'),
(68, 'Can view django session', 17, 'view_djangosession'),
(69, 'Can add faculdade', 18, 'add_faculdade'),
(70, 'Can change faculdade', 18, 'change_faculdade'),
(71, 'Can delete faculdade', 18, 'delete_faculdade'),
(72, 'Can view faculdade', 18, 'view_faculdade'),
(73, 'Can add gabinete', 19, 'add_gabinete'),
(74, 'Can change gabinete', 19, 'change_gabinete'),
(75, 'Can delete gabinete', 19, 'delete_gabinete'),
(76, 'Can view gabinete', 19, 'view_gabinete'),
(77, 'Can add utilizador', 20, 'add_utilizador'),
(78, 'Can change utilizador', 20, 'change_utilizador'),
(79, 'Can delete utilizador', 20, 'delete_utilizador'),
(80, 'Can view utilizador', 20, 'view_utilizador'),
(81, 'Can add funcionario', 21, 'add_funcionario'),
(82, 'Can change funcionario', 21, 'change_funcionario'),
(83, 'Can delete funcionario', 21, 'delete_funcionario'),
(84, 'Can view funcionario', 21, 'view_funcionario'),
(85, 'Can add pcp', 22, 'add_pcp'),
(86, 'Can change pcp', 22, 'change_pcp'),
(87, 'Can delete pcp', 22, 'delete_pcp'),
(88, 'Can view pcp', 22, 'view_pcp'),
(89, 'Can add docente', 23, 'add_docente'),
(90, 'Can change docente', 23, 'change_docente'),
(91, 'Can delete docente', 23, 'delete_docente'),
(92, 'Can view docente', 23, 'view_docente'),
(93, 'Can add notificacao', 24, 'add_notificacao'),
(94, 'Can change notificacao', 24, 'change_notificacao'),
(95, 'Can delete notificacao', 24, 'delete_notificacao'),
(96, 'Can view notificacao', 24, 'view_notificacao'),
(97, 'Can add informacao notificacao', 25, 'add_informacaonotificacao'),
(98, 'Can change informacao notificacao', 25, 'change_informacaonotificacao'),
(99, 'Can delete informacao notificacao', 25, 'delete_informacaonotificacao'),
(100, 'Can view informacao notificacao', 25, 'view_informacaonotificacao'),
(101, 'Can add informacao mensagem', 26, 'add_informacaomensagem'),
(102, 'Can change informacao mensagem', 26, 'change_informacaomensagem'),
(103, 'Can delete informacao mensagem', 26, 'delete_informacaomensagem'),
(104, 'Can view informacao mensagem', 26, 'view_informacaomensagem'),
(105, 'Can add mensagem recebida', 27, 'add_mensagemrecebida'),
(106, 'Can change mensagem recebida', 27, 'change_mensagemrecebida'),
(107, 'Can delete mensagem recebida', 27, 'delete_mensagemrecebida'),
(108, 'Can view mensagem recebida', 27, 'view_mensagemrecebida'),
(109, 'Can add mensagem enviada', 28, 'add_mensagemenviada'),
(110, 'Can change mensagem enviada', 28, 'change_mensagemenviada'),
(111, 'Can delete mensagem enviada', 28, 'delete_mensagemenviada'),
(112, 'Can view mensagem enviada', 28, 'view_mensagemenviada'),
(113, 'Can add ano_letivo', 29, 'add_ano_letivo'),
(114, 'Can change ano_letivo', 29, 'change_ano_letivo'),
(115, 'Can delete ano_letivo', 29, 'delete_ano_letivo'),
(116, 'Can view ano_letivo', 29, 'view_ano_letivo'),
(117, 'Can add acao', 30, 'add_acao'),
(118, 'Can change acao', 30, 'change_acao'),
(119, 'Can delete acao', 30, 'delete_acao'),
(120, 'Can view acao', 30, 'view_acao'),
(121, 'Can add categoria', 31, 'add_categoria'),
(122, 'Can change categoria', 31, 'change_categoria'),
(123, 'Can delete categoria', 31, 'delete_categoria'),
(124, 'Can view categoria', 31, 'view_categoria'),
(125, 'Can add docente uc', 32, 'add_docenteuc'),
(126, 'Can change docente uc', 32, 'change_docenteuc'),
(127, 'Can delete docente uc', 32, 'delete_docenteuc'),
(128, 'Can view docente uc', 32, 'view_docenteuc'),
(129, 'Can add edificio', 33, 'add_edificio'),
(130, 'Can change edificio', 33, 'change_edificio'),
(131, 'Can delete edificio', 33, 'delete_edificio'),
(132, 'Can view edificio', 33, 'view_edificio'),
(133, 'Can add estado pedido', 34, 'add_estadopedido'),
(134, 'Can change estado pedido', 34, 'change_estadopedido'),
(135, 'Can delete estado pedido', 34, 'delete_estadopedido'),
(136, 'Can view estado pedido', 34, 'view_estadopedido'),
(137, 'Can add estado sala', 35, 'add_estadosala'),
(138, 'Can change estado sala', 35, 'change_estadosala'),
(139, 'Can delete estado sala', 35, 'delete_estadosala'),
(140, 'Can view estado sala', 35, 'view_estadosala'),
(141, 'Can add horario', 36, 'add_horario'),
(142, 'Can change horario', 36, 'change_horario'),
(143, 'Can delete horario', 36, 'delete_horario'),
(144, 'Can view horario', 36, 'view_horario'),
(145, 'Can add instituicao', 37, 'add_instituicao'),
(146, 'Can change instituicao', 37, 'change_instituicao'),
(147, 'Can delete instituicao', 37, 'delete_instituicao'),
(148, 'Can view instituicao', 37, 'view_instituicao'),
(149, 'Can add sala', 38, 'add_sala'),
(150, 'Can change sala', 38, 'change_sala'),
(151, 'Can delete sala', 38, 'delete_sala'),
(152, 'Can view sala', 38, 'view_sala'),
(153, 'Can add subpedido_sala', 39, 'add_subpedido_sala'),
(154, 'Can change subpedido_sala', 39, 'change_subpedido_sala'),
(155, 'Can delete subpedido_sala', 39, 'delete_subpedido_sala'),
(156, 'Can view subpedido_sala', 39, 'view_subpedido_sala'),
(157, 'Can add tipo de aulas', 40, 'add_tipodeaulas'),
(158, 'Can change tipo de aulas', 40, 'change_tipodeaulas'),
(159, 'Can delete tipo de aulas', 40, 'delete_tipodeaulas'),
(160, 'Can view tipo de aulas', 40, 'view_tipodeaulas'),
(161, 'Can add uc', 41, 'add_uc'),
(162, 'Can change uc', 41, 'change_uc'),
(163, 'Can delete uc', 41, 'delete_uc'),
(164, 'Can view uc', 41, 'view_uc'),
(165, 'Can add identificador pedido', 42, 'add_identificadorpedido'),
(166, 'Can change identificador pedido', 42, 'change_identificadorpedido'),
(167, 'Can delete identificador pedido', 42, 'delete_identificadorpedido'),
(168, 'Can view identificador pedido', 42, 'view_identificadorpedido'),
(169, 'Can add tipo de pedido', 43, 'add_tipodepedido'),
(170, 'Can change tipo de pedido', 43, 'change_tipodepedido'),
(171, 'Can delete tipo de pedido', 43, 'delete_tipodepedido'),
(172, 'Can view tipo de pedido', 43, 'view_tipodepedido'),
(173, 'Can add outros', 44, 'add_outros'),
(174, 'Can change outros', 44, 'change_outros'),
(175, 'Can delete outros', 44, 'delete_outros'),
(176, 'Can view outros', 44, 'view_outros'),
(177, 'Can add pedido', 45, 'add_pedido'),
(178, 'Can change pedido', 45, 'change_pedido'),
(179, 'Can delete pedido', 45, 'delete_pedido'),
(180, 'Can view pedido', 45, 'view_pedido'),
(181, 'Can add subpedido uc', 46, 'add_subpedidouc'),
(182, 'Can change subpedido uc', 46, 'change_subpedidouc'),
(183, 'Can delete subpedido uc', 46, 'delete_subpedidouc'),
(184, 'Can view subpedido uc', 46, 'view_subpedidouc'),
(185, 'Can add pedido de sala', 47, 'add_pedidodesala'),
(186, 'Can change pedido de sala', 47, 'change_pedidodesala'),
(187, 'Can delete pedido de sala', 47, 'delete_pedidodesala'),
(188, 'Can view pedido de sala', 47, 'view_pedidodesala'),
(189, 'Can add pedido uc', 48, 'add_pedidouc'),
(190, 'Can change pedido uc', 48, 'change_pedidouc'),
(191, 'Can delete pedido uc', 48, 'delete_pedidouc'),
(192, 'Can view pedido uc', 48, 'view_pedidouc'),
(193, 'Can add pedido de parecer', 49, 'add_pedidodeparecer'),
(194, 'Can change pedido de parecer', 49, 'change_pedidodeparecer'),
(195, 'Can delete pedido de parecer', 49, 'delete_pedidodeparecer'),
(196, 'Can view pedido de parecer', 49, 'view_pedidodeparecer'),
(197, 'Can add pedido de horario', 50, 'add_pedidodehorario'),
(198, 'Can change pedido de horario', 50, 'change_pedidodehorario'),
(199, 'Can delete pedido de horario', 50, 'delete_pedidodehorario'),
(200, 'Can view pedido de horario', 50, 'view_pedidodehorario'),
(201, 'Can add pedido outros', 51, 'add_pedidooutros'),
(202, 'Can change pedido outros', 51, 'change_pedidooutros'),
(203, 'Can delete pedido outros', 51, 'delete_pedidooutros'),
(204, 'Can view pedido outros', 51, 'view_pedidooutros'),
(205, 'Can add estado questionario', 52, 'add_estadoquestionario'),
(206, 'Can change estado questionario', 52, 'change_estadoquestionario'),
(207, 'Can delete estado questionario', 52, 'delete_estadoquestionario'),
(208, 'Can view estado questionario', 52, 'view_estadoquestionario'),
(209, 'Can add questionario', 53, 'add_questionario'),
(210, 'Can change questionario', 53, 'change_questionario'),
(211, 'Can delete questionario', 53, 'delete_questionario'),
(212, 'Can view questionario', 53, 'view_questionario'),
(213, 'Can add resposta', 54, 'add_resposta'),
(214, 'Can change resposta', 54, 'change_resposta'),
(215, 'Can delete resposta', 54, 'delete_resposta'),
(216, 'Can view resposta', 54, 'view_resposta'),
(217, 'Can add pergunta', 55, 'add_pergunta'),
(218, 'Can change pergunta', 55, 'change_pergunta'),
(219, 'Can delete pergunta', 55, 'delete_pergunta'),
(220, 'Can view pergunta', 55, 'view_pergunta'),
(221, 'Can add regencia', 56, 'add_regencia'),
(222, 'Can change regencia', 56, 'change_regencia'),
(223, 'Can delete regencia', 56, 'delete_regencia'),
(224, 'Can view regencia', 56, 'view_regencia'),
(225, 'Can add curso', 57, 'add_curso'),
(226, 'Can change curso', 57, 'change_curso'),
(227, 'Can delete curso', 57, 'delete_curso'),
(228, 'Can view curso', 57, 'view_curso'),
(229, 'Can add tipo de regencia', 58, 'add_tipoderegencia'),
(230, 'Can change tipo de regencia', 58, 'change_tipoderegencia'),
(231, 'Can delete tipo de regencia', 58, 'delete_tipoderegencia'),
(232, 'Can view tipo de regencia', 58, 'view_tipoderegencia'),
(233, 'Can add aluno', 59, 'add_aluno'),
(234, 'Can change aluno', 59, 'change_aluno'),
(235, 'Can delete aluno', 59, 'delete_aluno'),
(236, 'Can view aluno', 59, 'view_aluno'),
(237, 'Can add pedido de aluno', 60, 'add_pedidodealuno'),
(238, 'Can change pedido de aluno', 60, 'change_pedidodealuno'),
(239, 'Can delete pedido de aluno', 60, 'delete_pedidodealuno'),
(240, 'Can view pedido de aluno', 60, 'view_pedidodealuno'),
(241, 'Can add tema', 61, 'add_tema'),
(242, 'Can change tema', 61, 'change_tema'),
(243, 'Can delete tema', 61, 'delete_tema'),
(244, 'Can view tema', 61, 'view_tema'),
(245, 'Can add pedido', 62, 'add_pedido'),
(246, 'Can change pedido', 62, 'change_pedido'),
(247, 'Can delete pedido', 62, 'delete_pedido'),
(248, 'Can view pedido', 62, 'view_pedido');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(48, 'pbkdf2_sha256$390000$AvEA6KVKxO3Kaz89AYMjni$MoNXxs89uEuu5lW0MhP2WQCqz0/cDncPOIAYLjwP7tU=', NULL, 0, 'kkkkk', 'kkkk', 'kkkk', 'kkkkk@kkk.com', 0, 1, '2023-03-18 12:26:08.807753'),
(49, 'pbkdf2_sha256$390000$l6VazGomlABzCxxeqDVrEe$yiRi2j7GOdQH1qb43UJ8XdWGyFU0u8IaZTQmwmY8i/w=', NULL, 0, 'ssssssssssss', 'sssssss', 'sssssssss', 'sssssss@ssss.om', 0, 1, '2023-03-18 12:32:41.698425'),
(50, 'pbkdf2_sha256$390000$iwcSmwuMCJRu2vAVvg4i7d$NuUAquvR+bvXzx3S9KskBksPyGDw1FmQ0Pw5wInE+4w=', '2023-05-25 15:50:23.221796', 0, 'Kartic23', 'Kartic', 'Premgi', 'kartic23@gmail.com', 0, 1, '2023-03-18 12:35:43.016633'),
(51, 'pbkdf2_sha256$390000$VWR6MfxH16g6RX7WxW4rHT$dT+DoXCLZr8co5V77lejtEV7h/0TxakyXg+VqyKlCiU=', NULL, 0, 'hjghjghg', 'kjkhjkh', 'jhghghj', 'jgjhg@ytygyu.con', 0, 1, '2023-03-23 15:19:29.173104'),
(52, 'pbkdf2_sha256$390000$PIIhLkJ00HskQxyPQEo9q5$YpfgZTys7YOjyPYbCplp3V/E4DTngjQYU6BMji1RyLE=', '2023-05-25 16:46:24.822327', 0, 'Joana', 'JR', 'JR', 'joana@gmail.com', 0, 1, '2023-04-01 10:20:27.894390'),
(53, 'pbkdf2_sha256$390000$53cEHsfDCMcLr3DxWDrl3O$NfQHOhS9kb/TqFCZNvkj74t+YUscZKRgMPalC3Dy+QE=', '2024-05-19 00:10:28.754537', 0, 'dan23', 'DAN', 'DAN', 'dan23@gmail.com', 0, 1, '2023-05-01 11:11:49.962891'),
(54, 'pbkdf2_sha256$390000$jI7bzSMs9EjpZk4hLGAQmc$CRl4lXI+OjBDx/w0rvX/14LUWmuEezgnMOkpkax1r+E=', NULL, 0, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa@aaaaaa.com', 0, 1, '2023-05-01 13:07:01.698260'),
(120, 'pbkdf2_sha256$390000$00MQbGBKK10AiMI1u2YyZb$SoPLdc5IJdW71d8+36Lz5KxAW1AaA46Q1F/DCghjNcw=', '2024-05-19 01:31:24.876857', 0, 'Docente', 'Docente', 'Docente', 'Docente@gmail.com', 0, 1, '2023-05-21 12:50:42.263749'),
(121, 'pbkdf2_sha256$720000$x6KpbhH4JuQNMpRjEnugaE$KG7GvK9m1FblvAnD3SHkpISiuXpI9P0tnu6ITPmlv3s=', '2024-06-05 16:57:15.011090', 0, 'Funcionario', 'Funcionario', 'Funcionario', 'funcionario_funcionario@outlook.com', 0, 1, '2023-05-21 12:53:43.416541'),
(124, '11594123#', NULL, 0, 'd11594', '', '', 'd11594@ualg.pt', 0, 0, '2023-05-25 17:13:04.153403'),
(125, '10865123#', NULL, 0, 'd10865', '', '', 'd10865@ualg.pt', 0, 0, '2023-05-25 17:13:04.171402'),
(126, '10868123#', NULL, 0, 'd10868', '', '', 'd10868@ualg.pt', 0, 0, '2023-05-25 17:13:04.190403'),
(127, '11021123#', NULL, 0, 'd11021', '', '', 'd11021@ualg.pt', 0, 0, '2023-05-25 17:13:04.224404'),
(128, '11022123#', NULL, 0, 'd11022', '', '', 'd11022@ualg.pt', 0, 0, '2023-05-25 17:13:04.248401'),
(129, '11050123#', NULL, 0, 'd11050', '', '', 'd11050@ualg.pt', 0, 0, '2023-05-25 17:13:04.268400'),
(130, '11524123#', NULL, 0, 'd11524', '', '', 'd11524@ualg.pt', 0, 0, '2023-05-25 17:13:04.280407'),
(131, '11610123#', NULL, 0, 'd11610', '', '', 'd11610@ualg.pt', 0, 0, '2023-05-25 17:13:04.294402'),
(132, '11800123#', NULL, 0, 'd11800', '', '', 'd11800@ualg.pt', 0, 0, '2023-05-25 17:13:04.305406'),
(133, '11856123#', NULL, 0, 'd11856', '', '', 'd11856@ualg.pt', 0, 0, '2023-05-25 17:13:04.317404'),
(134, '12219123#', NULL, 0, 'd12219', '', '', 'd12219@ualg.pt', 0, 0, '2023-05-25 17:13:04.325397'),
(135, '10118123#', NULL, 0, 'd10118', '', '', 'd10118@ualg.pt', 0, 0, '2023-05-25 17:13:04.335399'),
(136, '10698123#', NULL, 0, 'd10698', '', '', 'd10698@ualg.pt', 0, 0, '2023-05-25 17:13:04.344399'),
(137, '10863123#', NULL, 0, 'd10863', '', '', 'd10863@ualg.pt', 0, 0, '2023-05-25 17:13:04.354399'),
(138, '11566123#', NULL, 0, 'd11566', '', '', 'd11566@ualg.pt', 0, 0, '2023-05-25 17:13:04.364400'),
(139, '12919123#', NULL, 0, 'd12919', '', '', 'd12919@ualg.pt', 0, 0, '2023-05-25 17:13:04.374400'),
(140, '14088123#', NULL, 0, 'd14088', '', '', 'd14088@ualg.pt', 0, 0, '2023-05-25 17:13:04.384408'),
(141, 'pbkdf2_sha256$390000$BqI37UOHrcHCTEIuGpLjuN$TEdfrDayNGfHuA9IGF8cVXz3LIiHY2foiJLEaycSgms=', '2024-05-19 00:10:05.017106', 0, 'paula12', 'Paula', 'Ventura', 'paula@ualg.pt', 0, 1, '2023-05-25 17:16:06.264693'),
(142, 'pbkdf2_sha256$720000$ah7b17X7Nd4umKkXUCVriF$gra7XhtPQhNSssqGeWkIQ/EIcTLy/Lk8mqAGsIeobbc=', '2024-06-05 16:56:50.576066', 1, 'admin', '', '', '', 1, 1, '2024-05-17 16:24:06.932471');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(15, 48, 2),
(17, 50, 2),
(18, 51, 2),
(19, 52, 1),
(20, 53, 3),
(21, 54, 1),
(22, 120, 2),
(23, 121, 1),
(24, 141, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`ID`, `Name`) VALUES
(1, 'Sala aula (geral) [10101]\r\n'),
(2, 'Sala aula informática [10201]\r\n'),
(3, 'Sala estudo [10401]\r\n'),
(4, 'Lab. Ensino [20101]\r\n'),
(5, 'Lab. Investigação [20201]\r\n'),
(6, 'Anfiteatro (auditório) [30101]\r\n'),
(7, 'Anfiteatro (área apoio) [30102]\r\n'),
(10, 'Gabinete docentes [40201]\r\n'),
(11, 'Gabinete (serviços) [40401]\r\n'),
(12, 'Sala reuniões/multiusos [40501]\r\n'),
(13, 'Área de apoio (Lab. ens.) [20102]\r\n'),
(14, 'Sala desenho [10301]\r\n'),
(15, 'Área de estudo [10402]\r\n'),
(16, 'Gabinete investigadores [40301]\r\n'),
(17, 'Ginásio [10501]\r\n'),
(18, 'Gabinete (direcção) [40101]\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `curso_nome` varchar(255) DEFAULT NULL,
  `ciclo` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `curso_nome`, `ciclo`, `codigo`) VALUES
(4, 'ENGENHARIA INFORMÁTICA', 2, 1474),
(5, 'ENGENHARIA INFORMÁTICA', 1, 1478),
(6, 'ENGENHARIA INFORMÁTICA', 3, 1566);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`id`, `nome`) VALUES
(1, 'FCT - Dep. Engenharia Electrónica e Informática'),
(2, 'FE - Dep. Economia');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-17 16:24:44.716745', '6', 'EstadoPedido object (6)', 1, '[{\"added\": {}}]', 34, 142),
(2, '2024-05-17 17:03:15.673468', '1', 'EstadoQuestionario object (1)', 1, '[{\"added\": {}}]', 52, 142),
(3, '2024-05-17 17:03:23.533607', '2', 'EstadoQuestionario object (2)', 1, '[{\"added\": {}}]', 52, 142),
(4, '2024-05-17 17:07:53.497903', '3', 'EstadoQuestionario object (3)', 1, '[{\"added\": {}}]', 52, 142),
(5, '2024-05-17 17:08:33.499907', '4', 'EstadoQuestionario object (4)', 1, '[{\"added\": {}}]', 52, 142),
(6, '2024-05-17 17:16:19.665121', '5', 'EstadoQuestionario object (5)', 1, '[{\"added\": {}}]', 52, 142),
(7, '2024-05-17 17:16:41.178376', '1', 'questionario 1', 1, '[{\"added\": {}}]', 53, 142),
(8, '2024-05-17 17:18:10.096882', '5', 'EstadoQuestionario object (5)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 52, 142),
(9, '2024-05-17 17:18:16.838348', '6', 'EstadoQuestionario object (6)', 1, '[{\"added\": {}}]', 52, 142),
(10, '2024-05-17 17:18:21.754816', '7', 'EstadoQuestionario object (7)', 1, '[{\"added\": {}}]', 52, 142),
(11, '2024-05-17 17:31:04.272867', '1', 'questionario 1', 3, '', 53, 142),
(12, '2024-05-17 17:34:02.260027', '2', 'questionario 1', 1, '[{\"added\": {}}]', 53, 142),
(13, '2024-05-17 23:17:48.068637', '2', 'questionario 1', 2, '[]', 53, 142),
(14, '2024-05-17 23:18:35.012185', '1', 'pergunta 1', 1, '[{\"added\": {}}]', 55, 142),
(15, '2024-05-17 23:19:57.664197', '2', 'Idade', 1, '[{\"added\": {}}]', 55, 142),
(16, '2024-05-17 23:20:22.046095', '3', 'Curso', 1, '[{\"added\": {}}]', 55, 142),
(17, '2024-05-17 23:20:32.690931', '4', 'Pais', 1, '[{\"added\": {}}]', 55, 142),
(18, '2024-05-17 23:20:58.185520', '1', 'Campus', 2, '[{\"changed\": {\"fields\": [\"Texto\", \"Opcao1\", \"Opcao2\", \"Tipo\"]}}]', 55, 142),
(19, '2024-05-18 00:19:01.417014', '3', 'Curso', 2, '[]', 55, 142),
(20, '2024-05-18 15:40:05.934216', '5', 'teste1', 1, '[{\"added\": {}}]', 55, 142),
(21, '2024-05-18 15:58:29.498442', '5', 'teste1', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(22, '2024-05-18 15:58:38.600357', '5', 'teste1', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(23, '2024-05-18 15:58:54.795491', '5', 'teste1', 3, '', 55, 142),
(24, '2024-05-18 15:59:00.163400', '4', 'Pais', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(25, '2024-05-18 15:59:04.866879', '4', 'Pais', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(26, '2024-05-18 15:59:13.487299', '3', 'Curso', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(27, '2024-05-18 15:59:17.018084', '3', 'Curso', 2, '[{\"changed\": {\"fields\": [\"Tipo\"]}}]', 55, 142),
(28, '2024-05-18 16:05:27.304058', '2', 'Idade', 2, '[{\"changed\": {\"fields\": [\"Opcao1\"]}}]', 55, 142),
(29, '2024-05-18 16:05:38.331055', '2', 'Idade', 2, '[{\"changed\": {\"fields\": [\"Opcao1\"]}}]', 55, 142),
(30, '2024-05-18 17:03:17.627281', '1', 'Resposta: 1', 1, '[{\"added\": {}}]', 54, 142),
(31, '2024-05-18 17:03:20.750164', '2', 'Resposta: 1', 1, '[{\"added\": {}}]', 54, 142),
(32, '2024-05-18 17:03:24.137056', '3', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(33, '2024-05-18 17:03:30.063016', '4', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(34, '2024-05-18 17:03:34.594831', '5', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(35, '2024-05-18 17:03:38.035873', '6', 'Resposta: 3', 1, '[{\"added\": {}}]', 54, 142),
(36, '2024-05-18 17:03:42.132497', '7', 'Resposta: 4', 1, '[{\"added\": {}}]', 54, 142),
(37, '2024-05-18 17:03:47.241880', '8', 'Resposta: lei', 1, '[{\"added\": {}}]', 54, 142),
(38, '2024-05-18 17:03:52.227868', '9', 'Resposta: lei', 1, '[{\"added\": {}}]', 54, 142),
(39, '2024-05-18 17:03:56.872366', '10', 'Resposta: pt', 1, '[{\"added\": {}}]', 54, 142),
(40, '2024-05-18 17:04:02.280703', '11', 'Resposta: pt', 1, '[{\"added\": {}}]', 54, 142),
(41, '2024-05-18 17:04:06.030237', '12', 'Resposta: de', 1, '[{\"added\": {}}]', 54, 142),
(42, '2024-05-18 21:01:29.009228', '2', 'questionario 1', 2, '[]', 53, 142),
(43, '2024-05-18 21:07:54.295207', '8', 'EstadoQuestionario object (8)', 1, '[{\"added\": {}}]', 52, 142),
(44, '2024-05-18 21:08:02.862411', '5', 'EstadoQuestionario object (5)', 2, '[]', 52, 142),
(45, '2024-05-19 00:46:45.771039', '1', 'TipoDePedido object (1)', 2, '[]', 43, 142),
(46, '2024-05-19 00:46:51.182802', '5', 'TipoDePedido object (5)', 1, '[{\"added\": {}}]', 43, 142),
(47, '2024-05-19 01:28:08.832404', '21', 'Rapidez', 1, '[{\"added\": {}}]', 55, 142),
(48, '2024-05-19 01:30:26.937841', '22', 'Satisfação', 1, '[{\"added\": {}}]', 55, 142),
(49, '2024-05-19 01:41:32.908645', '13', 'Resposta: 4', 1, '[{\"added\": {}}]', 54, 142),
(50, '2024-05-19 01:41:40.186831', '14', 'Resposta: 5', 1, '[{\"added\": {}}]', 54, 142),
(51, '2024-05-19 01:41:44.675590', '15', 'Resposta: 3', 1, '[{\"added\": {}}]', 54, 142),
(52, '2024-05-19 01:41:48.199564', '16', 'Resposta: 4', 1, '[{\"added\": {}}]', 54, 142),
(53, '2024-05-19 01:41:51.715990', '17', 'Resposta: 3', 1, '[{\"added\": {}}]', 54, 142),
(54, '2024-05-19 01:41:54.965052', '18', 'Resposta: 3', 1, '[{\"added\": {}}]', 54, 142),
(55, '2024-05-19 01:41:57.971671', '19', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(56, '2024-05-19 01:42:01.725865', '20', 'Resposta: 1', 1, '[{\"added\": {}}]', 54, 142),
(57, '2024-05-19 01:42:05.051205', '21', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(58, '2024-05-19 01:42:09.310207', '22', 'Resposta: 4', 1, '[{\"added\": {}}]', 54, 142),
(59, '2024-06-05 16:37:16.541403', '23', 'Resposta: 2', 1, '[{\"added\": {}}]', 54, 142),
(60, '2024-06-05 16:55:47.694838', '24', 'Resposta: 12345', 1, '[{\"added\": {}}]', 54, 142),
(61, '2024-06-05 16:56:58.147790', '25', 'Resposta: aefgvefv', 1, '[{\"added\": {}}]', 54, 142),
(62, '2024-06-05 16:57:00.853934', '26', 'Resposta: vdfvdfv', 1, '[{\"added\": {}}]', 54, 142),
(63, '2024-06-05 16:57:06.919781', '27', 'Resposta: edsvdfve', 1, '[{\"added\": {}}]', 54, 142);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(29, 'anoletivo', 'ano_letivo'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(57, 'importacoes', 'curso'),
(56, 'importacoes', 'regencia'),
(58, 'importacoes', 'tipoderegencia'),
(7, 'main', 'authgroup'),
(8, 'main', 'authgrouppermissions'),
(9, 'main', 'authpermission'),
(10, 'main', 'authuser'),
(11, 'main', 'authusergroups'),
(12, 'main', 'authuseruserpermissions'),
(13, 'main', 'departamento'),
(14, 'main', 'djangoadminlog'),
(15, 'main', 'djangocontenttype'),
(16, 'main', 'djangomigrations'),
(17, 'main', 'djangosession'),
(23, 'main', 'docente'),
(18, 'main', 'faculdade'),
(21, 'main', 'funcionario'),
(19, 'main', 'gabinete'),
(22, 'main', 'pcp'),
(20, 'main', 'utilizador'),
(26, 'notificacoes', 'informacaomensagem'),
(25, 'notificacoes', 'informacaonotificacao'),
(28, 'notificacoes', 'mensagemenviada'),
(27, 'notificacoes', 'mensagemrecebida'),
(24, 'notificacoes', 'notificacao'),
(30, 'pedidos', 'acao'),
(59, 'pedidos', 'aluno'),
(31, 'pedidos', 'categoria'),
(32, 'pedidos', 'docenteuc'),
(33, 'pedidos', 'edificio'),
(34, 'pedidos', 'estadopedido'),
(52, 'pedidos', 'estadoquestionario'),
(35, 'pedidos', 'estadosala'),
(36, 'pedidos', 'horario'),
(42, 'pedidos', 'identificadorpedido'),
(37, 'pedidos', 'instituicao'),
(44, 'pedidos', 'outros'),
(45, 'pedidos', 'pedido'),
(60, 'pedidos', 'pedidodealuno'),
(50, 'pedidos', 'pedidodehorario'),
(49, 'pedidos', 'pedidodeparecer'),
(47, 'pedidos', 'pedidodesala'),
(51, 'pedidos', 'pedidooutros'),
(48, 'pedidos', 'pedidouc'),
(55, 'pedidos', 'pergunta'),
(53, 'pedidos', 'questionario'),
(54, 'pedidos', 'resposta'),
(38, 'pedidos', 'sala'),
(46, 'pedidos', 'subpedidouc'),
(39, 'pedidos', 'subpedido_sala'),
(61, 'pedidos', 'tema'),
(40, 'pedidos', 'tipodeaulas'),
(43, 'pedidos', 'tipodepedido'),
(41, 'pedidos', 'uc'),
(62, 'relatorios', 'pedido'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-17 13:37:38.048380'),
(2, 'auth', '0001_initial', '2023-03-17 13:37:38.573880'),
(3, 'admin', '0001_initial', '2023-03-17 13:37:38.714143'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-17 13:37:38.745855'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-17 13:37:38.753314'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-17 13:37:38.816541'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-17 13:37:38.877781'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-17 13:37:38.895786'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-17 13:37:38.903787'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-17 13:37:39.014494'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-17 13:37:39.024583'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-17 13:37:39.032986'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-17 13:37:39.050124'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-17 13:37:39.066121'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-17 13:37:39.083124'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-17 13:37:39.091126'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-17 13:37:39.106766'),
(18, 'main', '0001_initial', '2023-03-17 13:37:39.131542'),
(19, 'main', '0002_delete_pedido_outros', '2023-03-17 13:37:39.142543'),
(20, 'sessions', '0001_initial', '2023-03-17 13:37:39.179959'),
(21, 'anoletivo', '0001_initial', '2024-05-17 16:18:25.024225'),
(22, 'importacoes', '0001_initial', '2024-05-17 16:18:25.172965'),
(23, 'pedidos', '0001_initial', '2024-05-17 16:18:25.223023'),
(24, 'pedidos', '0002_pergunta_questionario_resposta_pergunta_questionario', '2024-05-17 16:18:25.316447'),
(25, 'pedidos', '0003_remove_questionario_estado', '2024-05-17 16:18:25.399450'),
(26, 'pedidos', '0004_estadoquestionario', '2024-05-17 16:18:25.527750'),
(27, 'pedidos', '0005_delete_estadoquestionario', '2024-05-17 16:18:25.634708'),
(28, 'pedidos', '0006_estadoquestionario', '2024-05-17 16:18:25.761675'),
(29, 'pedidos', '0007_alter_estadoquestionario_options_questionario_estado', '2024-05-17 16:18:25.902900'),
(30, 'pedidos', '0008_remove_questionario_estado_and_more', '2024-05-17 16:18:25.930927'),
(31, 'pedidos', '0009_remove_resposta_pergunta_delete_pergunta_and_more', '2024-05-17 16:18:25.969327'),
(32, 'pedidos', '0010_delete_estadoquestionario', '2024-05-17 16:18:25.996339'),
(33, 'pedidos', '0011_estadoquestionario', '2024-05-17 16:18:26.036614'),
(34, 'pedidos', '0012_pergunta_resposta_questionario_pergunta_questionario', '2024-05-17 16:18:26.064153'),
(35, 'pedidos', '0013_centrodeinvestigacao', '2024-05-17 16:18:26.104232'),
(36, 'pedidos', '0014_pedidodeparecer', '2024-05-17 16:18:26.131161'),
(37, 'pedidos', '0015_pedidodeparecer_estado', '2024-05-17 16:18:26.170755'),
(38, 'pedidos', '0016_remove_pedidodeparecer_estado', '2024-05-17 16:18:26.210407'),
(39, 'pedidos', '0017_pedidodeparecer_estado', '2024-05-17 16:18:26.238742'),
(40, 'pedidos', '0018_alter_pedidodeparecer_estado', '2024-05-17 16:18:26.275605'),
(41, 'pedidos', '0019_remove_pedidodeparecer_estado', '2024-05-17 16:18:26.304780'),
(42, 'pedidos', '0020_pedidodeparecer_estado', '2024-05-17 16:18:26.342747'),
(43, 'pedidos', '0021_remove_pedidodeparecer_estado', '2024-05-17 16:18:26.371853'),
(44, 'pedidos', '0022_pedidodeparecer_estado', '2024-05-17 16:18:26.410050'),
(45, 'pedidos', '0023_alter_pedidodeparecer_estado', '2024-05-17 16:18:26.439152'),
(46, 'pedidos', '0024_remove_pedidodeparecer_estado', '2024-05-17 16:18:26.477885'),
(47, 'pedidos', '0025_remove_pedidodeparecer_centro_de_investigacao_and_more', '2024-05-17 16:18:26.505923'),
(48, 'pedidos', '0026_pedidodeparecer', '2024-05-17 16:18:26.534282'),
(49, 'pedidos', '0027_estudante', '2024-05-17 16:18:26.573978'),
(50, 'pedidos', '0028_delete_estudante_remove_pedidodeparecer_pedido_ptr_and_more', '2024-05-17 16:18:26.640058'),
(51, 'pedidos', '0029_estadoquestionario_pedidodeparecer_pergunta_resposta_and_more', '2024-05-17 16:20:34.072633'),
(52, 'pedidos', '0030_aluno_pedidodealuno_tema_and_more', '2024-05-17 16:37:40.514305'),
(53, 'pedidos', '0031_estadoquestionario', '2024-05-17 16:59:07.216687'),
(54, 'pedidos', '0032_alter_questionario_estado', '2024-05-17 17:07:30.357768'),
(55, 'pedidos', '0033_pergunta_tema', '2024-05-17 23:11:10.703649'),
(56, 'pedidos', '0034_remove_resposta_valor_resposta_resposta_opcao_and_more', '2024-05-17 23:37:11.096766'),
(57, 'pedidos', '0035_rename_resposta_opcao_resposta_valor_and_more', '2024-05-18 15:58:02.492377'),
(58, 'pedidos', '0036_pergunta_tema', '2024-05-18 20:28:06.693638'),
(59, 'pedidos', '0037_alter_questionario_estado', '2024-05-18 21:12:18.180641'),
(60, 'pedidos', '0038_pedidodeparecer_delete_aluno', '2024-05-19 00:03:07.738143'),
(61, 'relatorios', '0001_initial', '2024-06-04 16:07:17.873324'),
(62, 'relatorios', '0002_remove_pedido_status_pedido_data_de_validacao_and_more', '2024-06-04 16:07:17.893822');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7yubiz8bg7jyum0h8qllen3gvhm30oue', '.eJxVjDsOwjAQBe_iGlnedeIPJT1niNbeDQ4gR4qTCnF3iJQC2jcz76UG2tYybE2WYWJ1VoCgTr9rovyQuiO-U73NOs91Xaakd0UftOnrzPK8HO7fQaFWvrVDL2BDHENnumhNZx2kaILpgYlSEHAePFiDmQSJCdChJLbUjyaPrN4f8rU3tg:1s8Va1:9hyrqIM77vyUw6nzDleu55Cjg9y1FOKuXORs4dwFqK4', '2024-06-02 01:43:17.312262'),
('9t3gegjr4peytcu3iw3h57vkotpj5g4u', '.eJxVjEEOwiAQRe_C2pB2aBlw6d4zkBmYStVAUtqV8e7apAvd_vfef6lA25rD1mQJc1JnNYI6_Y5M8SFlJ-lO5VZ1rGVdZta7og_a9LUmeV4O9-8gU8vfuh9ShyDiux7BRwsOYQTjiHvigYxEnGDqjDcJneM0IhNYEufdZCNa9f4A7UI3tw:1prgtS:e-TQZPDJ9izVCIxPDgGVnTZtPj6p28Z3rZijMzGSg8Y', '2023-05-10 15:17:18.532636'),
('hu3218vgv0wgrbxllpynqwozvijfybc8', '.eJxVjMsOwiAQRf-FtSEgb5fu-w1kYBipGkhKuzL-uzbpQrf3nHNfLMK21riNssQZ2YUZwU6_Y4L8KG0neId26zz3ti5z4rvCDzr41LE8r4f7d1Bh1G_tgECXQNZk6SyqoAuIcBbeGZkpOKdIF20tSJJeJ7QevZJBkqUkvFHs_QEDTjeX:1pgl8S:5Ixg4uvN3jOkOL8QW6R-HLP16KkDoO55iEl4ofm1YMw', '2023-04-10 11:35:36.296536'),
('k0i3lbz7379tssknf6v9cejd1ipkrmlk', '.eJxVjMsOwiAQRf-FtSE8OsC4dO83kBlAqRqalHZl_HfbpAvd3nPOfYtI61Lj2sscxyzOQhslTr8rU3qWtqP8oHafZJraMo8sd0UetMvrlMvrcrh_B5V63WpiYyxoZmctOggJeHAAWIIKJiuVLKaAinhz3E0P3gUk0Flb9uhBic8XAbA25w:1q2Gkh:xnfrN4dxEXaIwZeA7aP7K0pWFeabKxZ4g_iy2dM0D1Y', '2023-06-08 19:35:59.840979'),
('lerruz29p9kn3mlhh0ttl59qex2xjz5q', '.eJxVjEEOwiAQRe_C2hCgUIpL9z0DGWYGqRqalHZlvLtt0oVu_3vvv0WEbS1xa7zEicRVOCUuv2MCfHI9CD2g3meJc12XKclDkSdtcpyJX7fT_Tso0MpecwAILnnVU-q0VxwyY7boyQ_ZGt0pHIxR1rhe20A57Z72FpgALWgWny8UhDiN:1q0O4v:yZ1uyHvfv-LzKZaMF-e8WEKNrNXUVjS5fulUJp1iWq8', '2023-06-03 15:01:05.976616'),
('y589t5r9gux6jsl1msct9n0uzagjzsa0', '.eJxVjMsOwiAQRf-FtSE8OsC4dO83kBlAqRqalHZl_HfbpAvd3nPOfYtI61Lj2sscxyzOQhslTr8rU3qWtqP8oHafZJraMo8sd0UetMvrlMvrcrh_B5V63WpiYyxoZmctOggJeHAAWIIKJiuVLKaAinhz3E0P3gUk0Flb9uhBic8XAbA25w:1q0l6Y:KYePB2pvqC8-tiL9jpfgFynE_YaTfaLL_HaRAn8-JUQ', '2023-06-04 15:36:18.629933'),
('yifafvmcw6iwj66ir3kww0tc2pmenrrt', '.eJxVjDsOgzAQRO_iOrL8AWOnTM8ZrLV3NyaJsIShinL3gESRaLp5b-YtImxriVujJU4orkIbLS6_bYL8pPlA-ID5XmWu87pMSR6KPGmTY0V63U7376BAK_s6J0XKdWaP753LrDuw3g7JoXdaMzH3iIoQBwzWMCjQKbgUwkBsPIvPFyabOKM:1sEtwp:5IoOsklAfGcL09sWv_FKPbNl5empyNGrVkk0sumvmnE', '2024-06-19 16:57:15.013592');

-- --------------------------------------------------------

--
-- Estrutura da tabela `docente`
--

CREATE TABLE `docente` (
  `utilizador_ptr_id` int(11) NOT NULL,
  `Faculdadeid` int(11) DEFAULT NULL,
  `Departamentoid` int(11) DEFAULT NULL,
  `Gabineteid` int(11) DEFAULT NULL,
  `ano_letivoid` int(11) DEFAULT NULL,
  `Codigo` int(11) DEFAULT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Ativo` char(1) DEFAULT NULL,
  `Individuo` int(11) DEFAULT NULL,
  `Data_de_nascimento` date DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Tipo_de_identificacao` int(11) DEFAULT NULL,
  `Identificacao` varchar(255) DEFAULT NULL,
  `Data_de_emissao_de_identificacao` date DEFAULT NULL,
  `Nacionalidade` int(11) DEFAULT NULL,
  `Arquivo` int(11) DEFAULT NULL,
  `Data_de_validade_de_identificacao` date DEFAULT NULL,
  `Nif` int(11) DEFAULT NULL,
  `Pais_fiscal` int(11) DEFAULT NULL,
  `Digito_verificacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `docente`
--

INSERT INTO `docente` (`utilizador_ptr_id`, `Faculdadeid`, `Departamentoid`, `Gabineteid`, `ano_letivoid`, `Codigo`, `Nome`, `Email`, `Ativo`, `Individuo`, `Data_de_nascimento`, `Sexo`, `Tipo_de_identificacao`, `Identificacao`, `Data_de_emissao_de_identificacao`, `Nacionalidade`, `Arquivo`, `Data_de_validade_de_identificacao`, `Nif`, `Pais_fiscal`, `Digito_verificacao`) VALUES
(26, 1, 2, 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 1, 1, 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 1, 1, 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 1, 2, 1, NULL, 2333, 'João Paulo Dias Fernandes', 'jpdf@gmail.com', NULL, NULL, '2002-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, 10698, 'ANTÓNIO EDUARDO DE BARROS RUANO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, 11800, 'MARIELBA SILVA DE ZACARIAS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, 12219, 'PEDRO JOÃO VALENTE DIAS GUERREIRO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, 10543, 'JOÃO MIGUEL GAGO PONTES DE BRITO LIMA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, 10118, 'MARIA DA GRAÇA CRISTO DOS SANTOS LOPES RUANO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, 11261, 'DIANA FERREIRA RODELO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, 12919, 'JOEL DAVID VALENTE GUERREIRO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, 11050, 'HELDER ANICETO AMADEU DE SOUSA DANIEL', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, 11856, 'AMINE BERQIA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, 14088, 'JOAO MIGUEL DE SOUSA DE ASSIS DIAS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, 11244, 'NELSON GOMES RODRIGUES ANTUNES', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, 11213, 'CELESTINO ANTÓNIO MADURO COELHO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, 11306, 'RAÚL JOSÉ JORGE DE BARROS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, 11610, 'FERNANDO MIGUEL PAIS DA GRAÇA LOBO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, 11971, 'SOFIA ISABEL GOMES VAIRINHO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, 11632, 'MARIA LEONOR NUNES RIBEIRO CRUZEIRO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, 11772, 'DANIEL DA SILVA GRAÇA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, 11594, 'JOSÉ LUÍS VALENTE DE OLIVEIRA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, 11021, 'NOÉLIA SUSANA COSTA CORREIA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, 10863, 'PAULA CRISTINA NEGRÃO VENTURA MARTINS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, 11351, 'JOSÉ MANUEL AGUIAR TAVARES BASTOS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, 11022, 'ÁLVARO DE MASCARENHAS PEREIRA DO NASCIMENTO DE LIMA BARRADAS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, 10662, 'SÉRGIO MANUEL MACHADO JESUS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, 10868, 'MARIA MARGARIDA DA CRUZ SILVA ANDRADE MADEIRA E CARVALHO DE MOURA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, NULL, NULL, 14184, 'NUNO MIGUEL FORRA ALMEIDA', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, 11779, 'JÚLIO CARLOS BOTEQUILHA FERNANDES', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, 11432, 'LUIS MANUEL PISCO RODRIGUES', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, 2110, 'ADRIANO PIRES', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, 11566, 'Peter Stallinga', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, 80071, 'Docente A Contratar FCT 1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 1, 1, 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, 1, 10865, 'JOHANNES MARTINUS HUBERTINA DU BUF', '', 'S', 53386, NULL, 'M', 2, 'NTH11RP81', NULL, 170, NULL, NULL, 111111111, 0, 0),
(123, NULL, NULL, NULL, 1, 11524, 'HAMID REZA SHAHBAZKIA', '', 'S', 53671, NULL, 'M', 2, 'E0705767', NULL, 79, NULL, NULL, 111111111, 0, 0),
(124, NULL, NULL, NULL, 1, 11594, 'JOSÉ LUÍS VALENTE DE OLIVEIRA', '', 'S', 52990, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(125, NULL, NULL, NULL, 1, 10865, 'JOHANNES MARTINUS HUBERTINA DU BUF', '', 'S', 53386, '1990-01-25', 'M', 2, 'NTH11RP81', NULL, 170, NULL, NULL, 111111111, 0, 0),
(126, NULL, NULL, NULL, 1, 10868, 'MARIA MARGARIDA DA CRUZ SILVA ANDRADE MADEIRA E CARVALHO DE MOURA', '', 'S', 53389, '1990-01-25', 'F', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(127, NULL, NULL, NULL, 1, 11021, 'NOÉLIA SUSANA COSTA CORREIA', '', 'S', 53436, '1990-01-25', 'F', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(128, NULL, NULL, NULL, 1, 11022, 'ÁLVARO DE MASCARENHAS PEREIRA DO NASCIMENTO DE LIMA BARRADAS', '', 'S', 53437, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(129, NULL, NULL, NULL, 1, 11050, 'HELDER ANICETO AMADEU DE SOUSA DANIEL', '', 'S', 53457, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(130, NULL, NULL, NULL, 1, 11524, 'HAMID REZA SHAHBAZKIA', '', 'S', 53671, '1990-01-25', 'M', 2, 'E0705767', NULL, 79, NULL, NULL, 111111111, 0, 0),
(131, NULL, NULL, NULL, 1, 11610, 'FERNANDO MIGUEL PAIS DA GRAÇA LOBO', '', 'S', 53705, '1990-01-25', 'M', 1, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(132, NULL, NULL, NULL, 1, 11800, 'MARIELBA SILVA DE ZACARIAS', '', 'S', 53771, '1990-01-25', 'F', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 1, 0),
(133, NULL, NULL, NULL, 1, 11856, 'AMINE BERQIA', '', 'S', 53792, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(134, NULL, NULL, NULL, 1, 12219, 'PEDRO JOÃO VALENTE DIAS GUERREIRO', '', 'S', 53948, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(135, NULL, NULL, NULL, 1, 10118, 'MARIA DA GRAÇA CRISTO DOS SANTOS LOPES RUANO', '', 'S', 54242, '1990-01-25', 'F', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(136, NULL, NULL, NULL, 1, 10698, 'ANTÓNIO EDUARDO DE BARROS RUANO', '', 'S', 53304, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(137, NULL, NULL, NULL, 1, 10863, 'PAULA CRISTINA NEGRÃO VENTURA MARTINS', '', 'S', 53384, '1990-01-25', 'F', 1, '11111111.0', NULL, 1, NULL, NULL, 111111111, 0, 0),
(138, NULL, NULL, NULL, 1, 11566, 'PETER STALLINGA', '', 'S', 52970, '1990-01-25', 'M', 2, 'NN1HC9K21', NULL, 170, NULL, NULL, 111111111, 0, 0),
(139, NULL, NULL, NULL, 1, 12919, 'JOEL DAVID VALENTE GUERREIRO', '', 'S', 58738, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 1, 0),
(140, NULL, NULL, NULL, 1, 14088, 'JOAO MIGUEL DE SOUSA DE ASSIS DIAS', '', 'S', 81340, '1990-01-25', 'M', 4, '11111111.0', NULL, 1, NULL, NULL, 111111111, 1, 0),
(141, 1, 1, 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `docente_uc`
--

CREATE TABLE `docente_uc` (
  `DocenteUtilizadorID` int(11) NOT NULL,
  `UCID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `docente_uc`
--

INSERT INTO `docente_uc` (`DocenteUtilizadorID`, `UCID`) VALUES
(91, 276),
(93, 268),
(97, 296),
(98, 305),
(99, 293),
(103, 282),
(107, 297),
(108, 301),
(109, 287),
(110, 300),
(113, 304),
(118, 292),
(119, 291);

-- --------------------------------------------------------

--
-- Estrutura da tabela `edificio`
--

CREATE TABLE `edificio` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `edificio`
--

INSERT INTO `edificio` (`ID`, `Name`) VALUES
(1, 'Edifício 1 (Gambelas)'),
(2, 'Edifício 2 (Gambelas)'),
(3, 'Complexo pedagógico (Gambelas)'),
(4, 'Edifício 5 (Gambelas)'),
(5, 'Edifício 7 (Gambelas)'),
(6, 'Edifício 8 (Gambelas)'),
(7, 'Pavilhões de Madeira (Gambelas)'),
(8, 'Pavilhões Alvenaria (Gambelas)'),
(9, 'Edifício LEOA (Gambelas)'),
(10, 'Edifício ESGHT (Penha)'),
(11, 'Edifício ESEC (Penha)'),
(12, 'Edifício ISE (central) (Penha)'),
(13, 'Edifício \"U\" - ISE (Penha)'),
(14, 'Edifício Dep. Engª Civil - ISE (Penha)'),
(15, 'Complexo Pedagógico (Penha)'),
(16, 'Edifício da Biblioteca (Penha)'),
(17, 'Complexo Pedagógico - Anfiteatros (Penha)'),
(18, 'Edifício das Oficinas (Penha)'),
(19, 'Antiga Casa do Reitor (Penha)'),
(20, 'Edifício ESS (Saúde)'),
(21, 'Edificio do Campus de Portimão'),
(22, 'Cantina Penha'),
(23, 'Cantina Gambelas'),
(24, 'Edifício do Horto (Gambelas)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_pedido`
--

CREATE TABLE `estado_pedido` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estado_pedido`
--

INSERT INTO `estado_pedido` (`id`, `estado`) VALUES
(1, 'Pendente'),
(2, 'Em análise'),
(3, 'Aceite'),
(4, 'Rejeitado'),
(6, 'Arquivado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_questionario`
--

CREATE TABLE `estado_questionario` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estado_questionario`
--

INSERT INTO `estado_questionario` (`id`, `estado`) VALUES
(5, 'Ativo'),
(6, 'Inativo'),
(7, 'Arquivado'),
(8, 'Valido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_sala`
--

CREATE TABLE `estado_sala` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estado_sala`
--

INSERT INTO `estado_sala` (`id`, `estado`) VALUES
(1, 'Disponivel'),
(2, 'Indisponivel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faculdade`
--

CREATE TABLE `faculdade` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `faculdade`
--

INSERT INTO `faculdade` (`id`, `nome`) VALUES
(1, 'Faculdade de Ciências e Tecnologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `utilizador_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`utilizador_ptr_id`) VALUES
(45),
(47),
(52),
(53),
(54),
(121);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gabinete`
--

CREATE TABLE `gabinete` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `gabinete`
--

INSERT INTO `gabinete` (`id`, `nome`) VALUES
(1, '2.56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `ID` int(11) NOT NULL,
  `acao` varchar(255) DEFAULT NULL,
  `data_h` date NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `antigodata_h` date DEFAULT NULL,
  `antigohora_inicial` time DEFAULT NULL,
  `antigohora_final` time DEFAULT NULL,
  `antigodescricao` varchar(255) DEFAULT NULL,
  `pedido_ptr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`ID`, `acao`, `data_h`, `hora_inicial`, `hora_final`, `descricao`, `antigodata_h`, `antigohora_inicial`, `antigohora_final`, `antigodescricao`, `pedido_ptr_id`) VALUES
(4, 'criar', '2023-06-02', '19:51:00', '22:51:00', 'Teste kds', NULL, NULL, NULL, '', 11),
(5, 'alterar', '2023-05-31', '21:57:00', '23:56:00', 'Teste Uficheiro', NULL, NULL, NULL, '', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `identificador_pedido`
--

CREATE TABLE `identificador_pedido` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `identificador_pedido`
--

INSERT INTO `identificador_pedido` (`id`, `nome`) VALUES
(1, 'Subpedidos'),
(2, 'Ficheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacaomensagem`
--

CREATE TABLE `informacaomensagem` (
  `id` int(11) NOT NULL,
  `data` datetime(6) NOT NULL,
  `pendente` tinyint(1) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `lido` tinyint(1) NOT NULL,
  `emissorid` int(11) DEFAULT NULL,
  `recetorid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `informacaomensagem`
--

INSERT INTO `informacaomensagem` (`id`, `data`, `pendente`, `titulo`, `descricao`, `tipo`, `lido`, `emissorid`, `recetorid`) VALUES
(204, '2023-05-21 14:38:29.630435', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(203, '2023-05-21 14:38:29.629439', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 1, 120, 121),
(202, '2023-05-21 14:38:29.629439', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 54),
(201, '2023-05-21 14:38:29.628435', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 53),
(200, '2023-05-21 14:38:29.626436', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 52),
(15, '2023-05-12 12:48:05.499685', 1, 'Criação de novo pedido', 'O docente Kartic23 registou um novo Pedido.', 'Grupo', 1, 50, 52),
(16, '2023-05-12 12:48:05.500685', 1, 'Criação de novo pedido', 'O docente Kartic23 registou um novo Pedido.', 'Grupo', 0, 50, 53),
(17, '2023-05-12 12:48:05.500685', 1, 'Criação de novo pedido', 'O docente Kartic23 registou um novo Pedido.', 'Grupo', 0, 50, 54),
(18, '2023-05-12 12:54:41.478423', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(19, '2023-05-12 12:54:41.479424', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(20, '2023-05-12 12:54:41.479424', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(21, '2023-05-12 12:54:41.480424', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(22, '2023-05-12 12:54:41.480424', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(23, '2023-05-12 12:55:04.935040', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(24, '2023-05-12 12:55:04.936043', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(25, '2023-05-12 12:55:04.937041', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(26, '2023-05-12 12:55:04.937041', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(27, '2023-05-12 12:55:04.938041', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(28, '2023-05-12 12:55:52.442930', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(29, '2023-05-12 12:55:52.443926', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(30, '2023-05-12 12:55:52.444925', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(31, '2023-05-12 12:55:52.444925', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(32, '2023-05-12 12:55:52.445931', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(33, '2023-05-12 12:55:52.445931', 0, 'Pedido Criado com sucesso', 'Pedido xpto', 'Individual', 0, NULL, 50),
(34, '2023-05-12 12:56:32.091785', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(35, '2023-05-12 12:56:32.093786', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(36, '2023-05-12 12:56:32.093786', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(37, '2023-05-12 12:56:32.094799', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(38, '2023-05-12 12:56:32.094799', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(39, '2023-05-12 12:56:32.095804', 0, 'Pedido Criado com sucesso', 'Pedido xpto', 'Individual', 1, NULL, 50),
(40, '2023-05-12 13:02:51.990373', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(41, '2023-05-12 13:02:51.991374', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(42, '2023-05-12 13:02:51.992375', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(43, '2023-05-12 13:02:51.992375', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(44, '2023-05-12 13:02:51.993374', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(45, '2023-05-12 13:03:19.623147', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(46, '2023-05-12 13:03:19.624148', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(47, '2023-05-12 13:03:19.624148', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(48, '2023-05-12 13:03:19.625147', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(49, '2023-05-12 13:03:19.625147', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(50, '2023-05-12 13:04:10.975200', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(51, '2023-05-12 13:04:10.976200', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(52, '2023-05-12 13:04:10.976200', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(53, '2023-05-12 13:04:10.977199', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(54, '2023-05-12 13:04:10.978200', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(55, '2023-05-12 13:04:36.635080', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(56, '2023-05-12 13:04:36.636081', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(57, '2023-05-12 13:04:36.637083', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(58, '2023-05-12 13:04:36.638082', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(59, '2023-05-12 13:04:36.638082', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(60, '2023-05-12 13:04:59.143403', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(61, '2023-05-12 13:04:59.145404', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(62, '2023-05-12 13:04:59.145404', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 1, 50, 52),
(63, '2023-05-12 13:04:59.146411', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(64, '2023-05-12 13:04:59.146411', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(65, '2023-05-12 13:04:59.148416', 0, 'Pedido Criado com sucesso', 'Ainda têm 8 pedidos pela frente.', 'Individual', 1, NULL, 50),
(66, '2023-05-12 16:45:15.934492', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(67, '2023-05-12 16:45:15.942516', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(68, '2023-05-12 16:45:15.943535', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(69, '2023-05-12 16:45:15.944535', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(70, '2023-05-12 16:45:15.944535', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(71, '2023-05-12 16:45:15.946536', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(72, '2023-05-13 10:51:09.427388', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(73, '2023-05-13 10:51:09.429395', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(74, '2023-05-13 10:51:09.429395', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(75, '2023-05-13 10:51:09.430402', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(76, '2023-05-13 10:51:09.431402', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(77, '2023-05-13 10:51:09.432402', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(78, '2023-05-13 10:59:59.390154', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(79, '2023-05-13 10:59:59.391155', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(80, '2023-05-13 10:59:59.392154', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 1, 50, 52),
(81, '2023-05-13 10:59:59.392154', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(82, '2023-05-13 10:59:59.393154', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(83, '2023-05-13 10:59:59.393154', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(84, '2023-05-13 11:13:07.629166', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(85, '2023-05-13 11:13:07.631165', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(86, '2023-05-13 11:13:07.631165', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 1, 50, 52),
(87, '2023-05-13 11:13:07.631165', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(88, '2023-05-13 11:13:07.632166', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(89, '2023-05-13 11:13:07.633166', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(90, '2023-05-13 11:15:35.427481', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(91, '2023-05-13 11:15:35.428481', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(92, '2023-05-13 11:15:35.428481', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 1, 50, 52),
(93, '2023-05-13 11:15:35.429481', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(94, '2023-05-13 11:15:35.430483', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(95, '2023-05-13 11:15:35.431483', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(96, '2023-05-14 16:02:26.980250', 0, 'VAMOSSSSSSS', 'VAMOSSSSSSS', 'Individual', 0, 52, 50),
(97, '2023-05-15 18:52:43.203395', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(98, '2023-05-15 18:52:43.209394', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(99, '2023-05-15 18:52:43.211394', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(100, '2023-05-15 18:52:43.212392', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(101, '2023-05-15 18:52:43.212392', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(102, '2023-05-15 18:52:43.215395', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50),
(103, '2023-05-15 18:53:38.546564', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(104, '2023-05-15 18:53:38.547562', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(105, '2023-05-15 18:53:38.549562', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(106, '2023-05-15 18:53:38.550567', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(107, '2023-05-15 18:53:38.551562', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(108, '2023-05-15 18:53:38.553563', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50),
(109, '2023-05-16 14:42:54.613817', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 45),
(110, '2023-05-16 14:42:54.616815', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 47),
(111, '2023-05-16 14:42:54.616815', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 52),
(112, '2023-05-16 14:42:54.617814', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 53),
(113, '2023-05-16 14:42:54.617814', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 54),
(114, '2023-05-16 14:42:54.619820', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50),
(115, '2023-05-17 19:04:45.470705', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(116, '2023-05-17 19:04:45.475704', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(117, '2023-05-17 19:04:45.476701', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(118, '2023-05-17 19:04:45.477704', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(119, '2023-05-17 19:04:45.477704', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(120, '2023-05-17 19:04:45.479702', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50),
(121, '2023-05-18 14:51:26.879225', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(122, '2023-05-18 14:51:26.884219', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(123, '2023-05-18 14:51:26.885217', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(124, '2023-05-18 14:51:26.886218', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(125, '2023-05-18 14:51:26.887228', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(126, '2023-05-18 14:51:26.890217', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50),
(127, '2023-05-19 09:29:55.364479', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(128, '2023-05-19 09:29:55.371479', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(129, '2023-05-19 09:29:55.371479', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(130, '2023-05-19 09:29:55.372479', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(131, '2023-05-19 09:29:55.372479', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(132, '2023-05-19 09:29:55.373479', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 50),
(133, '2023-05-19 09:44:02.535767', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(134, '2023-05-19 09:44:02.536763', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(135, '2023-05-19 09:44:02.536763', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(136, '2023-05-19 09:44:02.537762', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(137, '2023-05-19 09:44:02.537762', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(138, '2023-05-19 09:44:02.554761', 0, 'Pedido Criado com sucesso', 'Ainda têm 36 pedidos pela frente.', 'Individual', 1, NULL, 50),
(139, '2023-05-19 09:45:19.794704', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(140, '2023-05-19 09:45:19.795702', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(141, '2023-05-19 09:45:19.796701', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(142, '2023-05-19 09:45:19.796701', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(143, '2023-05-19 09:45:19.797701', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(144, '2023-05-19 09:45:19.802701', 0, 'Pedido Criado com sucesso', 'Ainda têm 4 pedidos pela frente.', 'Individual', 1, NULL, 50),
(145, '2023-05-19 09:46:16.885282', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(146, '2023-05-19 09:46:16.886280', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(147, '2023-05-19 09:46:16.887283', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(148, '2023-05-19 09:46:16.888283', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(149, '2023-05-19 09:46:16.888283', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(150, '2023-05-19 09:46:16.916280', 0, 'Pedido Criado com sucesso', 'Ainda têm 39 pedidos pela frente.', 'Individual', 1, NULL, 50),
(151, '2023-05-19 16:10:11.298874', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(152, '2023-05-19 16:10:11.301873', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(153, '2023-05-19 16:10:11.302871', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(154, '2023-05-19 16:10:11.302871', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(155, '2023-05-19 16:10:11.303872', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(156, '2023-05-19 16:10:11.318875', 0, 'Pedido Criado com sucesso', 'Ainda têm 8 pedidos pela frente.', 'Individual', 1, NULL, 50),
(157, '2023-05-20 13:47:04.818718', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(158, '2023-05-20 13:47:04.820716', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(159, '2023-05-20 13:47:04.821715', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(160, '2023-05-20 13:47:04.822715', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(161, '2023-05-20 13:47:04.822715', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(162, '2023-05-20 13:47:04.825715', 0, 'Pedido Criado com sucesso', 'Ainda têm 0 pedidos pela frente.', 'Individual', 0, NULL, 50),
(163, '2023-05-20 13:49:21.921266', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(164, '2023-05-20 13:49:21.922267', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(165, '2023-05-20 13:49:21.923269', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(166, '2023-05-20 13:49:21.924269', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(167, '2023-05-20 13:49:21.925266', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(168, '2023-05-20 13:49:21.927269', 0, 'Pedido Criado com sucesso', 'Ainda têm 0 pedidos pela frente.', 'Individual', 0, NULL, 50),
(169, '2023-05-20 13:49:53.499043', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 45),
(170, '2023-05-20 13:49:53.500041', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 47),
(171, '2023-05-20 13:49:53.500041', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(172, '2023-05-20 13:49:53.501043', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(173, '2023-05-20 13:49:53.501043', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(174, '2023-05-20 13:49:53.505048', 0, 'Pedido Criado com sucesso', 'Ainda têm 1 pedidos pela frente.', 'Individual', 1, NULL, 50),
(175, '2023-05-21 13:38:04.982251', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(176, '2023-05-21 13:38:04.987251', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(177, '2023-05-21 13:38:04.987251', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(178, '2023-05-21 13:38:04.988260', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 121),
(179, '2023-05-21 13:38:04.992264', 0, 'Pedido Criado com sucesso', 'Ainda têm 1 pedidos pela frente.', 'Individual', 0, NULL, 120),
(180, '2023-05-21 13:38:23.628195', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(181, '2023-05-21 13:38:23.629198', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(182, '2023-05-21 13:38:23.631202', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(183, '2023-05-21 13:38:23.631202', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 121),
(184, '2023-05-21 13:38:23.636198', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(185, '2023-05-21 13:43:00.974087', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 52),
(186, '2023-05-21 13:43:00.975088', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 53),
(187, '2023-05-21 13:43:00.976087', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 54),
(188, '2023-05-21 13:43:00.976087', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 121),
(189, '2023-05-21 13:43:00.977088', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(190, '2023-05-21 13:44:20.242511', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 52),
(191, '2023-05-21 13:44:20.243511', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 53),
(192, '2023-05-21 13:44:20.243511', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 54),
(193, '2023-05-21 13:44:20.244509', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 121),
(194, '2023-05-21 13:44:20.245512', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 1, NULL, 120),
(195, '2023-05-21 13:53:16.337403', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(196, '2023-05-21 13:53:16.338398', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(197, '2023-05-21 13:53:16.338398', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(198, '2023-05-21 13:53:16.339399', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 1, 120, 121),
(199, '2023-05-21 13:53:16.345419', 0, 'Pedido Criado com sucesso', 'Ainda têm 6 pedidos pela frente.', 'Individual', 0, NULL, 120),
(205, '2023-05-21 16:06:44.266816', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(206, '2023-05-21 16:06:44.267823', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(207, '2023-05-21 16:06:44.268816', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(208, '2023-05-21 16:06:44.269814', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 121),
(209, '2023-05-21 16:06:44.275814', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(210, '2023-05-22 10:19:01.938624', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(211, '2023-05-22 10:19:01.947964', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(212, '2023-05-22 10:19:01.948968', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(213, '2023-05-22 10:19:01.948968', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 121),
(214, '2023-05-22 10:19:01.952965', 0, 'Pedido Criado com sucesso', 'Ainda têm 0 pedidos pela frente.', 'Individual', 0, NULL, 120),
(215, '2023-05-25 13:30:43.158474', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(216, '2023-05-25 13:30:43.162470', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(217, '2023-05-25 13:30:43.162470', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(218, '2023-05-25 13:30:43.163472', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 1, 120, 121),
(219, '2023-05-25 13:30:43.168917', 0, 'Pedido Criado com sucesso', 'Ainda têm 1 pedidos pela frente.', 'Individual', 0, NULL, 120),
(220, '2023-05-25 15:21:50.963925', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 52),
(221, '2023-05-25 15:21:50.965927', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 53),
(222, '2023-05-25 15:21:50.965927', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 54),
(223, '2023-05-25 15:21:50.966927', 1, 'Registo de novo pedido Outros', 'O docente Docente registou um novo Pedido Outros.', 'Grupo', 0, 120, 121),
(224, '2023-05-25 15:21:50.969925', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(225, '2023-05-25 15:22:29.583955', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 52),
(226, '2023-05-25 15:22:29.584949', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 53),
(227, '2023-05-25 15:22:29.584949', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 54),
(228, '2023-05-25 15:22:29.585947', 1, 'Registo de novo pedido de Horário', 'O docente Docente registou um novo Pedido de Horário.', 'Grupo', 0, 120, 121),
(229, '2023-05-25 15:22:29.586946', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 120),
(230, '2023-05-25 15:50:59.650244', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 52),
(231, '2023-05-25 15:50:59.651249', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 53),
(232, '2023-05-25 15:50:59.651249', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 54),
(233, '2023-05-25 15:50:59.652248', 1, 'Registo de novo pedido Outros', 'O docente Kartic23 registou um novo Pedido Outros.', 'Grupo', 0, 50, 121),
(234, '2023-05-25 15:50:59.658254', 0, 'Pedido Criado com sucesso', 'Ainda têm 5 pedidos pela frente.', 'Individual', 0, NULL, 50),
(235, '2023-05-25 15:53:44.093097', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 52),
(236, '2023-05-25 15:53:44.094103', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 53),
(237, '2023-05-25 15:53:44.095099', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 54),
(238, '2023-05-25 15:53:44.095099', 1, 'Registo de novo pedido de Horário', 'O docente Kartic23 registou um novo Pedido de Horário.', 'Grupo', 0, 50, 121),
(239, '2023-05-25 15:53:44.096099', 0, 'Pedido Criado com sucesso', 'Ainda têm 2 pedidos pela frente.', 'Individual', 0, NULL, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacaonotificacao`
--

CREATE TABLE `informacaonotificacao` (
  `id` int(11) NOT NULL,
  `data` datetime(6) NOT NULL,
  `pendente` tinyint(1) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `lido` tinyint(1) NOT NULL,
  `emissorid` int(11) DEFAULT NULL,
  `recetorid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`ID`, `Name`) VALUES
(1, 'Faculdade de Ciências Humanas e Sociais'),
(2, 'Faculdade de Ciências e Tecnologia'),
(3, 'Reitoria - Centro de Novos Projectos'),
(4, 'Faculdade de Medicina e Ciências Biomédicas'),
(5, 'Escola Superior de Saúde'),
(6, 'Faculdade de Economia'),
(7, 'Escola Superior de Gestão, Hotelaria e Turismo'),
(8, 'Escola Superior de Educação e Comunicação'),
(9, 'Instituto Superior de Engenharia'),
(10, 'Ualg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagemenviada`
--

CREATE TABLE `mensagemenviada` (
  `id` int(11) NOT NULL,
  `mensagem_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `mensagemenviada`
--

INSERT INTO `mensagemenviada` (`id`, `mensagem_id`) VALUES
(8, 17),
(7, 7),
(6, 6),
(9, 22),
(10, 27),
(11, 32),
(12, 38),
(13, 44),
(14, 49),
(15, 54),
(16, 59),
(17, 64),
(18, 70),
(19, 76),
(20, 82),
(21, 88),
(22, 94),
(23, 96),
(24, 101),
(25, 107),
(26, 113),
(27, 119),
(28, 125),
(29, 131),
(30, 137),
(31, 143),
(32, 149),
(33, 155),
(34, 161),
(35, 167),
(36, 173),
(37, 178),
(38, 183),
(39, 188),
(40, 193),
(41, 198),
(42, 203),
(43, 208),
(44, 213),
(45, 218),
(46, 223),
(47, 228),
(48, 233),
(49, 238);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagemrecebida`
--

CREATE TABLE `mensagemrecebida` (
  `id` int(11) NOT NULL,
  `mensagem_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `mensagemrecebida`
--

INSERT INTO `mensagemrecebida` (`id`, `mensagem_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 34),
(34, 35),
(35, 36),
(36, 37),
(37, 38),
(38, 39),
(39, 40),
(40, 41),
(41, 42),
(42, 43),
(43, 44),
(44, 45),
(45, 46),
(46, 47),
(47, 48),
(48, 49),
(49, 50),
(50, 51),
(51, 52),
(52, 53),
(53, 54),
(54, 55),
(55, 56),
(56, 57),
(57, 58),
(58, 59),
(59, 60),
(60, 61),
(61, 62),
(62, 63),
(63, 64),
(64, 65),
(65, 66),
(66, 67),
(67, 68),
(68, 69),
(69, 70),
(70, 71),
(71, 72),
(72, 73),
(73, 74),
(74, 75),
(75, 76),
(76, 77),
(77, 78),
(78, 79),
(79, 80),
(80, 81),
(81, 82),
(82, 83),
(83, 84),
(84, 85),
(85, 86),
(86, 87),
(87, 88),
(88, 89),
(89, 90),
(90, 91),
(91, 92),
(92, 93),
(93, 94),
(94, 95),
(95, 96),
(96, 97),
(97, 98),
(98, 99),
(99, 100),
(100, 101),
(101, 102),
(102, 103),
(103, 104),
(104, 105),
(105, 106),
(106, 107),
(107, 108),
(108, 109),
(109, 110),
(110, 111),
(111, 112),
(112, 113),
(113, 114),
(114, 115),
(115, 116),
(116, 117),
(117, 118),
(118, 119),
(119, 120),
(120, 121),
(121, 122),
(122, 123),
(123, 124),
(124, 125),
(125, 126),
(126, 127),
(127, 128),
(128, 129),
(129, 130),
(130, 131),
(131, 132),
(132, 133),
(133, 134),
(134, 135),
(135, 136),
(136, 137),
(137, 138),
(138, 139),
(139, 140),
(140, 141),
(141, 142),
(142, 143),
(143, 144),
(144, 145),
(145, 146),
(146, 147),
(147, 148),
(148, 149),
(149, 150),
(150, 151),
(151, 152),
(152, 153),
(153, 154),
(154, 155),
(155, 156),
(156, 157),
(157, 158),
(158, 159),
(159, 160),
(160, 161),
(161, 162),
(162, 163),
(163, 164),
(164, 165),
(165, 166),
(166, 167),
(167, 168),
(168, 169),
(169, 170),
(170, 171),
(171, 172),
(172, 173),
(173, 174),
(174, 175),
(175, 176),
(176, 177),
(177, 178),
(178, 179),
(179, 180),
(180, 181),
(181, 182),
(182, 183),
(183, 184),
(184, 185),
(185, 186),
(186, 187),
(187, 188),
(188, 189),
(189, 190),
(190, 191),
(191, 192),
(192, 193),
(193, 194),
(194, 195),
(195, 196),
(196, 197),
(197, 198),
(198, 199),
(199, 200),
(200, 201),
(201, 202),
(202, 203),
(203, 204),
(204, 205),
(205, 206),
(206, 207),
(207, 208),
(208, 209),
(209, 210),
(210, 211),
(211, 212),
(212, 213),
(213, 214),
(214, 215),
(215, 216),
(216, 217),
(217, 218),
(218, 219),
(219, 220),
(220, 221),
(221, 222),
(222, 223),
(223, 224),
(224, 225),
(225, 226),
(226, 227),
(227, 228),
(228, 229),
(229, 230),
(230, 231),
(231, 232),
(232, 233),
(233, 234),
(234, 235),
(235, 236),
(236, 237),
(237, 238),
(238, 239);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id` int(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `outros`
--

CREATE TABLE `outros` (
  `ID` int(11) NOT NULL,
  `Assunto` varchar(255) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `outros`
--

INSERT INTO `outros` (`ID`, `Assunto`, `Descricao`, `pedido_ptr_id`) VALUES
(1, 'Teste Outros', 'Teste Outros', 2),
(5, 'Teste Outros', 'Teste Outros2', 6),
(6, 'Teste Outros', 'Teste Outros1', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pcp`
--

CREATE TABLE `pcp` (
  `utilizador_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID` int(11) NOT NULL,
  `DocenteUtilizadorID` int(11) NOT NULL,
  `FuncionarioUtilizadorID` int(11) DEFAULT -1,
  `identificador_id` int(11) DEFAULT NULL,
  `data_de_submissao` date DEFAULT NULL,
  `data_de_associacao` datetime DEFAULT NULL,
  `data_de_validacao` datetime DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `data_de_alvo` date DEFAULT NULL,
  `assunto` varchar(255) NOT NULL,
  `informacoes` varchar(500) NOT NULL,
  `anoletivoid` int(11) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`ID`, `DocenteUtilizadorID`, `FuncionarioUtilizadorID`, `identificador_id`, `data_de_submissao`, `data_de_associacao`, `data_de_validacao`, `estado_id`, `tipo_id`, `data_de_alvo`, `assunto`, `informacoes`, `anoletivoid`, `comentarios`) VALUES
(2, 120, NULL, 1, '2023-05-22', NULL, NULL, 1, 2, '2023-05-31', 'Teste Outros', 'Teste Outros', 1, NULL),
(5, 120, 121, 1, '2023-05-25', '2023-05-25 17:05:32', NULL, 2, 4, '2023-06-07', 'Teste UC', 'Teste UC', 1, NULL),
(7, 120, 52, 2, '2023-05-25', '2023-05-25 17:09:21', '2023-05-25 17:29:02', 4, 1, '2023-05-26', 'Teste Horario', 'Teste Horario', 1, 'WWWWWWWWWWWWW'),
(8, 120, 121, NULL, '2023-05-25', '2023-05-25 17:06:06', '2023-05-25 17:27:14', 4, 3, '2023-06-02', 'Teste sala', 'Teste sala', 1, 'RRRRRRRRRRRRR'),
(9, 50, 52, 2, '2023-05-25', '2023-05-25 17:09:13', NULL, 2, 2, '2023-06-02', 'Teste Outros ficheiro', 'Teste Outros ficheiro', 1, NULL),
(11, 50, 121, 1, '2023-05-25', '2023-05-25 17:06:20', NULL, 1, 1, '2023-06-02', 'Teste Horario linhas', 'Teste Horario linhas', 1, NULL),
(12, 120, NULL, NULL, '2024-05-19', NULL, NULL, 1, 3, '2024-05-30', 'test1', 'sqsqswswsw', 22, NULL),
(13, 120, NULL, 1, '2024-05-19', NULL, NULL, 1, 4, '2024-05-19', 'fbggbfgbtf', 'jmryntrnfhrn', 22, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_de_aluno`
--

CREATE TABLE `pedido_de_aluno` (
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_de_horario`
--

CREATE TABLE `pedido_de_horario` (
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_de_horario`
--

INSERT INTO `pedido_de_horario` (`pedido_ptr_id`) VALUES
(7),
(11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_de_parecer`
--

CREATE TABLE `pedido_de_parecer` (
  `pedido_ptr_id` int(11) NOT NULL,
  `parecer` longtext DEFAULT NULL,
  `documentos_anexos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_de_sala`
--

CREATE TABLE `pedido_de_sala` (
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_de_sala`
--

INSERT INTO `pedido_de_sala` (`pedido_ptr_id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_outros`
--

CREATE TABLE `pedido_outros` (
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_outros`
--

INSERT INTO `pedido_outros` (`pedido_ptr_id`) VALUES
(2),
(6),
(9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_uc`
--

CREATE TABLE `pedido_uc` (
  `pedido_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido_uc`
--

INSERT INTO `pedido_uc` (`pedido_ptr_id`) VALUES
(5),
(10),
(13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id` bigint(20) NOT NULL,
  `texto` longtext NOT NULL,
  `questionario_id` bigint(20) NOT NULL,
  `opcao1` longtext DEFAULT NULL,
  `opcao2` longtext DEFAULT NULL,
  `opcao3` longtext DEFAULT NULL,
  `opcao4` longtext DEFAULT NULL,
  `opcao5` longtext DEFAULT NULL,
  `opcao6` longtext DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `tema_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`id`, `texto`, `questionario_id`, `opcao1`, `opcao2`, `opcao3`, `opcao4`, `opcao5`, `opcao6`, `tipo`, `tema_id`) VALUES
(1, 'Campus', 2, 'Gambelas', 'Penha', '', '', '', '', 'multipla', 1),
(2, 'Idade', 2, '18-20', '21-25', '26-30', '31-40', '41-60', '60+', 'multipla', 1),
(3, 'Curso', 2, '', '', '', '', '', '', 'texto', 1),
(4, 'Pais', 2, '', '', '', '', '', '', 'texto', 1),
(19, 'test1', 15, NULL, NULL, NULL, NULL, NULL, NULL, 'texto', 2),
(20, 'test1', 15, 'op1', 'op2', NULL, NULL, NULL, NULL, 'multipla', 2),
(21, 'Rapidez', 2, '0', '1', '2', '3', '4', '5', 'multipla', 10),
(22, 'Satisfação', 2, '0', '1', '2', '3', '4', '5', 'multipla', 10),
(24, 'sdwsdw', 17, 'sdwsdw', 'dsdwsd', NULL, NULL, NULL, NULL, 'multipla', 1),
(25, 'dsdsd', 17, NULL, NULL, NULL, NULL, NULL, NULL, 'texto', 1),
(26, '123456787', 18, NULL, NULL, NULL, NULL, NULL, NULL, 'texto', 1),
(27, '768978i9090', 19, NULL, NULL, NULL, NULL, NULL, NULL, 'texto', 1),
(28, 'gfhnfghnfgh', 19, NULL, NULL, NULL, NULL, NULL, NULL, 'texto', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questionario`
--

CREATE TABLE `questionario` (
  `id` bigint(20) NOT NULL,
  `assunto` varchar(255) NOT NULL,
  `data_limite` date NOT NULL,
  `estado_id` bigint(20) NOT NULL,
  `data_inicio` date NOT NULL,
  `ano_letivo_id` varchar(255) DEFAULT NULL,
  `valido` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `questionario`
--

INSERT INTO `questionario` (`id`, `assunto`, `data_limite`, `estado_id`, `data_inicio`, `ano_letivo_id`, `valido`) VALUES
(2, 'questionario 1', '2024-07-18', 5, '2024-05-17', '1', 0),
(15, 'questionario 2', '2024-08-21', 6, '2024-05-19', '22', 0),
(17, 'dddddddd', '2024-06-14', 6, '2024-06-20', '21', 0),
(18, 'teste3', '2024-06-29', 6, '2024-06-20', '21', 0),
(19, 'teste4', '2024-06-29', 6, '2024-06-20', '21', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regencia`
--

CREATE TABLE `regencia` (
  `id` int(11) NOT NULL,
  `docente_id` int(11) DEFAULT NULL,
  `ano_letivo_id` int(11) DEFAULT NULL,
  `tipo_regencia_id` int(11) DEFAULT NULL,
  `regencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorios_pedido`
--

CREATE TABLE `relatorios_pedido` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `data` date NOT NULL,
  `data_de_validacao` date DEFAULT NULL,
  `estado_0` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id` bigint(20) NOT NULL,
  `pergunta_id` bigint(20) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `resposta_texto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `pergunta_id`, `valor`, `resposta_texto`) VALUES
(1, 1, '1', ''),
(2, 1, '1', ''),
(3, 1, '2', ''),
(4, 2, '2', ''),
(5, 2, '2', ''),
(6, 2, '3', ''),
(7, 2, '4', ''),
(8, 3, NULL, 'lei'),
(9, 3, NULL, 'lei'),
(10, 4, NULL, 'pt'),
(11, 4, NULL, 'pt'),
(12, 4, NULL, 'de'),
(13, 21, '4', ''),
(14, 21, '5', ''),
(15, 21, '3', ''),
(16, 21, '4', ''),
(17, 21, '3', ''),
(18, 22, '3', ''),
(19, 22, '2', ''),
(20, 22, '1', ''),
(21, 22, '2', ''),
(22, 22, '4', ''),
(23, 24, '2', ''),
(24, 26, NULL, '12345'),
(25, 27, NULL, 'aefgvefv'),
(26, 28, NULL, 'vdfvdfv'),
(27, 27, NULL, 'edsvdfve');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `ID` int(11) NOT NULL,
  `Estado_Sala_id` int(11) NOT NULL DEFAULT 1,
  `Nome_Instituicao_id` int(11) DEFAULT NULL,
  `Desc_Edificio_id` int(11) DEFAULT NULL,
  `Desc_Sala` varchar(255) DEFAULT NULL,
  `Des_Categoria_id` int(11) DEFAULT NULL,
  `Tipo_sala_id` int(11) DEFAULT NULL,
  `Lotacao_Presencial_Sala` varchar(255) DEFAULT NULL,
  `ano_letivo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subpedido_sala`
--

CREATE TABLE `subpedido_sala` (
  `ID` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL,
  `Instituicao_id` int(11) DEFAULT NULL,
  `Edificio_id` int(11) DEFAULT NULL,
  `Sala_id` int(11) DEFAULT NULL,
  `Tipo_de_aula_id` int(11) DEFAULT NULL,
  `Numero_Alunos` int(11) DEFAULT NULL,
  `pedido_ptr_id` int(11) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `Acao` int(11) NOT NULL,
  `nova_descricao` varchar(255) DEFAULT NULL,
  `nova_inicio` datetime DEFAULT NULL,
  `nova_fim` datetime DEFAULT NULL,
  `nova_Instituicao_id` int(11) DEFAULT NULL,
  `nova_Edificio_id` int(11) DEFAULT NULL,
  `nova_Sala_id` int(11) DEFAULT NULL,
  `nova_Tipo_de_aula_id` int(11) DEFAULT NULL,
  `nova_Numero_Alunos` int(11) DEFAULT NULL,
  `nova_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `subpedido_sala`
--

INSERT INTO `subpedido_sala` (`ID`, `descricao`, `inicio`, `fim`, `Instituicao_id`, `Edificio_id`, `Sala_id`, `Tipo_de_aula_id`, `Numero_Alunos`, `pedido_ptr_id`, `categoria`, `Acao`, `nova_descricao`, `nova_inicio`, `nova_fim`, `nova_Instituicao_id`, `nova_Edificio_id`, `nova_Sala_id`, `nova_Tipo_de_aula_id`, `nova_Numero_Alunos`, `nova_categoria`) VALUES
(7, '21wswswsws', '2024-05-24 01:12:00', '2024-05-24 05:16:00', 3, 17, NULL, 3, 0, 12, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `subpedido_uc`
--

CREATE TABLE `subpedido_uc` (
  `ID` int(11) NOT NULL,
  `ucid` int(11) DEFAULT NULL,
  `pedido_ptr_id` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL,
  `acao` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `subpedido_uc`
--

INSERT INTO `subpedido_uc` (`ID`, `ucid`, `pedido_ptr_id`, `turma`, `acao`, `descricao`) VALUES
(4, 268, 5, 'PL2', 'criar', 'Teste UC'),
(5, 283, 5, 'PL2', 'alterar', 'Teste UC2'),
(6, 285, 5, 'PL2', 'eliminar', 'Teste UC3'),
(7, 278, 5, 'T', 'alterar', 'Teste UC5'),
(9, 310, 13, 'PROGRAMAÇÃO IMPERATIVA', 'alterar', 'T');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema`
--

CREATE TABLE `tema` (
  `id` bigint(20) NOT NULL,
  `tema` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tema`
--

INSERT INTO `tema` (`id`, `tema`) VALUES
(1, 'Geral'),
(2, 'Funcionario'),
(10, 'Satisfação'),
(11, 'Eficiencia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_aulas`
--

CREATE TABLE `tipo_de_aulas` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_de_aulas`
--

INSERT INTO `tipo_de_aulas` (`ID`, `Name`) VALUES
(1, 'T,TP,P,L,S\r\n'),
(2, 'T,TP\r\n'),
(3, 'T,TP,S\r\n'),
(4, 'L\r\n'),
(5, 'S\r\n'),
(6, 'T\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_pedido`
--

CREATE TABLE `tipo_de_pedido` (
  `ID` int(11) NOT NULL,
  `Tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_de_pedido`
--

INSERT INTO `tipo_de_pedido` (`ID`, `Tipo`) VALUES
(1, 'horario'),
(2, 'outros'),
(3, 'sala'),
(4, 'UC'),
(5, 'parecer');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_regencia`
--

CREATE TABLE `tipo_de_regencia` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_de_regencia`
--

INSERT INTO `tipo_de_regencia` (`id`, `tipo`) VALUES
(1, 'Curso'),
(2, 'Departamento'),
(3, 'Disciplina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_sala`
--

CREATE TABLE `tipo_de_sala` (
  `ID` int(11) NOT NULL,
  `Tipo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_de_sala`
--

INSERT INTO `tipo_de_sala` (`ID`, `Tipo`) VALUES
(1, 'sala_normal'),
(2, 'auditorio'),
(3, 'sala_comput');

-- --------------------------------------------------------

--
-- Estrutura da tabela `uc`
--

CREATE TABLE `uc` (
  `ID` int(11) NOT NULL,
  `Period` varchar(255) DEFAULT NULL,
  `Codigo` int(11) DEFAULT NULL,
  `Disciplina` varchar(255) DEFAULT NULL,
  `Inst_discip` varchar(255) DEFAULT NULL,
  `Inst_disciplina_full` varchar(255) DEFAULT NULL,
  `Depart_disciplina` varchar(255) DEFAULT NULL,
  `Turma` varchar(255) DEFAULT NULL,
  `Codigo_curso` int(11) DEFAULT NULL,
  `Curso` varchar(255) DEFAULT NULL,
  `horas_semanais` int(11) DEFAULT NULL,
  `horas_periodo` int(11) DEFAULT NULL,
  `horas_servico` int(11) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `uc`
--

INSERT INTO `uc` (`ID`, `Period`, `Codigo`, `Disciplina`, `Inst_discip`, `Inst_disciplina_full`, `Depart_disciplina`, `Turma`, `Codigo_curso`, `Curso`, `horas_semanais`, `horas_periodo`, `horas_servico`, `data_inicio`, `data_fim`) VALUES
(268, '2º Semestre', 14781042, 'ARQUITETURA DE COMPUTADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'TP4', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(269, '2º Semestre', 14781042, 'ARQUITETURA DE COMPUTADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'TP1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(270, '2º Semestre', 14781042, 'ARQUITETURA DE COMPUTADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'TP2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(271, '2º Semestre', 14781042, 'ARQUITETURA DE COMPUTADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'TP3', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(272, '2º Semestre', 14781042, 'ARQUITETURA DE COMPUTADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(273, '2º Semestre', 14781052, 'ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(274, '2º Semestre', 14781052, 'ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(275, '2º Semestre', 14781052, 'ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL3', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(276, '2º Semestre', 14781052, 'ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(277, '2º Semestre', 14781060, 'SISTEMAS PARALELOS E DISTRIBUÍDOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(278, '2º Semestre', 14781060, 'SISTEMAS PARALELOS E DISTRIBUÍDOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(279, '2º Semestre', 14781060, 'SISTEMAS PARALELOS E DISTRIBUÍDOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(280, '2º Semestre', 14781061, 'COMPILADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(281, '2º Semestre', 14781061, 'COMPILADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(282, '2º Semestre', 14781061, 'COMPILADORES', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(283, '2º Semestre', 14781062, 'GESTÃO DE REDES E SERVIÇOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 1, 1, 14, '2023-02-06', '2023-05-30'),
(284, '2º Semestre', 14781062, 'GESTÃO DE REDES E SERVIÇOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 1, 1, 14, '2023-02-06', '2023-05-30'),
(285, '2º Semestre', 14781064, 'LABORATÓRIO DE ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 4, 4, 42, '2023-02-06', '2023-05-30'),
(286, '2º Semestre', 14781064, 'LABORATÓRIO DE ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 4, 4, 42, '2023-02-06', '2023-05-30'),
(287, '2º Semestre', 14781064, 'LABORATÓRIO DE ENGENHARIA DE SOFTWARE', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 1, 1, 14, '2023-02-06', '2023-05-30'),
(288, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 3, 3, 42, '2023-02-06', '2023-05-30'),
(289, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 3, 3, 42, '2023-02-06', '2023-05-30'),
(290, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL3', 0, 'VÁRIOS', 3, 3, 42, '2023-02-06', '2023-05-30'),
(291, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL4', 0, 'VÁRIOS', 3, 3, 42, '2023-02-06', '2023-05-30'),
(292, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL5', 1478, 'ENGENHARIA INFORMÁTICA (1.º ciclo)', 3, 3, 42, '2023-02-06', '2023-05-30'),
(293, '2º Semestre', 14781068, 'LABORATÓRIO DE PROGRAMAÇÃO', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 1, 1, 14, '2023-02-06', '2023-05-30'),
(294, '2º Semestre', 140064323, 'PROGRAMAÇÃO ORIENTADA POR OBJETOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(295, '2º Semestre', 140064323, 'PROGRAMAÇÃO ORIENTADA POR OBJETOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(296, '2º Semestre', 140064323, 'PROGRAMAÇÃO ORIENTADA POR OBJETOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL3', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(297, '2º Semestre', 140064323, 'PROGRAMAÇÃO ORIENTADA POR OBJETOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(298, '2º Semestre', 140064326, 'REDES DE COMPUTADORES I', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(299, '2º Semestre', 140064326, 'REDES DE COMPUTADORES I', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(300, '2º Semestre', 140064326, 'REDES DE COMPUTADORES I', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL3', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(301, '2º Semestre', 140064326, 'REDES DE COMPUTADORES I', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(302, '2º Semestre', 140064327, 'SISTEMAS OPERATIVOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(303, '2º Semestre', 140064327, 'SISTEMAS OPERATIVOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL2', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(304, '2º Semestre', 140064327, 'SISTEMAS OPERATIVOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'PL3', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(305, '2º Semestre', 140064327, 'SISTEMAS OPERATIVOS', 'FCT', 'Faculdade de Ciências e Tecnologia', '', 'T1', 0, 'VÁRIOS', 2, 2, 28, '2023-02-06', '2023-05-30'),
(306, NULL, 19071022, 'SENSORES, ATUADORES E CONTROLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, NULL, 19071026, 'LABORATÓRIOS EM ENGENHARIA BIOMÉDICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, NULL, 19071024, 'MÉTODOS COMPUTACIONAIS EM BIOENGENHARIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, NULL, 14781038, 'MATEMÁTICA DISCRETA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, NULL, 140064322, 'PROGRAMAÇÃO IMPERATIVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, NULL, 14781040, 'SISTEMAS DIGITAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, NULL, 14781069, 'PROBABILIDADES E ESTATÍSTICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, NULL, 14781051, 'ALGORITMOS E ESTRUTURAS DE DADOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, NULL, 140064324, 'ANÁLISE NUMÉRICA I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, NULL, 15301098, 'APLICAÇÕES DE ENZIMAS E BIOCATÁLISE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, NULL, 14781047, 'BASES DE DADOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, NULL, 140064298, 'EMPREENDEDORISMO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, NULL, 140064299, 'FÍSICA II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, NULL, 14781053, 'LÓGICA E COMPUTAÇÃO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, NULL, 14781056, 'ANÁLISE E MODELAÇÃO DE SISTEMAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, NULL, 14781058, 'DESENVOLVIMENTO DE APLICAÇÕES PARA A WEB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, NULL, 14781063, 'INTELIGÊNCIA ARTIFICIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, NULL, 14781059, 'INTERFACES PESSOA-MÁQUINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, NULL, 14781065, 'REDES DE COMPUTADORES II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, NULL, 14781057, 'COMPUTAÇÃO GRÁFICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, NULL, 14741036, 'TÓPICOS AVANÇADOS EM ENGENHARIA DE SOFTWARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, NULL, 14741067, 'ANÁLISE DE DADOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, NULL, 14741052, 'APRENDIZAGEM MÁQUINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, NULL, 14741037, 'COMPORTAMENTO ORGANIZACIONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, NULL, 14741040, 'DISSERTAÇÃO/PROJETO/ESTÁGIO/RELATÓRIO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, NULL, 14741069, 'INTERNET DAS COISAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, NULL, 19381001, 'CRIPTOGRAFIA MODERNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, NULL, 14741060, 'DESENHO DE JOGOS DIGITAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, NULL, 14741047, 'REDES DE SENSORES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, NULL, 14741066, 'REDES NEURONAIS E APRENDIZAGEM PROFUNDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, NULL, 14741038, 'REDES SEM FIOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, NULL, 14741070, 'SEGURANÇA INFORMÁTICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, NULL, 14741039, 'INTRODUÇÃO A INVESTIGAÇÃO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, NULL, 14741065, 'METAHEURÍSTICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, NULL, 19381006, 'ANÁLISE FORENSE DE SISTEMAS COMPUTACIONAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, NULL, 19381004, 'CIBERGOVERNANÇA, GESTÃO DE RISCO, CONFORMIDADE E NORMAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, NULL, 19381005, 'AVALIAÇÃO DE CIBERSEGURANÇA, TESTES DE PENETRAÇÃO E AUDITORIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, NULL, 19381012, 'MONITORIZAÇÃO E REGISTOS DE EVENTOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, NULL, 19381011, 'SEGURANÇA DE CENTROS DE DADOS E DE CLOUD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, NULL, 19381003, 'SEGURANÇA EM REDES INFORMÁTICAS, SEM FIOS E MÓVEIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, NULL, 19381007, 'CIBERSEGURANÇA NA ADMINISTRAÇÃO DE SISTEMAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, NULL, 19381013, 'DESENVOLVIMENTO DE SOFTWARE SEGURO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, NULL, 19381010, 'SEGURANÇA INFORMÁTICA ARQUITETURAL EMPRESARIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, NULL, 19381002, 'SISTEMAS DE GESTÃO DE IDENTIDADES E ACESSO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, NULL, 19381009, 'CRIAÇÃO DE BARREIRAS DE SEGURANÇA INFORMÁTICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, NULL, 19381000, 'IDENTIFICAÇÃO, ANÁLISE E EXPLORAÇÃO DE VULNERABILIDADES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, NULL, 15641031, 'FORMAÇÃO AVANÇADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, NULL, 15641032, 'TESE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, NULL, 15641033, 'TESE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, NULL, 15661000, 'FORMAÇÃO AVANÇADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, NULL, 15661001, 'TESE I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, NULL, 15661002, 'TESE II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, NULL, 14741042, 'MODELAÇÃO DE REDES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, NULL, 18391004, 'INTRODUÇÃO À PROGRAMAÇÃO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, NULL, 19071030, 'PROJETO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `user_ptr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`user_ptr_id`) VALUES
(26),
(27),
(28),
(31),
(32),
(33),
(34),
(35),
(36),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137),
(138),
(139),
(140),
(141);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acao`
--
ALTER TABLE `acao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `ano_letivo`
--
ALTER TABLE `ano_letivo`
  ADD PRIMARY KEY (`ID`);

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
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

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
-- Índices para tabela `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`utilizador_ptr_id`),
  ADD KEY `Faculdadeid` (`Faculdadeid`),
  ADD KEY `Departamentoid` (`Departamentoid`),
  ADD KEY `Gabineteid` (`Gabineteid`);

--
-- Índices para tabela `docente_uc`
--
ALTER TABLE `docente_uc`
  ADD PRIMARY KEY (`DocenteUtilizadorID`,`UCID`),
  ADD KEY `UCID` (`UCID`);

--
-- Índices para tabela `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estado_questionario`
--
ALTER TABLE `estado_questionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estado_sala`
--
ALTER TABLE `estado_sala`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faculdade`
--
ALTER TABLE `faculdade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`utilizador_ptr_id`);

--
-- Índices para tabela `gabinete`
--
ALTER TABLE `gabinete`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pedido_ptr_id` (`pedido_ptr_id`);

--
-- Índices para tabela `identificador_pedido`
--
ALTER TABLE `identificador_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `informacaomensagem`
--
ALTER TABLE `informacaomensagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `InformacaoMensagem_data_b36b7c63` (`data`),
  ADD KEY `InformacaoMensagem_emissorid_a39368ba` (`emissorid`),
  ADD KEY `InformacaoMensagem_recetorid_90645bfe` (`recetorid`);

--
-- Índices para tabela `informacaonotificacao`
--
ALTER TABLE `informacaonotificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `InformacaoNotificacao_data_52dada64` (`data`),
  ADD KEY `InformacaoNotificacao_emissorid_45bdccef` (`emissorid`),
  ADD KEY `InformacaoNotificacao_recetorid_343e36f0` (`recetorid`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `mensagemenviada`
--
ALTER TABLE `mensagemenviada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MensagemEnviada_mensagem_id_650a9228` (`mensagem_id`);

--
-- Índices para tabela `mensagemrecebida`
--
ALTER TABLE `mensagemrecebida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MensagemRecebida_mensagem_id_929cdaa9` (`mensagem_id`);

--
-- Índices para tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Notificacao_unread_5c525732` (`unread`),
  ADD KEY `Notificacao_timestamp_b0c7de17` (`timestamp`),
  ADD KEY `Notificacao_public_e83b3bfc` (`public`),
  ADD KEY `Notificacao_deleted_5e8a8468` (`deleted`),
  ADD KEY `Notificacao_emailed_a50d3d89` (`emailed`),
  ADD KEY `Notificacao_action_object_content_type_id_5bed7a4d` (`action_object_content_type_id`),
  ADD KEY `Notificacao_actor_content_type_id_247a4ff9` (`actor_content_type_id`),
  ADD KEY `Notificacao_recipient_id_0202c4a6` (`recipient_id`),
  ADD KEY `Notificacao_target_content_type_id_eb8c11a8` (`target_content_type_id`),
  ADD KEY `Notificacao_recipient_id_unread_4902da17_idx` (`recipient_id`,`unread`);

--
-- Índices para tabela `outros`
--
ALTER TABLE `outros`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Pedido_OutrosPedidoID` (`pedido_ptr_id`);

--
-- Índices para tabela `pcp`
--
ALTER TABLE `pcp`
  ADD PRIMARY KEY (`utilizador_ptr_id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `estado_id` (`estado_id`),
  ADD KEY `DocenteUtilizadorID` (`DocenteUtilizadorID`),
  ADD KEY `FuncionarioUtilizadorID` (`FuncionarioUtilizadorID`),
  ADD KEY `fk_tipo_id` (`tipo_id`),
  ADD KEY `fk_pedido_ano_letivo` (`anoletivoid`),
  ADD KEY `identificador_ibf_1` (`identificador_id`);

--
-- Índices para tabela `pedido_de_aluno`
--
ALTER TABLE `pedido_de_aluno`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pedido_de_horario`
--
ALTER TABLE `pedido_de_horario`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pedido_de_parecer`
--
ALTER TABLE `pedido_de_parecer`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pedido_de_sala`
--
ALTER TABLE `pedido_de_sala`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pedido_outros`
--
ALTER TABLE `pedido_outros`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pedido_uc`
--
ALTER TABLE `pedido_uc`
  ADD PRIMARY KEY (`pedido_ptr_id`);

--
-- Índices para tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pergunta_questionario_id_d3e53ee3_fk_questionario_id` (`questionario_id`),
  ADD KEY `pergunta_tema_id_e8ac6d0b_fk_tema_id` (`tema_id`);

--
-- Índices para tabela `questionario`
--
ALTER TABLE `questionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionario_estado_id_ac2e662d` (`estado_id`);

--
-- Índices para tabela `regencia`
--
ALTER TABLE `regencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_id` (`docente_id`),
  ADD KEY `ano_letivo_id` (`ano_letivo_id`),
  ADD KEY `tipo_regencia_id` (`tipo_regencia_id`);

--
-- Índices para tabela `relatorios_pedido`
--
ALTER TABLE `relatorios_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resposta_pergunta_id_18be756f_fk_pergunta_id` (`pergunta_id`);

--
-- Índices para tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `estadai` (`Estado_Sala_id`),
  ADD KEY `nome_da_uiki` (`Nome_Instituicao_id`),
  ADD KEY `edificio` (`Desc_Edificio_id`),
  ADD KEY `anoletivoassociado` (`ano_letivo_id`),
  ADD KEY `link_categoria` (`Des_Categoria_id`),
  ADD KEY `link_tipo_de_aulas` (`Tipo_sala_id`);

--
-- Índices para tabela `subpedido_sala`
--
ALTER TABLE `subpedido_sala`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pedido_ptr_id` (`pedido_ptr_id`),
  ADD KEY `Edificio` (`Edificio_id`),
  ADD KEY `Instituicao` (`Instituicao_id`),
  ADD KEY `Sala` (`Sala_id`),
  ADD KEY `Tipo_de_aula` (`Tipo_de_aula_id`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `Acao` (`Acao`),
  ADD KEY `antiga_Edificio_id` (`nova_Edificio_id`),
  ADD KEY `antiga_categoria` (`nova_categoria`),
  ADD KEY `antiga_Instituicao_id` (`nova_Instituicao_id`),
  ADD KEY `antiga_Sala_id` (`nova_Sala_id`),
  ADD KEY `subpedido_sala_ibfk_12` (`nova_Tipo_de_aula_id`);

--
-- Índices para tabela `subpedido_uc`
--
ALTER TABLE `subpedido_uc`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pedidoid_fk_54` (`pedido_ptr_id`),
  ADD KEY `ucid_fk_12` (`ucid`);

--
-- Índices para tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_de_aulas`
--
ALTER TABLE `tipo_de_aulas`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tipo_de_pedido`
--
ALTER TABLE `tipo_de_pedido`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tipo_de_regencia`
--
ALTER TABLE `tipo_de_regencia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_de_sala`
--
ALTER TABLE `tipo_de_sala`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `uc`
--
ALTER TABLE `uc`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`user_ptr_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acao`
--
ALTER TABLE `acao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ano_letivo`
--
ALTER TABLE `ano_letivo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `edificio`
--
ALTER TABLE `edificio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `estado_pedido`
--
ALTER TABLE `estado_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `estado_questionario`
--
ALTER TABLE `estado_questionario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `estado_sala`
--
ALTER TABLE `estado_sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `faculdade`
--
ALTER TABLE `faculdade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gabinete`
--
ALTER TABLE `gabinete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `horario`
--
ALTER TABLE `horario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `identificador_pedido`
--
ALTER TABLE `identificador_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `informacaomensagem`
--
ALTER TABLE `informacaomensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT de tabela `informacaonotificacao`
--
ALTER TABLE `informacaonotificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mensagemenviada`
--
ALTER TABLE `mensagemenviada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `mensagemrecebida`
--
ALTER TABLE `mensagemrecebida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `outros`
--
ALTER TABLE `outros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `questionario`
--
ALTER TABLE `questionario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `regencia`
--
ALTER TABLE `regencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT de tabela `relatorios_pedido`
--
ALTER TABLE `relatorios_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5890;

--
-- AUTO_INCREMENT de tabela `subpedido_sala`
--
ALTER TABLE `subpedido_sala`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `subpedido_uc`
--
ALTER TABLE `subpedido_uc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tema`
--
ALTER TABLE `tema`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tipo_de_aulas`
--
ALTER TABLE `tipo_de_aulas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tipo_de_pedido`
--
ALTER TABLE `tipo_de_pedido`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipo_de_regencia`
--
ALTER TABLE `tipo_de_regencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `uc`
--
ALTER TABLE `uc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT de tabela `utilizador`
--
ALTER TABLE `utilizador`
  MODIFY `user_ptr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

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
-- Limitadores para a tabela `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`Faculdadeid`) REFERENCES `faculdade` (`id`),
  ADD CONSTRAINT `docente_ibfk_2` FOREIGN KEY (`Departamentoid`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `docente_ibfk_3` FOREIGN KEY (`Gabineteid`) REFERENCES `gabinete` (`id`);

--
-- Limitadores para a tabela `docente_uc`
--
ALTER TABLE `docente_uc`
  ADD CONSTRAINT `docente_uc_ibfk_1` FOREIGN KEY (`DocenteUtilizadorID`) REFERENCES `docente` (`utilizador_ptr_id`),
  ADD CONSTRAINT `docente_uc_ibfk_2` FOREIGN KEY (`UCID`) REFERENCES `uc` (`ID`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`utilizador_ptr_id`) REFERENCES `utilizador` (`user_ptr_id`);

--
-- Limitadores para a tabela `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido_de_horario` (`pedido_ptr_id`);

--
-- Limitadores para a tabela `outros`
--
ALTER TABLE `outros`
  ADD CONSTRAINT `outros_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido_outros` (`pedido_ptr_id`);

--
-- Limitadores para a tabela `pcp`
--
ALTER TABLE `pcp`
  ADD CONSTRAINT `pcp_ibfk_1` FOREIGN KEY (`utilizador_ptr_id`) REFERENCES `utilizador` (`user_ptr_id`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_ano_letivo` FOREIGN KEY (`anoletivoid`) REFERENCES `ano_letivo` (`ID`),
  ADD CONSTRAINT `fk_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_de_pedido` (`ID`),
  ADD CONSTRAINT `identificador_ibf_1` FOREIGN KEY (`identificador_id`) REFERENCES `identificador_pedido` (`id`),
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estado_pedido` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`DocenteUtilizadorID`) REFERENCES `docente` (`utilizador_ptr_id`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`FuncionarioUtilizadorID`) REFERENCES `funcionario` (`utilizador_ptr_id`);

--
-- Limitadores para a tabela `pedido_de_aluno`
--
ALTER TABLE `pedido_de_aluno`
  ADD CONSTRAINT `pedido_de_aluno_pedido_ptr_id_3f1a50e4_fk_pedido_ID` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pedido_de_horario`
--
ALTER TABLE `pedido_de_horario`
  ADD CONSTRAINT `pedido_de_horario_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pedido_de_parecer`
--
ALTER TABLE `pedido_de_parecer`
  ADD CONSTRAINT `pedido_de_parecer_pedido_ptr_id_8b0dc4e2_fk_pedido_ID` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pedido_de_sala`
--
ALTER TABLE `pedido_de_sala`
  ADD CONSTRAINT `pedido_ptr_fefggygygy` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pedido_outros`
--
ALTER TABLE `pedido_outros`
  ADD CONSTRAINT `pedido_outros_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pedido_uc`
--
ALTER TABLE `pedido_uc`
  ADD CONSTRAINT `pedido_uc_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido` (`ID`);

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_questionario_id_d3e53ee3_fk_questionario_id` FOREIGN KEY (`questionario_id`) REFERENCES `questionario` (`id`),
  ADD CONSTRAINT `pergunta_tema_id_e8ac6d0b_fk_tema_id` FOREIGN KEY (`tema_id`) REFERENCES `tema` (`id`);

--
-- Limitadores para a tabela `questionario`
--
ALTER TABLE `questionario`
  ADD CONSTRAINT `questionario_estado_id_ac2e662d_fk_estado_questionario_id` FOREIGN KEY (`estado_id`) REFERENCES `estado_questionario` (`id`);

--
-- Limitadores para a tabela `regencia`
--
ALTER TABLE `regencia`
  ADD CONSTRAINT `regencia_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`utilizador_ptr_id`),
  ADD CONSTRAINT `regencia_ibfk_2` FOREIGN KEY (`ano_letivo_id`) REFERENCES `ano_letivo` (`ID`),
  ADD CONSTRAINT `regencia_ibfk_3` FOREIGN KEY (`tipo_regencia_id`) REFERENCES `tipo_de_regencia` (`id`);

--
-- Limitadores para a tabela `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `resposta_pergunta_id_18be756f_fk_pergunta_id` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`);

--
-- Limitadores para a tabela `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `anoletivoassociado` FOREIGN KEY (`ano_letivo_id`) REFERENCES `ano_letivo` (`ID`),
  ADD CONSTRAINT `edificio` FOREIGN KEY (`Desc_Edificio_id`) REFERENCES `edificio` (`ID`),
  ADD CONSTRAINT `estadai` FOREIGN KEY (`Estado_Sala_id`) REFERENCES `estado_sala` (`id`),
  ADD CONSTRAINT `link_categoria` FOREIGN KEY (`Des_Categoria_id`) REFERENCES `categoria` (`ID`),
  ADD CONSTRAINT `link_tipo_de_aulas` FOREIGN KEY (`Tipo_sala_id`) REFERENCES `tipo_de_aulas` (`ID`),
  ADD CONSTRAINT `nome_da_uiki` FOREIGN KEY (`Nome_Instituicao_id`) REFERENCES `instituicao` (`ID`);

--
-- Limitadores para a tabela `subpedido_sala`
--
ALTER TABLE `subpedido_sala`
  ADD CONSTRAINT `subpedido_sala_ibfk_1` FOREIGN KEY (`pedido_ptr_id`) REFERENCES `pedido_de_sala` (`pedido_ptr_id`),
  ADD CONSTRAINT `subpedido_sala_ibfk_10` FOREIGN KEY (`nova_Instituicao_id`) REFERENCES `instituicao` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_11` FOREIGN KEY (`nova_Sala_id`) REFERENCES `sala` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_12` FOREIGN KEY (`nova_Tipo_de_aula_id`) REFERENCES `tipo_de_aulas` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_2` FOREIGN KEY (`Edificio_id`) REFERENCES `edificio` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_3` FOREIGN KEY (`Instituicao_id`) REFERENCES `instituicao` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_4` FOREIGN KEY (`Sala_id`) REFERENCES `sala` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_5` FOREIGN KEY (`Tipo_de_aula_id`) REFERENCES `tipo_de_aulas` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_6` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_7` FOREIGN KEY (`Acao`) REFERENCES `acao` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_8` FOREIGN KEY (`nova_Edificio_id`) REFERENCES `edificio` (`ID`),
  ADD CONSTRAINT `subpedido_sala_ibfk_9` FOREIGN KEY (`nova_categoria`) REFERENCES `categoria` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
