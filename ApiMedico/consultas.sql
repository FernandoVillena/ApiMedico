-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2022 a las 04:58:36
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add ficha medica', 1, 'add_fichamedica'),
(2, 'Can change ficha medica', 1, 'change_fichamedica'),
(3, 'Can delete ficha medica', 1, 'delete_fichamedica'),
(4, 'Can view ficha medica', 1, 'view_fichamedica'),
(5, 'Can add medico', 2, 'add_medico'),
(6, 'Can change medico', 2, 'change_medico'),
(7, 'Can delete medico', 2, 'delete_medico'),
(8, 'Can view medico', 2, 'view_medico'),
(9, 'Can add paciente', 3, 'add_paciente'),
(10, 'Can change paciente', 3, 'change_paciente'),
(11, 'Can delete paciente', 3, 'delete_paciente'),
(12, 'Can view paciente', 3, 'view_paciente'),
(13, 'Can add prescripcion', 4, 'add_prescripcion'),
(14, 'Can change prescripcion', 4, 'change_prescripcion'),
(15, 'Can delete prescripcion', 4, 'delete_prescripcion'),
(16, 'Can view prescripcion', 4, 'view_prescripcion'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_fichamedica`
--

CREATE TABLE `consulta_fichamedica` (
  `id` bigint(20) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `Medico_id` varchar(100) NOT NULL,
  `Paciente_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_fichamedica`
--

INSERT INTO `consulta_fichamedica` (`id`, `observaciones`, `Medico_id`, `Paciente_id`) VALUES
(1, 'Ta bien', '14234345-1', '20827613-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_medico`
--

CREATE TABLE `consulta_medico` (
  `rut_med` varchar(100) NOT NULL,
  `nom_med` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_medico`
--

INSERT INTO `consulta_medico` (`rut_med`, `nom_med`) VALUES
('14234345-1', 'Miguel Cervante Araya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_paciente`
--

CREATE TABLE `consulta_paciente` (
  `rut_pac` varchar(100) NOT NULL,
  `nom_pac` varchar(100) NOT NULL,
  `sexo_pac` varchar(10) NOT NULL,
  `edad_pac` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_paciente`
--

INSERT INTO `consulta_paciente` (`rut_pac`, `nom_pac`, `sexo_pac`, `edad_pac`) VALUES
('20827613-1', 'Fernando Villena', 'Masculino', '2022-05-04 21:43:00.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_prescripcion`
--

CREATE TABLE `consulta_prescripcion` (
  `id` bigint(20) NOT NULL,
  `id_medicamen` int(11) NOT NULL,
  `Medicamento` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `FichaMedica_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consulta_prescripcion`
--

INSERT INTO `consulta_prescripcion` (`id`, `id_medicamen`, `Medicamento`, `estado`, `FichaMedica_id`) VALUES
(1, 1, 'simicondon', 'No entregado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
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
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(1, 'consulta', 'fichamedica'),
(2, 'consulta', 'medico'),
(3, 'consulta', 'paciente'),
(4, 'consulta', 'prescripcion'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-09 00:41:07.045634'),
(2, 'auth', '0001_initial', '2022-05-09 00:41:07.341903'),
(3, 'admin', '0001_initial', '2022-05-09 00:41:07.416971'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-09 00:41:07.423978'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-09 00:41:07.433987'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-09 00:41:07.481029'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-09 00:41:07.514059'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-09 00:41:07.529073'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-09 00:41:07.537080'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-09 00:41:07.572112'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-09 00:41:07.575115'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-09 00:41:07.582121'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-09 00:41:07.598136'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-09 00:41:07.613149'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-09 00:41:07.630165'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-09 00:41:07.637171'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-09 00:41:07.652185'),
(18, 'consulta', '0001_initial', '2022-05-09 00:41:07.796316'),
(19, 'sessions', '0001_initial', '2022-05-09 00:41:07.818336');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `consulta_fichamedica`
--
ALTER TABLE `consulta_fichamedica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consulta_fichamedica_Medico_id_ea3614af_fk_consulta_` (`Medico_id`),
  ADD KEY `consulta_fichamedica_Paciente_id_8b5d5828_fk_consulta_` (`Paciente_id`);

--
-- Indices de la tabla `consulta_medico`
--
ALTER TABLE `consulta_medico`
  ADD PRIMARY KEY (`rut_med`);

--
-- Indices de la tabla `consulta_paciente`
--
ALTER TABLE `consulta_paciente`
  ADD PRIMARY KEY (`rut_pac`);

--
-- Indices de la tabla `consulta_prescripcion`
--
ALTER TABLE `consulta_prescripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consulta_prescripcio_FichaMedica_id_62812ee6_fk_consulta_` (`FichaMedica_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consulta_fichamedica`
--
ALTER TABLE `consulta_fichamedica`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `consulta_prescripcion`
--
ALTER TABLE `consulta_prescripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `consulta_fichamedica`
--
ALTER TABLE `consulta_fichamedica`
  ADD CONSTRAINT `consulta_fichamedica_Medico_id_ea3614af_fk_consulta_` FOREIGN KEY (`Medico_id`) REFERENCES `consulta_medico` (`rut_med`),
  ADD CONSTRAINT `consulta_fichamedica_Paciente_id_8b5d5828_fk_consulta_` FOREIGN KEY (`Paciente_id`) REFERENCES `consulta_paciente` (`rut_pac`);

--
-- Filtros para la tabla `consulta_prescripcion`
--
ALTER TABLE `consulta_prescripcion`
  ADD CONSTRAINT `consulta_prescripcio_FichaMedica_id_62812ee6_fk_consulta_` FOREIGN KEY (`FichaMedica_id`) REFERENCES `consulta_fichamedica` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
