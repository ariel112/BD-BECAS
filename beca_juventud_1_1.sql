-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2018 a las 07:16:51
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beca_juventud_1.1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academico`
--

CREATE TABLE `academico` (
  `id_academico` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_centro_estudio` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `anio` year(4) NOT NULL,
  `n_cuenta` varchar(15) DEFAULT NULL,
  `anio_academic` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `indice_periodo` float DEFAULT NULL,
  `indice_global` float DEFAULT NULL,
  `id_estado_estudios` int(11) NOT NULL,
  `fecha_egreso` date DEFAULT NULL,
  `fecha_inicio_practica` date DEFAULT NULL,
  `fecha_final_practica` date DEFAULT NULL,
  `duracion_practica` varchar(200) DEFAULT NULL,
  `id_tipo_admision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_actividades` int(11) NOT NULL,
  `nombre` varchar(90) DEFAULT NULL,
  `logistica` varchar(95) DEFAULT NULL,
  `objetivo` varchar(200) DEFAULT NULL,
  `alcance` varchar(150) DEFAULT NULL,
  `horas` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `final` date DEFAULT NULL,
  `estado` enum('Activo','Desactivo') DEFAULT 'Activo',
  `usuario_LaCreo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anio_academico`
--

CREATE TABLE `anio_academico` (
  `id_anio` int(11) NOT NULL,
  `anio_academico` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `area` varchar(200) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_anual`
--

CREATE TABLE `calendario_anual` (
  `id_calendario` int(11) NOT NULL,
  `anio` year(4) NOT NULL,
  `id_universidad` int(11) NOT NULL,
  `fecha_ini_ip` date NOT NULL,
  `fecha_fin_ip` date NOT NULL,
  `fecha_ini_act_ip` date NOT NULL,
  `fecha_fin_act_ip` date NOT NULL,
  `fecha_ini_iip` date NOT NULL,
  `fecha_fin_iip` date NOT NULL,
  `fecha_ini_act_iip` date NOT NULL,
  `fecha_fin_act_iip` date NOT NULL,
  `fecha_ini_iiip` date NOT NULL,
  `fecha_fin_iiip` date NOT NULL,
  `fecha_ini_act_iiip` date NOT NULL,
  `fecha_fin_act_iiip` date NOT NULL,
  `fecha_ini_ivp` date DEFAULT NULL,
  `fecha_fin_ivp` date DEFAULT NULL,
  `fecha_ini_act_ivp` date DEFAULT NULL,
  `fecha_fin_act_ivp` date DEFAULT NULL,
  `fecha_ini_is` date DEFAULT NULL,
  `fecha_fin_is` date DEFAULT NULL,
  `fecha_ini_act_is` date DEFAULT NULL,
  `fecha_fin_act_is` date DEFAULT NULL,
  `fecha_ini_iis` date DEFAULT NULL,
  `fecha_fin_iis` date DEFAULT NULL,
  `fecha_ini_act_iis` date DEFAULT NULL,
  `fecha_fin_act_iis` date DEFAULT NULL,
  `fecha_ini_iiis` date DEFAULT NULL,
  `fecha_fin_iiis` date DEFAULT NULL,
  `fecha_ini_act_iiis` date DEFAULT NULL,
  `fecha_fin_act_iiis` date DEFAULT NULL,
  `fecha_ini_ivs` date DEFAULT NULL,
  `fecha_fin_ivs` date DEFAULT NULL,
  `fecha_ini_act_ivs` date DEFAULT NULL,
  `fecha_fin_act_ivs` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `carrera` varchar(150) NOT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_universitario`
--

CREATE TABLE `centro_universitario` (
  `id_centro` int(11) NOT NULL,
  `centro` varchar(250) NOT NULL,
  `id_universidad` int(11) DEFAULT NULL,
  `municipio` int(11) NOT NULL,
  `id_estado_act` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compromiso_social_horas`
--

CREATE TABLE `compromiso_social_horas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(95) NOT NULL,
  `fecha` date NOT NULL,
  `horas` int(11) NOT NULL,
  `id_datos_personales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria`
--

CREATE TABLE `convocatoria` (
  `id_convocatoria` int(11) NOT NULL,
  `periodo` year(4) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_laboral`
--

CREATE TABLE `datos_laboral` (
  `id_laboral` int(11) NOT NULL,
  `entidad` varchar(300) DEFAULT NULL,
  `cargo` varchar(300) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `jefe_inmediato` varchar(200) DEFAULT NULL,
  `telefono_referencia` varchar(15) DEFAULT NULL,
  `tipo_ingreso` int(11) DEFAULT NULL,
  `ingreso` int(11) DEFAULT NULL,
  `id_solicitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_madre`
--

CREATE TABLE `datos_madre` (
  `id_madre` int(11) NOT NULL,
  `identidad` varchar(13) DEFAULT NULL,
  `p_nombre` varchar(50) DEFAULT NULL,
  `s_nombre` varchar(50) DEFAULT NULL,
  `p_apellido` varchar(50) DEFAULT NULL,
  `s_apellido` varchar(50) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `id_solicitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_padre`
--

CREATE TABLE `datos_padre` (
  `id_padre` int(11) NOT NULL,
  `identidad` varchar(13) DEFAULT NULL,
  `p_nombre` varchar(50) DEFAULT NULL,
  `s_nombre` varchar(50) DEFAULT NULL,
  `p_apellido` varchar(50) DEFAULT NULL,
  `s_apellido` varchar(50) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `id_solicitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `id_datos_personales` int(11) NOT NULL,
  `id_estado_estudios` int(11) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `identidad` varchar(13) NOT NULL,
  `p_nombre` varchar(100) NOT NULL,
  `s_nombre` varchar(100) DEFAULT NULL,
  `p_apellido` varchar(100) NOT NULL,
  `s_apellido` varchar(100) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `edad` tinyint(4) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `discapacidad` varchar(2) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `departamento_res` int(11) DEFAULT NULL,
  `municipio_res` int(11) DEFAULT NULL,
  `ciudad_res` varchar(200) DEFAULT NULL,
  `colonia` varchar(200) DEFAULT NULL,
  `bloque` varchar(200) DEFAULT NULL,
  `casa` varchar(200) DEFAULT NULL,
  `referenciaDir` varchar(200) DEFAULT NULL,
  `cod_postal` smallint(6) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `num_whatsapp` varchar(11) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `passw` varchar(250) NOT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `id_madre` int(11) DEFAULT NULL,
  `id_laboral` int(11) DEFAULT NULL,
  `id_extracurr` int(11) DEFAULT NULL,
  `id_pagos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_depto` int(11) NOT NULL,
  `departamento` varchar(250) NOT NULL,
  `estado_convocatoria` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_final` time DEFAULT NULL,
  `cantidad_beca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deptos`
--

CREATE TABLE `deptos` (
  `id_departamento` int(11) NOT NULL,
  `departamento` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depto_gest`
--

CREATE TABLE `depto_gest` (
  `id_depto_gest` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `atlantida` int(11) DEFAULT NULL,
  `colon` int(11) DEFAULT NULL,
  `comayagua` int(11) DEFAULT NULL,
  `copan` int(11) DEFAULT NULL,
  `cortes` int(11) DEFAULT NULL,
  `choluteca` int(11) DEFAULT NULL,
  `paraiso` int(11) DEFAULT NULL,
  `fmorazan` int(11) DEFAULT NULL,
  `graciasd` int(11) DEFAULT NULL,
  `intibuca` int(11) DEFAULT NULL,
  `islas` int(11) DEFAULT NULL,
  `lapaz` int(11) DEFAULT NULL,
  `lempira` int(11) DEFAULT NULL,
  `ocotepeque` int(11) DEFAULT NULL,
  `olancho` int(11) DEFAULT NULL,
  `stabarbara` int(11) DEFAULT NULL,
  `valle` int(11) DEFAULT NULL,
  `yoro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_academic`
--

CREATE TABLE `detalle_academic` (
  `id_detalle_aca` int(11) NOT NULL,
  `id_academico` int(11) NOT NULL,
  `anio` year(4) NOT NULL,
  `id_calendario` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `indice` float NOT NULL,
  `fecha_actualizacion` date NOT NULL,
  `id_estado_periodo` int(11) NOT NULL,
  `id_actualizacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_tipo_document` int(11) DEFAULT NULL,
  `tamanio` mediumint(9) DEFAULT NULL,
  `nombre_archivo` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `url_img` varchar(250) DEFAULT NULL,
  `id_solicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_actualiz`
--

CREATE TABLE `estado_actualiz` (
  `id_estado_actualiz` int(11) NOT NULL,
  `estado_actualiz` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_actualizar`
--

CREATE TABLE `estado_actualizar` (
  `id_estado_ac` int(11) NOT NULL,
  `estado_actualizar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL,
  `estado_civil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_convocatoria`
--

CREATE TABLE `estado_convocatoria` (
  `id_estado_conv` int(11) NOT NULL,
  `estado_convocatoria` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_estudios`
--

CREATE TABLE `estado_estudios` (
  `id_estado_estudios` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pago`
--

CREATE TABLE `estado_pago` (
  `id_estado_pago` int(11) NOT NULL,
  `nombre_estado_pago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_periodo`
--

CREATE TABLE `estado_periodo` (
  `id_estado_periodo` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_solicitud`
--

CREATE TABLE `estado_solicitud` (
  `id_estado_solici` int(11) NOT NULL,
  `estado_solicitud` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_curricular`
--

CREATE TABLE `extra_curricular` (
  `id_extracurr` int(11) NOT NULL,
  `extracurricular` varchar(300) DEFAULT NULL,
  `id_solicitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_becarios`
--

CREATE TABLE `grupo_becarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_embajador` int(11) NOT NULL,
  `id_datos_personales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `id_ingreso` int(11) NOT NULL,
  `ingreso` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id_migrations` int(11) NOT NULL,
  `migration` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_modulo` int(11) NOT NULL,
  `id_taller` int(11) NOT NULL,
  `id_modulo_padre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `municipio` varchar(200) NOT NULL,
  `id_depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pagos` int(11) NOT NULL,
  `mes` varchar(100) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `observacion` varchar(300) DEFAULT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_estado_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(30) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_academic`
--

CREATE TABLE `periodo_academic` (
  `id_periodo` int(11) NOT NULL,
  `periodo_academic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `per_act`
--

CREATE TABLE `per_act` (
  `id` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `actividades_id_actividades` int(11) NOT NULL,
  `id_datos_personales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `per_mod`
--

CREATE TABLE `per_mod` (
  `id_modulo` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `observacion` varchar(300) NOT NULL,
  `id_datos_personales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retenido`
--

CREATE TABLE `retenido` (
  `id_retenido` int(11) NOT NULL,
  `id_datos_personales` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `id_convocatoria` int(11) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_academica` int(11) DEFAULT NULL,
  `id_tipo_solicitud` int(11) NOT NULL,
  `id_estado_solicitud` int(11) NOT NULL,
  `id_estado_actualiz` int(11) NOT NULL,
  `progreso` int(11) DEFAULT NULL,
  `recomendado` varchar(200) DEFAULT NULL,
  `gestionado_por` int(11) DEFAULT NULL,
  `observacion` varchar(400) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_puntuales`
--

CREATE TABLE `solicitudes_puntuales` (
  `id_solicitud_p` int(11) NOT NULL,
  `identidad` varchar(13) NOT NULL,
  `recomendado` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id_taller` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `organizacion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_admin`
--

CREATE TABLE `tipo_admin` (
  `id_tipo_admin` int(11) NOT NULL,
  `tipo_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_admision`
--

CREATE TABLE `tipo_admision` (
  `id_tipo_admision` int(11) NOT NULL,
  `tipo_de_admision` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cargo`
--

CREATE TABLE `tipo_cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(200) NOT NULL,
  `monto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo` int(11) NOT NULL,
  `tipo_doc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_ingreso`
--

CREATE TABLE `tipo_ingreso` (
  `id_tipo_ingreso` int(11) NOT NULL,
  `tipo_ingreso` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `nombre_tipo_pago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_solicitud`
--

CREATE TABLE `tipo_solicitud` (
  `id_tipo_solicitud` int(11) NOT NULL,
  `tipo_solicitud` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `id_universidad` int(11) NOT NULL,
  `universidad` varchar(250) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` enum('member','admin','operaciones','seguimiento','tablet') DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `identidad` varchar(13) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `p_nombre` varchar(50) NOT NULL,
  `s_nombre` varchar(50) DEFAULT NULL,
  `p_apellido` varchar(50) NOT NULL,
  `s_apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `passw` varchar(50) NOT NULL,
  `id_tipo_admin` int(11) NOT NULL,
  `creador` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academico`
--
ALTER TABLE `academico`
  ADD PRIMARY KEY (`id_academico`),
  ADD KEY `fk_centrotoacadem` (`id_centro_estudio`),
  ADD KEY `fk_carreratoacadem` (`id_carrera`),
  ADD KEY `periodo` (`periodo`),
  ADD KEY `anio_academic` (`anio_academic`),
  ADD KEY `fk_academico_estado_estudios1_idx` (`id_estado_estudios`),
  ADD KEY `fk_academico_tipo_ingreso1_idx` (`id_tipo_admision`),
  ADD KEY `solicitantes_idx` (`id_solicitante`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_actividades`);

--
-- Indices de la tabla `anio_academico`
--
ALTER TABLE `anio_academico`
  ADD PRIMARY KEY (`id_anio`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`),
  ADD KEY `fk_depto_area` (`id_departamento`);

--
-- Indices de la tabla `calendario_anual`
--
ALTER TABLE `calendario_anual`
  ADD PRIMARY KEY (`id_calendario`),
  ADD KEY `fk_calend_univ` (`id_universidad`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `centro_universitario`
--
ALTER TABLE `centro_universitario`
  ADD PRIMARY KEY (`id_centro`),
  ADD KEY `fk_munitocentro` (`municipio`),
  ADD KEY `fk_centro_esta` (`id_estado_act`),
  ADD KEY `fk_unive_centro` (`id_universidad`);

--
-- Indices de la tabla `compromiso_social_horas`
--
ALTER TABLE `compromiso_social_horas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compromiso_social_horas_datos_personales2_idx` (`id_datos_personales`);

--
-- Indices de la tabla `convocatoria`
--
ALTER TABLE `convocatoria`
  ADD PRIMARY KEY (`id_convocatoria`);

--
-- Indices de la tabla `datos_laboral`
--
ALTER TABLE `datos_laboral`
  ADD PRIMARY KEY (`id_laboral`),
  ADD KEY `fk_tip_ingres` (`tipo_ingreso`),
  ADD KEY `fk_ingreso` (`ingreso`);

--
-- Indices de la tabla `datos_madre`
--
ALTER TABLE `datos_madre`
  ADD PRIMARY KEY (`id_madre`);

--
-- Indices de la tabla `datos_padre`
--
ALTER TABLE `datos_padre`
  ADD PRIMARY KEY (`id_padre`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`id_datos_personales`),
  ADD KEY `fk_personaltogener` (`genero`),
  ADD KEY `fk_estacivtopersonal` (`estado_civil`),
  ADD KEY `fk_deptotopersonal` (`departamento`),
  ADD KEY `fk_municiotopersonal` (`municipio`),
  ADD KEY `fk_deptorestoperson` (`departamento_res`),
  ADD KEY `fk_municprestoperson` (`municipio_res`),
  ADD KEY `fk_padre_to_soli` (`id_padre`),
  ADD KEY `fk_madre_to sol` (`id_madre`),
  ADD KEY `id_laboral` (`id_laboral`),
  ADD KEY `id_extracurr` (`id_extracurr`),
  ADD KEY `id_cargo` (`id_cargo`),
  ADD KEY `id_estado_estudios` (`id_estado_estudios`),
  ADD KEY `id_pagos_idx` (`id_pagos`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_depto`),
  ADD KEY `estado_convocatoria` (`estado_convocatoria`);

--
-- Indices de la tabla `deptos`
--
ALTER TABLE `deptos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `depto_gest`
--
ALTER TABLE `depto_gest`
  ADD PRIMARY KEY (`id_depto_gest`),
  ADD KEY `fk_gest_user` (`id_usuario`);

--
-- Indices de la tabla `detalle_academic`
--
ALTER TABLE `detalle_academic`
  ADD PRIMARY KEY (`id_detalle_aca`),
  ADD KEY `fk_detall_acade` (`id_academico`),
  ADD KEY `fk_detall_calend` (`id_calendario`),
  ADD KEY `id_actualizacion` (`id_actualizacion`),
  ADD KEY `id_estado_periodo` (`id_estado_periodo`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`),
  ADD KEY `fk_solictodocume` (`id_solicitud`),
  ADD KEY `fk_tipodoctosolici` (`id_tipo_document`),
  ADD KEY `solicitante_idx` (`id_solicitante`);

--
-- Indices de la tabla `estado_actualiz`
--
ALTER TABLE `estado_actualiz`
  ADD PRIMARY KEY (`id_estado_actualiz`);

--
-- Indices de la tabla `estado_actualizar`
--
ALTER TABLE `estado_actualizar`
  ADD PRIMARY KEY (`id_estado_ac`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id_estado_civil`);

--
-- Indices de la tabla `estado_convocatoria`
--
ALTER TABLE `estado_convocatoria`
  ADD PRIMARY KEY (`id_estado_conv`);

--
-- Indices de la tabla `estado_estudios`
--
ALTER TABLE `estado_estudios`
  ADD PRIMARY KEY (`id_estado_estudios`);

--
-- Indices de la tabla `estado_pago`
--
ALTER TABLE `estado_pago`
  ADD PRIMARY KEY (`id_estado_pago`);

--
-- Indices de la tabla `estado_periodo`
--
ALTER TABLE `estado_periodo`
  ADD PRIMARY KEY (`id_estado_periodo`);

--
-- Indices de la tabla `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
  ADD PRIMARY KEY (`id_estado_solici`);

--
-- Indices de la tabla `extra_curricular`
--
ALTER TABLE `extra_curricular`
  ADD PRIMARY KEY (`id_extracurr`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `grupo_becarios`
--
ALTER TABLE `grupo_becarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_grupo_becarios_datos_personales2_idx` (`id_datos_personales`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`id_ingreso`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id_migrations`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_modulo`),
  ADD KEY `id_modulo-padre` (`id_modulo_padre`),
  ADD KEY `id_taller` (`id_taller`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_depto`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pagos`),
  ADD KEY `fk_pagos_tipo_pago1_idx` (`id_tipo_pago`),
  ADD KEY `fk_pagos_estado_pago1_idx` (`id_estado_pago`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `periodo_academic`
--
ALTER TABLE `periodo_academic`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indices de la tabla `per_act`
--
ALTER TABLE `per_act`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_per_act_actividades1_idx` (`actividades_id_actividades`),
  ADD KEY `fk_per_act_datos_personales2_idx` (`id_datos_personales`);

--
-- Indices de la tabla `per_mod`
--
ALTER TABLE `per_mod`
  ADD KEY `id_modulo` (`id_modulo`),
  ADD KEY `fk_per_mod_datos_personales1_idx` (`id_datos_personales`);

--
-- Indices de la tabla `retenido`
--
ALTER TABLE `retenido`
  ADD PRIMARY KEY (`id_retenido`),
  ADD KEY `retenido_idx` (`id_datos_personales`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `fk_tipotosolicit` (`id_tipo_solicitud`),
  ADD KEY `fk_estadotosolicitud` (`id_estado_solicitud`),
  ADD KEY `fk_acadetosolicit` (`id_academica`),
  ADD KEY `id_convocatoria` (`id_convocatoria`),
  ADD KEY `solici_acualiz` (`id_estado_actualiz`),
  ADD KEY `solicitante_idx` (`id_solicitante`);

--
-- Indices de la tabla `solicitudes_puntuales`
--
ALTER TABLE `solicitudes_puntuales`
  ADD PRIMARY KEY (`id_solicitud_p`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id_taller`),
  ADD KEY `id_modulo` (`id_modulo`);

--
-- Indices de la tabla `tipo_admin`
--
ALTER TABLE `tipo_admin`
  ADD PRIMARY KEY (`id_tipo_admin`);

--
-- Indices de la tabla `tipo_admision`
--
ALTER TABLE `tipo_admision`
  ADD PRIMARY KEY (`id_tipo_admision`);

--
-- Indices de la tabla `tipo_cargo`
--
ALTER TABLE `tipo_cargo`
  ADD PRIMARY KEY (`id_cargo`) USING BTREE;

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_ingreso`
--
ALTER TABLE `tipo_ingreso`
  ADD PRIMARY KEY (`id_tipo_ingreso`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  ADD PRIMARY KEY (`id_tipo_solicitud`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`id_universidad`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`,`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_tipo_admin` (`id_tipo_admin`),
  ADD KEY `fk_depto_to_admin` (`id_departamento`),
  ADD KEY `fk_area_to_admin` (`id_area`),
  ADD KEY `fk_cargo_to_admin` (`id_cargo`),
  ADD KEY `fk_perfil_to_admin` (`id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academico`
--
ALTER TABLE `academico`
  MODIFY `id_academico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anio_academico`
--
ALTER TABLE `anio_academico`
  MODIFY `id_anio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calendario_anual`
--
ALTER TABLE `calendario_anual`
  MODIFY `id_calendario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `centro_universitario`
--
ALTER TABLE `centro_universitario`
  MODIFY `id_centro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `convocatoria`
--
ALTER TABLE `convocatoria`
  MODIFY `id_convocatoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_laboral`
--
ALTER TABLE `datos_laboral`
  MODIFY `id_laboral` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_madre`
--
ALTER TABLE `datos_madre`
  MODIFY `id_madre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_padre`
--
ALTER TABLE `datos_padre`
  MODIFY `id_padre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `id_datos_personales` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_depto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deptos`
--
ALTER TABLE `deptos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `depto_gest`
--
ALTER TABLE `depto_gest`
  MODIFY `id_depto_gest` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_academic`
--
ALTER TABLE `detalle_academic`
  MODIFY `id_detalle_aca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_actualiz`
--
ALTER TABLE `estado_actualiz`
  MODIFY `id_estado_actualiz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_actualizar`
--
ALTER TABLE `estado_actualizar`
  MODIFY `id_estado_ac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_convocatoria`
--
ALTER TABLE `estado_convocatoria`
  MODIFY `id_estado_conv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_estudios`
--
ALTER TABLE `estado_estudios`
  MODIFY `id_estado_estudios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_periodo`
--
ALTER TABLE `estado_periodo`
  MODIFY `id_estado_periodo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
  MODIFY `id_estado_solici` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extra_curricular`
--
ALTER TABLE `extra_curricular`
  MODIFY `id_extracurr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pagos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodo_academic`
--
ALTER TABLE `periodo_academic`
  MODIFY `id_periodo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `retenido`
--
ALTER TABLE `retenido`
  MODIFY `id_retenido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_puntuales`
--
ALTER TABLE `solicitudes_puntuales`
  MODIFY `id_solicitud_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taller`
--
ALTER TABLE `taller`
  MODIFY `id_taller` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_admin`
--
ALTER TABLE `tipo_admin`
  MODIFY `id_tipo_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_admision`
--
ALTER TABLE `tipo_admision`
  MODIFY `id_tipo_admision` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_cargo`
--
ALTER TABLE `tipo_cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_ingreso`
--
ALTER TABLE `tipo_ingreso`
  MODIFY `id_tipo_ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  MODIFY `id_tipo_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `id_universidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academico`
--
ALTER TABLE `academico`
  ADD CONSTRAINT `academico_ibfk_1` FOREIGN KEY (`id_centro_estudio`) REFERENCES `centro_universitario` (`id_centro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academico_ibfk_3` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academico_ibfk_4` FOREIGN KEY (`anio_academic`) REFERENCES `anio_academico` (`id_anio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academico_ibfk_5` FOREIGN KEY (`periodo`) REFERENCES `periodo_academic` (`id_periodo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_academico_estado_estudios1` FOREIGN KEY (`id_estado_estudios`) REFERENCES `estado_estudios` (`id_estado_estudios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_academico_tipo_ingreso1` FOREIGN KEY (`id_tipo_admision`) REFERENCES `tipo_admision` (`id_tipo_admision`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `solicitantes` FOREIGN KEY (`id_solicitante`) REFERENCES `datos_personales` (`id_datos_personales`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `deptos` (`id_departamento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `calendario_anual`
--
ALTER TABLE `calendario_anual`
  ADD CONSTRAINT `calendario_anual_ibfk_1` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id_universidad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `centro_universitario`
--
ALTER TABLE `centro_universitario`
  ADD CONSTRAINT `centro_universitario_ibfk_2` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`id_municipio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `centro_universitario_ibfk_3` FOREIGN KEY (`id_estado_act`) REFERENCES `estado_actualizar` (`id_estado_ac`) ON UPDATE CASCADE,
  ADD CONSTRAINT `centro_universitario_ibfk_4` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id_universidad`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compromiso_social_horas`
--
ALTER TABLE `compromiso_social_horas`
  ADD CONSTRAINT `fk_compromiso_social_horas_datos_personales2` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id_datos_personales`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos_laboral`
--
ALTER TABLE `datos_laboral`
  ADD CONSTRAINT `datos_laboral_ibfk_1` FOREIGN KEY (`tipo_ingreso`) REFERENCES `tipo_ingreso` (`id_tipo_ingreso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_laboral_ibfk_2` FOREIGN KEY (`ingreso`) REFERENCES `ingreso` (`id_ingreso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `datos_laboral` FOREIGN KEY (`id_laboral`) REFERENCES `datos_laboral` (`id_laboral`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estado_civil` FOREIGN KEY (`estado_civil`) REFERENCES `estado_civil` (`id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `genero` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_extracurric` FOREIGN KEY (`id_extracurr`) REFERENCES `extra_curricular` (`id_extracurr`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_padre` FOREIGN KEY (`id_padre`) REFERENCES `datos_padre` (`id_padre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pagos` FOREIGN KEY (`id_pagos`) REFERENCES `pagos` (`id_pagos`) ON UPDATE CASCADE,
  ADD CONSTRAINT `madre` FOREIGN KEY (`id_madre`) REFERENCES `datos_madre` (`id_madre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `municipio` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`id_municipio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `municipio_res` FOREIGN KEY (`municipio_res`) REFERENCES `municipio` (`id_municipio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `tipo_cargo` (`id_cargo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`estado_convocatoria`) REFERENCES `estado_convocatoria` (`id_estado_conv`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `depto_gest`
--
ALTER TABLE `depto_gest`
  ADD CONSTRAINT `depto_gest_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_academic`
--
ALTER TABLE `detalle_academic`
  ADD CONSTRAINT `detalle_academic_ibfk_1` FOREIGN KEY (`id_academico`) REFERENCES `academico` (`id_academico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_academic_ibfk_2` FOREIGN KEY (`id_calendario`) REFERENCES `calendario_anual` (`id_calendario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_academic_ibfk_3` FOREIGN KEY (`id_actualizacion`) REFERENCES `estado_actualiz` (`id_estado_actualiz`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_academic_ibfk_4` FOREIGN KEY (`id_estado_periodo`) REFERENCES `estado_periodo` (`id_estado_periodo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`) ON UPDATE CASCADE,
  ADD CONSTRAINT `documento_ibfk_3` FOREIGN KEY (`id_tipo_document`) REFERENCES `tipo_documento` (`id_tipo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitantee` FOREIGN KEY (`id_solicitante`) REFERENCES `datos_personales` (`id_datos_personales`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo_becarios`
--
ALTER TABLE `grupo_becarios`
  ADD CONSTRAINT `fk_grupo_becarios_datos_personales2` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id_datos_personales`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`id_modulo_padre`) REFERENCES `modulo` (`id_modulo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `modulo_ibfk_2` FOREIGN KEY (`id_taller`) REFERENCES `taller` (`id_taller`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_depto`) REFERENCES `departamento` (`id_depto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_estado_pago1` FOREIGN KEY (`id_estado_pago`) REFERENCES `estado_pago` (`id_estado_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagos_tipo_pago1` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `per_act`
--
ALTER TABLE `per_act`
  ADD CONSTRAINT `fk_per_act_actividades1` FOREIGN KEY (`actividades_id_actividades`) REFERENCES `actividades` (`id_actividades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_per_act_datos_personales2` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id_datos_personales`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `per_mod`
--
ALTER TABLE `per_mod`
  ADD CONSTRAINT `fk_per_mod_datos_personales1` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id_datos_personales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `per_mod_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `retenido`
--
ALTER TABLE `retenido`
  ADD CONSTRAINT `retenido` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id_datos_personales`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitante` FOREIGN KEY (`id_solicitante`) REFERENCES `datos_personales` (`id_datos_personales`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_academica`) REFERENCES `academico` (`id_academico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_3` FOREIGN KEY (`id_tipo_solicitud`) REFERENCES `tipo_solicitud` (`id_tipo_solicitud`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_4` FOREIGN KEY (`id_estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado_solici`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_5` FOREIGN KEY (`id_convocatoria`) REFERENCES `convocatoria` (`id_convocatoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_6` FOREIGN KEY (`id_estado_actualiz`) REFERENCES `estado_actualiz` (`id_estado_actualiz`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_admin`) REFERENCES `tipo_admin` (`id_tipo_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`id_departamento`) REFERENCES `deptos` (`id_departamento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_5` FOREIGN KEY (`id_perfil`) REFERENCES `perfiles` (`id_perfil`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
