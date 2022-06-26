-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2022 a las 18:17:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_exchangehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajuste_invs`
--

CREATE TABLE `ajuste_invs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estadoajus` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidadajus` double NOT NULL,
  `moneda_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ajuste_invs`
--

INSERT INTO `ajuste_invs` (`id`, `estadoajus`, `cantidadajus`, `moneda_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INGRESO', 5000, 1, '2022-06-25 05:51:11', '2022-06-25 05:51:11', NULL),
(2, 'INGRESO', 5000, 1, '2022-06-25 05:51:24', '2022-06-25 05:51:24', NULL),
(3, 'INGRESO', 5000, 1, '2022-06-25 05:51:50', '2022-06-25 05:51:50', NULL),
(4, 'INGRESO', 5000, 1, '2022-06-25 05:52:21', '2022-06-25 05:52:21', NULL),
(5, 'INGRESO', 5000, 1, '2022-06-25 05:53:18', '2022-06-25 05:53:18', NULL),
(6, 'INGRESO', 5000, 1, '2022-06-25 06:01:52', '2022-06-25 06:01:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numasiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_asiento` date NOT NULL,
  `tipoasiento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `glosagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libros_iva_id` bigint(20) UNSIGNED NOT NULL,
  `gestion_contable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razsoc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telef` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documento` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrodocumento` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pep` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `documento`, `nrodocumento`, `extension`, `paterno`, `materno`, `nombre`, `pep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CI', '9152988', 'LPZ', 'CONDORI', 'VILLCA', 'TEODOMIRO', 'NO', '2022-06-25 06:11:02', '2022-06-25 06:11:02', NULL),
(2, 'CI', '9152988', 'LPZ', 'CONDORI', 'VILLCA', 'TEODOMIRO', 'NO', '2022-06-25 06:11:49', '2022-06-25 06:11:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_ventas`
--

CREATE TABLE `compra_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estadocv` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaccion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compra_ventas`
--

INSERT INTO `compra_ventas` (`id`, `estadocv`, `transaccion_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'C', 1, '2022-06-25 06:11:02', '2022-06-25 06:11:02', NULL),
(2, 'C', 2, '2022-06-25 06:11:49', '2022-06-25 06:11:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `pais` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autorizacion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_asientos`
--

CREATE TABLE `detalle_asientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipotrans` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad_compra` double NOT NULL,
  `valor_compra` double NOT NULL,
  `cantidad_venta` double NOT NULL,
  `valor_venta` double NOT NULL,
  `cantidad_cv` double NOT NULL,
  `valor_cv` double NOT NULL,
  `totalgeneral` double NOT NULL,
  `glosa` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asiento_id` bigint(20) UNSIGNED NOT NULL,
  `plan_cuenta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosificacions`
--

CREATE TABLE `dosificacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numautorizacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numinicialfactura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechalimite` date NOT NULL,
  `llavealfanumerica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dosificacions`
--

INSERT INTO `dosificacions` (`id`, `numautorizacion`, `numinicialfactura`, `fechalimite`, `llavealfanumerica`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '431406000039017', '10234', '2022-10-30', 'Mgc1hccy2g', '2022-06-25 06:11:28', '2022-06-25 06:11:28', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codcontrol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcoficial` double NOT NULL,
  `transaccion_id` bigint(20) UNSIGNED NOT NULL,
  `dosificacion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `codcontrol`, `tcoficial`, `transaccion_id`, `dosificacion_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'CB-G5-D5-S4', 6.96, 2, 1, '2022-06-25 06:11:49', '2022-06-25 06:11:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_contables`
--

CREATE TABLE `gestion_contables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechainicio` date NOT NULL,
  `gestion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipotrans` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad_compra` double NOT NULL,
  `valor_compra` double NOT NULL,
  `cantidad_venta` double NOT NULL,
  `valor_venta` double NOT NULL,
  `cantidad_cv` double NOT NULL,
  `valor_cv` double NOT NULL,
  `totalgeneral` double NOT NULL,
  `glosa` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ajust_id` int(11) NOT NULL,
  `moneda_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id`, `tipotrans`, `cantidad_compra`, `valor_compra`, `cantidad_venta`, `valor_venta`, `cantidad_cv`, `valor_cv`, `totalgeneral`, `glosa`, `ajust_id`, `moneda_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INGRESO', 0, 0, 0, 0, 0, 0, 5000, '', 3, 1, '2022-06-25 05:51:50', '2022-06-25 05:51:50', NULL),
(2, 'INGRESO', 0, 0, 0, 0, 0, 0, 5000, 'MONEDA COMPRADA ANTERIORMENTE', 4, 1, '2022-06-25 05:52:21', '2022-06-25 05:52:21', NULL),
(3, 'INGRESO', 0, 0, 0, 0, 0, 0, 5000, 'MONEDA COMPRADA ANTERIORMENTE', 5, 1, '2022-06-25 05:53:18', '2022-06-25 05:53:18', NULL),
(4, 'INGRESO', 0, 0, 0, 0, 0, 0, 5000, 'MONEDA COMPRADA ANTERIORMENTE', 6, 1, '2022-06-25 06:01:52', '2022-06-25 06:01:52', NULL),
(5, 'COMPRA', 100, 695, 0, 0, 0, 0, 0, '', 2, 1, '2022-06-25 06:11:49', '2022-06-25 06:11:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_lineas`
--

CREATE TABLE `invoice_lineas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigoAmbiente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoModalidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoPuntoVenta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoSistema` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoSucursal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_ivas`
--

CREATE TABLE `libros_ivas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipotrans` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechatrans` date NOT NULL,
  `nitproveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreproveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nfactura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipofactura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nautorizacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigocontrol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalfactura` double NOT NULL,
  `totalice` double NOT NULL,
  `impexentos` double NOT NULL,
  `impneto` double NOT NULL,
  `credfiscal` double NOT NULL,
  `debfiscal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_15_034751_add_soft_delete_columns_to_users', 1),
(6, '2022_06_15_150000_create_roles_table', 1),
(7, '2022_06_15_150706_add_column_role_to_users', 1),
(8, '2022_06_15_221028_create_invoice_lineas_table', 1),
(9, '2022_06_16_034240_create_monedas_table', 1),
(10, '2022_06_17_001433_create_tipo_cambios_table', 1),
(11, '2022_06_17_012111_create_clientes_table', 1),
(12, '2022_06_17_012119_create_beneficiarios_table', 1),
(13, '2022_06_17_022144_create_roses_table', 1),
(14, '2022_06_17_025359_create_pccs_table', 1),
(15, '2022_06_17_025408_create_pjuridicas_table', 1),
(16, '2022_06_17_025414_create_pnaturals_table', 1),
(17, '2022_06_17_221249_create_transaccions_table', 1),
(18, '2022_06_17_221310_create_compra_ventas_table', 1),
(19, '2022_06_17_221318_create_configuracions_table', 1),
(20, '2022_06_21_000417_create_dosificacions_table', 1),
(21, '2022_06_21_000631_create_facturas_table', 1),
(22, '2022_06_21_000742_create_inventarios_table', 1),
(23, '2022_06_21_233607_create_gestion_contables_table', 1),
(24, '2022_06_21_233623_create_plan_cuentas_table', 1),
(25, '2022_06_21_233630_create_libros_ivas_table', 1),
(26, '2022_06_21_233636_create_asientos_table', 1),
(27, '2022_06_21_233645_create_detalle_asientos_table', 1),
(28, '2022_06_25_010938_create_ajuste_invs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mcncpt` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcngrp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcncnt` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcnsbc` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcnmnd` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_moneda` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `mcncpt`, `mcngrp`, `mcncnt`, `mcnsbc`, `mcnmnd`, `cod_moneda`, `nombre`, `abreviatura`, `tipo`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', '1', '1', '1', '1', 'DOLAR ESTADOUNIDENSE', 'USD', 'ESTATICO', '/storage/imagenes/usBwEFu0T02LGQdZzF82E3EcGDDt0ziFyDdAUq4r.jpg', '2022-06-25 05:39:54', '2022-06-25 05:39:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pccs`
--

CREATE TABLE `pccs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operacion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monrecibida` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moncambio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double NOT NULL,
  `origenrec` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinorec` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beneficiario_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pjuridicas`
--

CREATE TABLE `pjuridicas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razonsoc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acteco` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `pcc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_cuentas`
--

CREATE TABLE `plan_cuentas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cncpt` int(11) NOT NULL,
  `cngrp` int(11) NOT NULL,
  `cncnt` int(11) NOT NULL,
  `cnsbc` int(11) NOT NULL,
  `cnmnd` int(11) NOT NULL,
  `cncan` int(11) NOT NULL,
  `mayor` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pnaturals`
--

CREATE TABLE `pnaturals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipodoc` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ndoc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extendoc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paisresi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acteco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ietrab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dirtrab` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `pcc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roses`
--

CREATE TABLE `roses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipoper` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prinom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segnom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ternom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estacivil` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apecasa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoiden` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nroiden` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasacti` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desacti` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugnac` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingmen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peps` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `despeps` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campo1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campo2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campo3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campo4` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cambios`
--

CREATE TABLE `tipo_cambios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tcventa` double NOT NULL,
  `tccompra` double NOT NULL,
  `tcoficial` double NOT NULL,
  `moneda_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cambios`
--

INSERT INTO `tipo_cambios` (`id`, `tcventa`, `tccompra`, `tcoficial`, `moneda_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6.97, 6.95, 6.96, 1, '2022-06-25 05:40:08', '2022-06-25 05:40:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccions`
--

CREATE TABLE `transaccions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipotrans` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` double NOT NULL,
  `cotizacion` double NOT NULL,
  `monto` double NOT NULL,
  `literal` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `moneda_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transaccions`
--

INSERT INTO `transaccions` (`id`, `tipotrans`, `cantidad`, `cotizacion`, `monto`, `literal`, `cliente_id`, `moneda_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'COMPRA', 100, 6.95, 695, '', 1, 1, '2022-06-25 06:11:02', '2022-06-25 06:11:02', NULL),
(2, 'COMPRA', 100, 6.95, 695, '', 2, 1, '2022-06-25 06:11:49', '2022-06-25 06:11:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ajuste_invs`
--
ALTER TABLE `ajuste_invs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ajuste_invs_moneda_id_foreign` (`moneda_id`);

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asientos_libros_iva_id_foreign` (`libros_iva_id`),
  ADD KEY `asientos_gestion_contable_id_foreign` (`gestion_contable_id`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra_ventas`
--
ALTER TABLE `compra_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_ventas_transaccion_id_foreign` (`transaccion_id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_asientos`
--
ALTER TABLE `detalle_asientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_asientos_asiento_id_foreign` (`asiento_id`),
  ADD KEY `detalle_asientos_plan_cuenta_id_foreign` (`plan_cuenta_id`);

--
-- Indices de la tabla `dosificacions`
--
ALTER TABLE `dosificacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_transaccion_id_foreign` (`transaccion_id`),
  ADD KEY `facturas_dosificacion_id_foreign` (`dosificacion_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `gestion_contables`
--
ALTER TABLE `gestion_contables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventarios_moneda_id_foreign` (`moneda_id`);

--
-- Indices de la tabla `invoice_lineas`
--
ALTER TABLE `invoice_lineas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libros_ivas`
--
ALTER TABLE `libros_ivas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pccs`
--
ALTER TABLE `pccs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pccs_beneficiario_id_foreign` (`beneficiario_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pjuridicas`
--
ALTER TABLE `pjuridicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pjuridicas_pcc_id_foreign` (`pcc_id`);

--
-- Indices de la tabla `plan_cuentas`
--
ALTER TABLE `plan_cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pnaturals`
--
ALTER TABLE `pnaturals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pnaturals_pcc_id_foreign` (`pcc_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roses`
--
ALTER TABLE `roses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_cambios_moneda_id_foreign` (`moneda_id`);

--
-- Indices de la tabla `transaccions`
--
ALTER TABLE `transaccions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaccions_cliente_id_foreign` (`cliente_id`),
  ADD KEY `transaccions_moneda_id_foreign` (`moneda_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ajuste_invs`
--
ALTER TABLE `ajuste_invs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra_ventas`
--
ALTER TABLE `compra_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_asientos`
--
ALTER TABLE `detalle_asientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dosificacions`
--
ALTER TABLE `dosificacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestion_contables`
--
ALTER TABLE `gestion_contables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `invoice_lineas`
--
ALTER TABLE `invoice_lineas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros_ivas`
--
ALTER TABLE `libros_ivas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pccs`
--
ALTER TABLE `pccs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pjuridicas`
--
ALTER TABLE `pjuridicas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan_cuentas`
--
ALTER TABLE `plan_cuentas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pnaturals`
--
ALTER TABLE `pnaturals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roses`
--
ALTER TABLE `roses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transaccions`
--
ALTER TABLE `transaccions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ajuste_invs`
--
ALTER TABLE `ajuste_invs`
  ADD CONSTRAINT `ajuste_invs_moneda_id_foreign` FOREIGN KEY (`moneda_id`) REFERENCES `monedas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `asientos_gestion_contable_id_foreign` FOREIGN KEY (`gestion_contable_id`) REFERENCES `gestion_contables` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asientos_libros_iva_id_foreign` FOREIGN KEY (`libros_iva_id`) REFERENCES `libros_ivas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra_ventas`
--
ALTER TABLE `compra_ventas`
  ADD CONSTRAINT `compra_ventas_transaccion_id_foreign` FOREIGN KEY (`transaccion_id`) REFERENCES `transaccions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_asientos`
--
ALTER TABLE `detalle_asientos`
  ADD CONSTRAINT `detalle_asientos_asiento_id_foreign` FOREIGN KEY (`asiento_id`) REFERENCES `asientos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_asientos_plan_cuenta_id_foreign` FOREIGN KEY (`plan_cuenta_id`) REFERENCES `plan_cuentas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_dosificacion_id_foreign` FOREIGN KEY (`dosificacion_id`) REFERENCES `dosificacions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_transaccion_id_foreign` FOREIGN KEY (`transaccion_id`) REFERENCES `transaccions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_moneda_id_foreign` FOREIGN KEY (`moneda_id`) REFERENCES `monedas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pccs`
--
ALTER TABLE `pccs`
  ADD CONSTRAINT `pccs_beneficiario_id_foreign` FOREIGN KEY (`beneficiario_id`) REFERENCES `beneficiarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pjuridicas`
--
ALTER TABLE `pjuridicas`
  ADD CONSTRAINT `pjuridicas_pcc_id_foreign` FOREIGN KEY (`pcc_id`) REFERENCES `pccs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pnaturals`
--
ALTER TABLE `pnaturals`
  ADD CONSTRAINT `pnaturals_pcc_id_foreign` FOREIGN KEY (`pcc_id`) REFERENCES `pccs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_cambios`
--
ALTER TABLE `tipo_cambios`
  ADD CONSTRAINT `tipo_cambios_moneda_id_foreign` FOREIGN KEY (`moneda_id`) REFERENCES `monedas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transaccions`
--
ALTER TABLE `transaccions`
  ADD CONSTRAINT `transaccions_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaccions_moneda_id_foreign` FOREIGN KEY (`moneda_id`) REFERENCES `monedas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
