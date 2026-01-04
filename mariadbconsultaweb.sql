-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         12.1.2-MariaDB - MariaDB Server
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para informatica
CREATE DATABASE IF NOT EXISTS `informatica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `informatica`;

-- Volcando estructura para tabla informatica.asignatura
CREATE TABLE IF NOT EXISTS `asignatura` (
  `nombre_asignatura` varchar(50) DEFAULT NULL,
  `cat_asignatura` varchar(50) DEFAULT NULL,
  `credito_asignatura` varchar(50) DEFAULT NULL,
  `prerequisito_asignatura` varchar(50) DEFAULT NULL,
  `codigo_planestudio` varchar(50) NOT NULL,
  `codigo_asignatura` varchar(50) NOT NULL,
  `codigo_docente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_planestudio`,`codigo_asignatura`),
  KEY `fk_asignatura_docente` (`codigo_docente`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_planestudio`) REFERENCES `plan_estudio` (`codigo_planestudio`),
  CONSTRAINT `fk_asignatura_docente` FOREIGN KEY (`codigo_docente`) REFERENCES `docente` (`codigo_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.asignatura: ~46 rows (aproximadamente)
INSERT INTO `asignatura` (`nombre_asignatura`, `cat_asignatura`, `credito_asignatura`, `prerequisito_asignatura`, `codigo_planestudio`, `codigo_asignatura`, `codigo_docente`) VALUES
	('Introducción a la Ingeniería', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000001', 'INF-01', 'DOC-001'),
	('Programación I', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000001', 'INF-02', 'DOC-001'),
	('Programación II', 'Obligatoria', '4', 'INF-02', 'PLAN-000001', 'INF-03', 'DOC-001'),
	('Matemática Discreta', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000001', 'INF-04', 'DOC-001'),
	('Base de Datos', 'Obligatoria', '4', 'INF-03', 'PLAN-000001', 'INF-05', 'DOC-001'),
	('Ingeniería de Software', 'Obligatoria', '4', 'INF-05', 'PLAN-000001', 'INF-06', 'DOC-001'),
	('Introducción a la Minería', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000002', 'MIN-01', 'DOC-004'),
	('Geología General', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000002', 'MIN-02', 'DOC-004'),
	('Topografía', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000002', 'MIN-03', 'DOC-004'),
	('Explotación de Minas', 'Obligatoria', '4', 'MIN-02', 'PLAN-000002', 'MIN-04', 'DOC-004'),
	('Seguridad Minera', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000002', 'MIN-05', 'DOC-004'),
	('Introducción a la Administración', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000003', 'ADM-01', 'DOC-006'),
	('Contabilidad General', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000003', 'ADM-02', 'DOC-006'),
	('Economía', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000003', 'ADM-03', 'DOC-006'),
	('Marketing', 'Obligatoria', '3', 'ADM-01', 'PLAN-000003', 'ADM-04', 'DOC-006'),
	('Gestión de Recursos Humanos', 'Obligatoria', '3', 'ADM-01', 'PLAN-000003', 'ADM-05', 'DOC-006'),
	('Introducción a la Ciencia Política', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000004', 'POL-01', 'DOC-009'),
	('Teoría del Estado', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000004', 'POL-02', 'DOC-009'),
	('Derecho Constitucional', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000004', 'POL-03', 'DOC-009'),
	('Políticas Públicas', 'Obligatoria', '3', 'POL-01', 'PLAN-000004', 'POL-04', 'DOC-009'),
	('Relaciones Internacionales', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000004', 'POL-05', 'DOC-009'),
	('Introducción a la Ingeniería Civil', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000005', 'CIV-01', 'DOC-010'),
	('Estática', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000005', 'CIV-02', 'DOC-010'),
	('Resistencia de Materiales', 'Obligatoria', '4', 'CIV-02', 'PLAN-000005', 'CIV-03', 'DOC-010'),
	('Topografía', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000005', 'CIV-04', 'DOC-010'),
	('Construcción I', 'Obligatoria', '4', 'CIV-03', 'PLAN-000005', 'CIV-05', 'DOC-010'),
	('Introducción a la Agroindustria', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000006', 'AGR-01', 'DOC-014'),
	('Química General', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000006', 'AGR-02', 'DOC-014'),
	('Procesos Agroindustriales', 'Obligatoria', '4', 'AGR-02', 'PLAN-000006', 'AGR-03', 'DOC-014'),
	('Tecnología de Alimentos', 'Obligatoria', '4', 'AGR-03', 'PLAN-000006', 'AGR-04', 'DOC-014'),
	('Gestión de Calidad', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000006', 'AGR-05', 'DOC-014'),
	('Introducción a la Educación', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000007', 'EDU-01', 'DOC-012'),
	('Psicología Infantil', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000007', 'EDU-02', 'DOC-012'),
	('Didáctica General', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000007', 'EDU-03', 'DOC-012'),
	('Estimulación Temprana', 'Obligatoria', '4', 'EDU-02', 'PLAN-000007', 'EDU-04', 'DOC-012'),
	('Práctica Preprofesional', 'Obligatoria', '4', 'EDU-03', 'PLAN-000007', 'EDU-05', 'DOC-012'),
	('Introducción a la Veterinaria', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000008', 'VET-01', 'DOC-013'),
	('Anatomía Animal', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000008', 'VET-02', 'DOC-013'),
	('Fisiología Animal', 'Obligatoria', '4', 'VET-02', 'PLAN-000008', 'VET-03', 'DOC-013'),
	('Producción Animal', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000008', 'VET-04', 'DOC-013'),
	('Sanidad Animal', 'Obligatoria', '4', 'VET-03', 'PLAN-000008', 'VET-05', 'DOC-013'),
	('Introducción a la Agroecología', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000009', 'AGRO-01', 'DOC-015'),
	('Ecología General', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000009', 'AGRO-02', 'DOC-015'),
	('Manejo de Suelos', 'Obligatoria', '4', 'NINGUNO', 'PLAN-000009', 'AGRO-03', 'DOC-015'),
	('Producción Sostenible', 'Obligatoria', '4', 'AGRO-02', 'PLAN-000009', 'AGRO-04', 'DOC-015'),
	('Agricultura Orgánica', 'Obligatoria', '3', 'NINGUNO', 'PLAN-000009', 'AGRO-05', 'DOC-015');

-- Volcando estructura para tabla informatica.asignaturaofrecida
CREATE TABLE IF NOT EXISTS `asignaturaofrecida` (
  `limite_estudiante` varchar(50) DEFAULT NULL,
  `codigo_planestudio` varchar(50) NOT NULL,
  `codigo_asignatura` varchar(50) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_planestudio`,`codigo_asignatura`,`semestre`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_planestudio`, `codigo_asignatura`) REFERENCES `asignatura` (`codigo_planestudio`, `codigo_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.asignaturaofrecida: ~46 rows (aproximadamente)
INSERT INTO `asignaturaofrecida` (`limite_estudiante`, `codigo_planestudio`, `codigo_asignatura`, `semestre`) VALUES
	('45', 'PLAN-000001', 'INF-01', '2024-I'),
	('40', 'PLAN-000001', 'INF-02', '2024-II'),
	('35', 'PLAN-000001', 'INF-03', '2025-I'),
	('38', 'PLAN-000001', 'INF-04', '2024-I'),
	('32', 'PLAN-000001', 'INF-05', '2025-I'),
	('30', 'PLAN-000001', 'INF-06', '2025-I'),
	('40', 'PLAN-000002', 'MIN-01', '2024-I'),
	('36', 'PLAN-000002', 'MIN-02', '2024-II'),
	('34', 'PLAN-000002', 'MIN-03', '2024-II'),
	('30', 'PLAN-000002', 'MIN-04', '2025-I'),
	('28', 'PLAN-000002', 'MIN-05', '2025-I'),
	('50', 'PLAN-000003', 'ADM-01', '2024-I'),
	('48', 'PLAN-000003', 'ADM-02', '2024-II'),
	('46', 'PLAN-000003', 'ADM-03', '2024-II'),
	('44', 'PLAN-000003', 'ADM-04', '2025-I'),
	('42', 'PLAN-000003', 'ADM-05', '2025-I'),
	('35', 'PLAN-000004', 'POL-01', '2024-I'),
	('32', 'PLAN-000004', 'POL-02', '2024-II'),
	('30', 'PLAN-000004', 'POL-03', '2024-II'),
	('28', 'PLAN-000004', 'POL-04', '2025-I'),
	('26', 'PLAN-000004', 'POL-05', '2025-I'),
	('45', 'PLAN-000005', 'CIV-01', '2024-I'),
	('40', 'PLAN-000005', 'CIV-02', '2024-II'),
	('38', 'PLAN-000005', 'CIV-03', '2025-I'),
	('36', 'PLAN-000005', 'CIV-04', '2024-II'),
	('34', 'PLAN-000005', 'CIV-05', '2025-I'),
	('30', 'PLAN-000006', 'AGR-01', '2024-I'),
	('28', 'PLAN-000006', 'AGR-02', '2024-II'),
	('26', 'PLAN-000006', 'AGR-03', '2025-I'),
	('24', 'PLAN-000006', 'AGR-04', '2025-I'),
	('22', 'PLAN-000006', 'AGR-05', '2024-II'),
	('35', 'PLAN-000007', 'EDU-01', '2024-I'),
	('33', 'PLAN-000007', 'EDU-02', '2024-II'),
	('31', 'PLAN-000007', 'EDU-03', '2024-II'),
	('29', 'PLAN-000007', 'EDU-04', '2025-I'),
	('27', 'PLAN-000007', 'EDU-05', '2025-I'),
	('32', 'PLAN-000008', 'VET-01', '2024-I'),
	('30', 'PLAN-000008', 'VET-02', '2024-II'),
	('28', 'PLAN-000008', 'VET-03', '2025-I'),
	('26', 'PLAN-000008', 'VET-04', '2024-II'),
	('24', 'PLAN-000008', 'VET-05', '2025-I'),
	('30', 'PLAN-000009', 'AGRO-01', '2024-I'),
	('28', 'PLAN-000009', 'AGRO-02', '2024-II'),
	('26', 'PLAN-000009', 'AGRO-03', '2024-II'),
	('24', 'PLAN-000009', 'AGRO-04', '2025-I'),
	('22', 'PLAN-000009', 'AGRO-05', '2025-I');

-- Volcando estructura para tabla informatica.carga_horario
CREATE TABLE IF NOT EXISTS `carga_horario` (
  `ambiente` varchar(50) DEFAULT NULL,
  `codigo_docente` varchar(50) NOT NULL,
  `codigo_planestudio` varchar(50) NOT NULL,
  `codigo_asignatura` varchar(50) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_docente`,`codigo_planestudio`,`codigo_asignatura`,`semestre`),
  KEY `codigo_planestudio` (`codigo_planestudio`,`codigo_asignatura`,`semestre`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_docente`) REFERENCES `docente` (`codigo_docente`),
  CONSTRAINT `2` FOREIGN KEY (`codigo_planestudio`, `codigo_asignatura`, `semestre`) REFERENCES `asignaturaofrecida` (`codigo_planestudio`, `codigo_asignatura`, `semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.carga_horario: ~41 rows (aproximadamente)
INSERT INTO `carga_horario` (`ambiente`, `codigo_docente`, `codigo_planestudio`, `codigo_asignatura`, `semestre`) VALUES
	('Lab Sistemas 1', 'DOC-001', 'PLAN-000001', 'INF-01', '2024-I'),
	('Aula 101', 'DOC-001', 'PLAN-000001', 'INF-04', '2024-I'),
	('Lab Programación', 'DOC-002', 'PLAN-000001', 'INF-02', '2024-II'),
	('Lab Base Datos', 'DOC-002', 'PLAN-000001', 'INF-05', '2025-I'),
	('Lab Programación', 'DOC-003', 'PLAN-000001', 'INF-03', '2025-I'),
	('Aula 102', 'DOC-003', 'PLAN-000001', 'INF-06', '2025-I'),
	('Aula Minas 1', 'DOC-004', 'PLAN-000002', 'MIN-01', '2024-I'),
	('Campo Minero', 'DOC-004', 'PLAN-000002', 'MIN-03', '2024-II'),
	('Aula Minas 4', 'DOC-004', 'PLAN-000002', 'MIN-05', '2025-I'),
	('Aula Minas 2', 'DOC-005', 'PLAN-000002', 'MIN-02', '2024-II'),
	('Aula Minas 3', 'DOC-005', 'PLAN-000002', 'MIN-04', '2025-I'),
	('Aula Adm 1', 'DOC-006', 'PLAN-000003', 'ADM-01', '2024-I'),
	('Aula Adm 3', 'DOC-006', 'PLAN-000003', 'ADM-03', '2024-II'),
	('Aula Adm 5', 'DOC-006', 'PLAN-000003', 'ADM-05', '2025-I'),
	('Aula Adm 2', 'DOC-007', 'PLAN-000003', 'ADM-02', '2024-II'),
	('Aula Adm 4', 'DOC-007', 'PLAN-000003', 'ADM-04', '2025-I'),
	('Aula Pol 1', 'DOC-008', 'PLAN-000004', 'POL-01', '2024-I'),
	('Aula Pol 4', 'DOC-008', 'PLAN-000004', 'POL-04', '2025-I'),
	('Aula Pol 2', 'DOC-009', 'PLAN-000004', 'POL-02', '2024-II'),
	('Aula Pol 3', 'DOC-009', 'PLAN-000004', 'POL-03', '2024-II'),
	('Aula Pol 5', 'DOC-009', 'PLAN-000004', 'POL-05', '2025-I'),
	('Aula Civil 1', 'DOC-010', 'PLAN-000005', 'CIV-01', '2024-I'),
	('Campo Topografía', 'DOC-010', 'PLAN-000005', 'CIV-04', '2024-II'),
	('Aula Civil 2', 'DOC-011', 'PLAN-000005', 'CIV-02', '2024-II'),
	('Lab Estructuras', 'DOC-011', 'PLAN-000005', 'CIV-03', '2025-I'),
	('Aula Civil 3', 'DOC-011', 'PLAN-000005', 'CIV-05', '2025-I'),
	('Aula Edu 1', 'DOC-012', 'PLAN-000007', 'EDU-01', '2024-I'),
	('Aula Edu 2', 'DOC-012', 'PLAN-000007', 'EDU-02', '2024-II'),
	('Aula Edu 3', 'DOC-012', 'PLAN-000007', 'EDU-03', '2024-II'),
	('Aula Edu 4', 'DOC-012', 'PLAN-000007', 'EDU-04', '2025-I'),
	('Aula Edu 5', 'DOC-012', 'PLAN-000007', 'EDU-05', '2025-I'),
	('Lab Veterinaria', 'DOC-013', 'PLAN-000008', 'VET-01', '2024-I'),
	('Lab Anatomía', 'DOC-013', 'PLAN-000008', 'VET-02', '2024-II'),
	('Lab Fisiología', 'DOC-013', 'PLAN-000008', 'VET-03', '2025-I'),
	('Granja Experimental', 'DOC-013', 'PLAN-000008', 'VET-04', '2024-II'),
	('Lab Sanidad', 'DOC-013', 'PLAN-000008', 'VET-05', '2025-I'),
	('Planta Piloto', 'DOC-014', 'PLAN-000006', 'AGR-01', '2024-I'),
	('Lab Química', 'DOC-014', 'PLAN-000006', 'AGR-02', '2024-II'),
	('Planta Procesos', 'DOC-014', 'PLAN-000006', 'AGR-03', '2025-I'),
	('Aula Agro', 'DOC-015', 'PLAN-000009', 'AGRO-01', '2024-I'),
	('Campo Experimental', 'DOC-015', 'PLAN-000009', 'AGRO-02', '2024-II');

-- Volcando estructura para tabla informatica.detalle_matricula
CREATE TABLE IF NOT EXISTS `detalle_matricula` (
  `nota` decimal(4,2) DEFAULT NULL,
  `codigo_estudiante` char(6) NOT NULL,
  `codigo_planestudio` varchar(50) NOT NULL,
  `codigo_asignatura` varchar(50) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_estudiante`,`codigo_planestudio`,`codigo_asignatura`,`semestre`),
  KEY `codigo_estudiante` (`codigo_estudiante`,`semestre`),
  KEY `codigo_planestudio` (`codigo_planestudio`,`codigo_asignatura`,`semestre`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_estudiante`, `semestre`) REFERENCES `matricula` (`codigo_estudiante`, `semestre`),
  CONSTRAINT `2` FOREIGN KEY (`codigo_planestudio`, `codigo_asignatura`, `semestre`) REFERENCES `asignaturaofrecida` (`codigo_planestudio`, `codigo_asignatura`, `semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.detalle_matricula: ~0 rows (aproximadamente)

-- Volcando estructura para tabla informatica.docente
CREATE TABLE IF NOT EXISTS `docente` (
  `codigo_docente` varchar(50) NOT NULL,
  `ap_docente` varchar(50) DEFAULT NULL,
  `am_docente` varchar(50) DEFAULT NULL,
  `nombre_docente` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sueldo` decimal(10,2) DEFAULT NULL,
  `sexo_docente` char(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.docente: ~15 rows (aproximadamente)
INSERT INTO `docente` (`codigo_docente`, `ap_docente`, `am_docente`, `nombre_docente`, `titulo`, `fecha_nacimiento`, `sueldo`, `sexo_docente`) VALUES
	('DOC-001', 'Quispe', 'Ramos', 'Juan Carlos', 'Ingeniero de Sistemas', '1978-05-12', 3811.50, 'M'),
	('DOC-002', 'Flores', 'Mamani', 'Rosa Elena', 'Magister en Ingeniería de Software', '1985-05-12', 4138.20, 'F'),
	('DOC-003', 'Huamani', 'Apaza', 'Luis Alberto', 'Doctor en Ciencias de la Computación', '1990-09-21', 4900.50, 'M'),
	('DOC-004', 'Ccahuana', 'Quenta', 'Oscar Manuel', 'Ingeniero de Minas', '1975-03-18', 4356.00, 'M'),
	('DOC-005', 'Soto', 'Condori', 'Miguel Angel', 'Magister en Geología', '1982-11-04', 4029.30, 'M'),
	('DOC-006', 'Rojas', 'Flores', 'Patricia Isabel', 'Licenciada en Administración', '1988-07-30', 3484.80, 'F'),
	('DOC-007', 'Perez', 'Diaz', 'Carlos Enrique', 'Magister en Gestión Empresarial', '1988-07-30', 3920.40, 'M'),
	('DOC-008', 'Torres', 'Lopez', 'Ana Lucia', 'Licenciada en Ciencias Políticas', '1992-02-14', 3593.70, 'F'),
	('DOC-009', 'Apaza', 'Mamani', 'Jorge Luis', 'Doctor en Derecho Constitucional', '1970-10-09', 5227.20, 'M'),
	('DOC-010', 'Chambi', 'Huanca', 'Edwin Roberto', 'Ingeniero Civil', '1980-01-22', 4247.10, 'M'),
	('DOC-011', 'Condori', 'Ramos', 'Silvia Beatriz', 'Magister en Estructuras', '1986-06-14', 4464.90, 'F'),
	('DOC-012', 'Paredes', 'Suni', 'Milagros Elena', 'Licenciada en Educación Inicial', '1994-03-05', 3267.00, 'F'),
	('DOC-013', 'Vilca', 'Choque', 'Fernando Alexis', 'Médico Veterinario', '1983-12-18', 4573.80, 'M'),
	('DOC-014', 'Yupanqui', 'Lipa', 'Renzo Javier', 'Ingeniero Agroindustrial', '1976-08-27', 4029.30, 'M'),
	('DOC-015', 'Aruquipa', 'Cruz', 'Daniela Fernanda', 'Magister en Agroecología', '1991-04-10', 3920.40, 'F');

-- Volcando estructura para tabla informatica.escuela
CREATE TABLE IF NOT EXISTS `escuela` (
  `codigo_escuela` char(6) NOT NULL,
  `nombre_escuela` varchar(50) DEFAULT NULL,
  `Nro_estudiantes` int(11) DEFAULT NULL,
  `Nro_estudiantes_mujeres` int(11) DEFAULT NULL,
  `Nro_estudiantes_varones` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.escuela: ~9 rows (aproximadamente)
INSERT INTO `escuela` (`codigo_escuela`, `nombre_escuela`, `Nro_estudiantes`, `Nro_estudiantes_mujeres`, `Nro_estudiantes_varones`) VALUES
	('000001', 'Inginieria informatica y sistemas ', 5, 2, 3),
	('000002', 'Inginieria de minas', 10, 4, 6),
	('000003', 'administracion ', 10, 5, 5),
	('000004', 'ciencias politicas', 10, 5, 5),
	('000005', 'Inginieria civil', 10, 5, 5),
	('000006', 'Inginieria agroindustrial', 10, 5, 5),
	('000007', 'educacion inicial', 10, 5, 5),
	('000008', 'veterinaria y zootecnia', 10, 5, 5),
	('000009', 'inginieria agroecologica', 10, 5, 5);

-- Volcando estructura para tabla informatica.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo_estudiante` char(6) NOT NULL,
  `ap_estudiante` varchar(50) DEFAULT NULL,
  `am_estudiante` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo_estudiante` char(1) DEFAULT NULL,
  `codigo_escuela` char(6) DEFAULT NULL,
  `edad` char(2) NOT NULL,
  `nombre_estudiante` varchar(50) DEFAULT NULL,
  `nro_hermanos` int(11) DEFAULT NULL,
  `notae` int(11) DEFAULT NULL,
  `nro_matricula_estudiante` int(11) DEFAULT 0,
  PRIMARY KEY (`codigo_estudiante`),
  KEY `codigo_escuela` (`codigo_escuela`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_escuela`) REFERENCES `escuela` (`codigo_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.estudiante: ~85 rows (aproximadamente)
INSERT INTO `estudiante` (`codigo_estudiante`, `ap_estudiante`, `am_estudiante`, `fecha_nacimiento`, `sexo_estudiante`, `codigo_escuela`, `edad`, `nombre_estudiante`, `nro_hermanos`, `notae`, `nro_matricula_estudiante`) VALUES
	('101225', 'flores', 'aroni', '2002-11-05', 'M', '000001', '25', 'maycol flores', 2, 20, 0),
	('101263', 'escobar', 'de flores', '1995-10-05', 'F', '000001', '14', 'sarai angelica', 1, 14, 0),
	('101298', 'flores', 'flores', '2004-01-05', 'M', '000001', '20', 'andino', 6, 17, 0),
	('101311', 'lomasto', 'aroni', '2004-03-05', 'M', '000001', '17', 'anderson', 4, 5, 0),
	('101326', 'arcawa', 'quispe', '2001-01-05', 'F', '000001', '14', 'tomasa', 0, 11, 0),
	('101601', 'Gomez', 'Ramos', '1980-02-14', 'M', '000002', '21', 'Luis Alberto', 3, 10, 0),
	('101602', 'Soto', 'Chavez', '1983-05-20', 'M', '000002', '16', 'Carlos Andres', 5, 11, 0),
	('101603', 'Lopez', 'Huamani', '1986-08-09', 'M', '000002', '14', 'Maria Elena', 2, 5, 0),
	('101604', 'Torres', 'Condori', '1989-11-30', 'F', '000002', '16', 'Ana Lucia', 0, 14, 0),
	('101605', 'Rojas', 'Ccahuana', '1992-04-18', 'F', '000002', '18', 'Rosa Milagros', 7, 13, 0),
	('101606', 'Vargas', 'Quispe', '1995-07-25', 'M', '000002', '19', 'Miguel Angel', 4, 20, 0),
	('101607', 'Flores', 'Huaman', '1998-09-12', 'F', '000002', '21', 'Patricia Isabel', 1, 11, 0),
	('101608', 'Salas', 'Mamani', '2001-01-05', 'M', '000002', '20', 'Jose Antonio', 6, 5, 0),
	('101609', 'Diaz', 'Apaza', '2003-06-22', 'F', '000002', '17', 'Carmen Rosa', 2, 4, 0),
	('101610', 'Perez', 'Quispe', '2005-10-10', 'M', '000002', '19', 'Juan Carlos', 3, 17, 0),
	('101701', 'Mamani', 'Quispe', '1981-03-12', 'M', '000003', '17', 'Victor Hugo', 5, 10, 0),
	('101702', 'Apaza', 'Condori', '1984-07-28', 'F', '000003', '19', 'Julia Beatriz', 2, 11, 0),
	('101703', 'Ccahuana', 'Ramos', '1987-10-05', 'M', '000003', '25', 'Edgar Manuel', 0, 5, 0),
	('101704', 'Huamani', 'Soto', '1990-01-18', 'F', '000003', '17', 'Ruth Patricia', 4, 14, 0),
	('101705', 'Quispe', 'Flores', '1993-05-22', 'M', '000003', '24', 'Jorge Luis', 6, 13, 0),
	('101706', 'Chavez', 'Mamani', '1996-09-14', 'F', '000003', '25', 'Milagros Elena', 1, 20, 0),
	('101707', 'Ramos', 'Diaz', '1999-02-08', 'M', '000003', '19', 'Oscar Antonio', 3, 11, 0),
	('101708', 'Condori', 'Perez', '2001-06-30', 'F', '000003', '26', 'Lucia Fernanda', 2, 5, 0),
	('101709', 'Soto', 'Apaza', '2003-11-19', 'M', '000003', '22', 'Renzo Alexis', 5, 4, 0),
	('101710', 'Flores', 'Lopez', '2005-04-07', 'F', '000003', '21', 'Daniela Sofia', 7, 11, 0),
	('101801', 'Huanca', 'Rojas', '1980-01-22', 'M', '000004', '21', 'Marco Antonio', 1, 10, 0),
	('101802', 'Puma', 'Quispe', '1983-04-10', 'F', '000004', '22', 'Silvia Beatriz', 0, 11, 0),
	('101803', 'Calla', 'Mamani', '1986-07-18', 'M', '000004', '23', 'Edwin Roberto', 3, 5, 0),
	('101804', 'Sanca', 'Huamani', '1989-10-05', 'F', '000004', '24', 'Rosa Delia', 4, 14, 0),
	('101805', 'Quispe', 'Torres', '1992-02-27', 'M', '000004', '25', 'Julio Cesar', 6, 13, 0),
	('101806', 'Ramos', 'Apaza', '1995-06-14', 'F', '000004', '26', 'Claudia Milagros', 2, 20, 0),
	('101807', 'Condori', 'Flores', '1998-09-03', 'M', '000004', '27', 'Luis Enrique', 5, 11, 0),
	('101808', 'Mamani', 'Diaz', '2001-12-21', 'F', '000004', '17', 'Patricia Noemi', 1, 5, 0),
	('101809', 'Apaza', 'Lopez', '2003-05-11', 'M', '000004', '18', 'Fernando Alexis', 3, 4, 0),
	('101810', 'Rojas', 'Perez', '2005-08-30', 'F', '000004', '19', 'Andrea Sofia', 8, 11, 0),
	('101871', 'Cahuana', 'Quispe', '1980-11-23', 'M', '000005', '15', 'Renato Javier', 4, 10, 0),
	('101872', 'Ticona', 'Mamani', '1982-02-07', 'F', '000005', '16', 'Roxana Isabel', 2, 11, 0),
	('101873', 'Lipa', 'Ramos', '1984-08-19', 'M', '000005', '17', 'Edgar Luis', 0, 5, 0),
	('101874', 'Chambi', 'Huamani', '1987-01-30', 'F', '000005', '18', 'Nancy Beatriz', 5, 14, 0),
	('101875', 'Quenta', 'Flores', '1989-12-05', 'M', '000005', '19', 'Oscar Ruben', 7, 13, 0),
	('101876', 'Supo', 'Apaza', '1992-04-16', 'F', '000005', '20', 'Karla Milagros', 3, 20, 0),
	('101877', 'Condori', 'Diaz', '1995-09-28', 'M', '000005', '21', 'Jorge Alfredo', 1, 11, 0),
	('101878', 'Mamani', 'Lopez', '1998-06-03', 'F', '000005', '22', 'Patricia Elena', 6, 5, 0),
	('101879', 'Apaza', 'Perez', '2001-10-14', 'M', '000005', '23', 'Luis Fernando', 2, 4, 0),
	('101880', 'Rojas', 'Torres', '2004-03-21', 'F', '000005', '24', 'Andrea Valeria', 4, 11, 0),
	('101901', 'Yupanqui', 'Quispe', '1981-02-16', 'M', '000006', '11', 'Hector Raul', NULL, 10, 0),
	('101902', 'Chura', 'Mamani', '1984-06-09', 'F', '000006', '21', 'Elsa Beatriz', NULL, 11, 0),
	('101903', 'Huayta', 'Ramos', '1987-09-27', 'M', '000006', '22', 'Carlos Wilfredo', NULL, 5, 0),
	('101904', 'Vilca', 'Condori', '1990-01-13', 'F', '000006', '24', 'Ruth Maribel', NULL, 14, 0),
	('101905', 'Ccori', 'Flores', '1993-04-21', 'M', '000006', '17', 'Jose Manuel', NULL, 13, 0),
	('101906', 'Choque', 'Apaza', '1996-08-05', 'F', '000006', '17', 'Veronica Milagros', NULL, 20, 0),
	('101907', 'Paucara', 'Diaz', '1999-11-18', 'M', '000006', '17', 'Luis Fernando', NULL, 11, 0),
	('101908', 'Suni', 'Lopez', '2001-03-30', 'F', '000006', '18', 'Paola Cristina', NULL, 5, 0),
	('101909', 'Quenta', 'Perez', '2003-07-14', 'M', '000006', '19', 'Marco Antonio', NULL, 4, 0),
	('101910', 'Aruquipa', 'Rojas', '2005-12-02', 'F', '000006', '21', 'Daniela Fernanda', NULL, 11, 0),
	('102001', 'Alarcon', 'Quispe', '1981-07-14', 'M', '000007', '21', 'Diego Sebastian', 0, 10, 0),
	('102002', 'Paredes', 'Mamani', '1983-01-26', 'F', '000007', '22', 'Lucia Fernanda', 2, 11, 0),
	('102003', 'Medina', 'Ramos', '1986-10-03', 'M', '000007', '18', 'Ivan Alejandro', 5, 5, 0),
	('102004', 'Salazar', 'Huamani', '1989-05-19', 'F', '000007', '19', 'Rosa Patricia', 1, 14, 0),
	('102005', 'Navarro', 'Flores', '1992-12-08', 'M', '000007', '28', 'Marco Antonio', 6, 13, 0),
	('102006', 'Castro', 'Apaza', '1995-03-27', 'F', '000007', '18', 'Daniela Milagros', 3, 20, 0),
	('102007', 'Reyes', 'Diaz', '1998-08-11', 'M', '000007', '19', 'Luis Alberto', 4, 11, 0),
	('102008', 'Morales', 'Lopez', '2000-02-04', 'F', '000007', '19', 'Paola Andrea', 0, 5, 0),
	('102009', 'Vega', 'Perez', '2003-09-22', 'M', '000007', '20', 'Cristian Eduardo', 7, 4, 0),
	('102010', 'Rios', 'Torres', '2005-06-15', 'F', '000007', '17', 'Camila Sofia', 2, 11, 0),
	('102101', 'Bustamante', 'Quispe', '1980-04-09', 'M', '000008', '21', 'Andres Felipe', 3, 10, 0),
	('102102', 'Cabrera', 'Mamani', '1982-11-17', 'F', '000008', '22', 'Elena Rocio', 1, 11, 0),
	('102103', 'Pacheco', 'Ramos', '1985-02-28', 'M', '000008', '18', 'Jorge Wilmer', 6, 5, 0),
	('102104', 'Benavides', 'Huamani', '1988-08-06', 'F', '000008', '27', 'Claudia Beatriz', 0, 14, 0),
	('102105', 'Zapata', 'Flores', '1991-12-19', 'M', '000008', '24', 'Renzo Javier', 4, 13, 0),
	('102106', 'Figueroa', 'Apaza', '1994-03-25', 'F', '000008', '23', 'Milagros Noemi', 2, 20, 0),
	('102107', 'Valdivia', 'Diaz', '1997-09-02', 'M', '000008', '22', 'Oscar Emanuel', 5, 11, 0),
	('102108', 'Pineda', 'Lopez', '2000-01-14', 'F', '000008', '21', 'Patricia Karina', 7, 5, 0),
	('102109', 'Huertas', 'Perez', '2003-07-21', 'M', '000008', '18', 'Luis Miguel', 1, 4, 0),
	('102110', 'Roldan', 'Torres', '2005-10-30', 'F', '000008', '29', 'Andrea Lucia', 8, 11, 0),
	('102201', 'Ortega', 'Quispe', '1981-01-18', 'M', '000009', '21', 'Alex Renato', 2, 10, 0),
	('102202', 'Campos', 'Mamani', '1983-06-27', 'F', '000009', '11', 'Rocio Elizabeth', 0, 11, 0),
	('102203', 'Aguilar', 'Ramos', '1986-10-09', 'M', '000009', '22', 'Juan Manuel', 3, 5, 0),
	('102204', 'Cruz', 'Huamani', '1989-03-14', 'F', '000009', '23', 'Paola Cristina', 5, 14, 0),
	('102205', 'Mendoza', 'Flores', '1992-12-02', 'M', '000009', '24', 'Kevin Andres', 7, 13, 0),
	('102206', 'Ponce', 'Apaza', '1995-04-21', 'F', '000009', '25', 'Milagros Daniela', 1, 20, 0),
	('102207', 'Rivas', 'Diaz', '1998-08-30', 'M', '000009', '18', 'Luis Eduardo', 4, 11, 0),
	('102208', 'Luna', 'Lopez', '2000-02-11', 'F', '000009', '19', 'Karen Vanessa', 6, 5, 0),
	('102209', 'Herrera', 'Perez', '2003-07-25', 'M', '000009', '19', 'Marco Antonio', 2, 4, 0),
	('102210', 'Silva', 'Torres', '2005-11-06', 'F', '000009', '20', 'Andrea Sofia', 8, 11, 0);

-- Volcando estructura para procedimiento informatica.listar_estudiante
DELIMITER //
CREATE PROCEDURE `listar_estudiante`()
BEGIN
    SELECT *
    FROM estudiante;
END//
DELIMITER ;

-- Volcando estructura para tabla informatica.matricula
CREATE TABLE IF NOT EXISTS `matricula` (
  `fecha_matricula` date DEFAULT NULL,
  `total_credito_matricula` int(11) DEFAULT NULL,
  `codigo_estudiante` char(6) NOT NULL,
  `semestre` varchar(50) NOT NULL,
  `promedio_ponderado` varchar(25) DEFAULT '0',
  PRIMARY KEY (`codigo_estudiante`,`semestre`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_estudiante`) REFERENCES `estudiante` (`codigo_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.matricula: ~75 rows (aproximadamente)
INSERT INTO `matricula` (`fecha_matricula`, `total_credito_matricula`, `codigo_estudiante`, `semestre`, `promedio_ponderado`) VALUES
	('2024-11-12', 3, '101225', 'II', 'baja'),
	('2023-10-16', 2, '101298', 'I', 'ponderado'),
	('2021-09-15', 3, '101311', 'II', 'baja'),
	('2023-05-12', 4, '101311', 'III', 'mediana'),
	('2024-11-12', 4, '101326', 'I', 'ponderado'),
	('2024-03-18', 4, '101701', 'I', 'ponderado'),
	('2024-08-22', 3, '101702', 'II', 'baja'),
	('2025-01-12', 5, '101703', 'III', 'mediana'),
	('2024-11-07', 2, '101704', 'I', 'ponderado'),
	('2025-02-20', 4, '101705', 'II', 'baja'),
	('2024-07-25', 3, '101706', 'III', 'mediana'),
	('2025-03-03', 5, '101707', 'IV', 'muy baja'),
	('2024-09-16', 2, '101708', 'I', 'ponderado'),
	('2025-01-30', 4, '101709', 'II', 'baja'),
	('2024-12-12', 3, '101710', 'III', 'mediana'),
	('2024-03-20', 4, '101801', 'I', 'ponderado'),
	('2024-08-25', 3, '101802', 'II', 'baja'),
	('2025-01-15', 5, '101803', 'III', 'mediana'),
	('2024-11-10', 2, '101804', 'I', 'ponderado'),
	('2025-02-22', 4, '101805', 'II', 'baja'),
	('2024-07-28', 3, '101806', 'III', 'mediana'),
	('2025-03-05', 5, '101807', 'IV', 'muy baja'),
	('2024-09-18', 2, '101808', 'I', 'ponderado'),
	('2025-02-01', 4, '101809', 'II', 'baja'),
	('2024-12-15', 3, '101810', 'III', 'mediana'),
	('2024-03-22', 4, '101871', 'I', 'ponderado'),
	('2024-08-27', 3, '101872', 'II', 'baja'),
	('2025-01-18', 5, '101873', 'III', 'mediana'),
	('2024-11-12', 2, '101874', 'I', 'ponderado'),
	('2025-02-25', 4, '101875', 'II', 'baja'),
	('2024-07-30', 3, '101876', 'III', 'mediana'),
	('2025-03-08', 5, '101877', 'IV', 'muy baja'),
	('2024-09-20', 2, '101878', 'I', 'ponderado'),
	('2025-02-03', 4, '101879', 'II', 'baja'),
	('2024-12-18', 3, '101880', 'III', 'mediana'),
	('2024-03-25', 4, '101901', 'I', 'ponderado'),
	('2024-08-30', 3, '101902', 'II', 'baja'),
	('2025-01-20', 5, '101903', 'III', 'mediana'),
	('2024-11-15', 2, '101904', 'I', 'ponderado'),
	('2025-02-28', 4, '101905', 'II', 'baja'),
	('2024-08-02', 3, '101906', 'III', 'mediana'),
	('2025-03-10', 5, '101907', 'IV', 'muy baja'),
	('2024-09-23', 2, '101908', 'I', 'ponderado'),
	('2025-02-05', 4, '101909', 'II', 'baja'),
	('2024-12-20', 3, '101910', 'III', 'mediana'),
	('2024-03-28', 4, '102001', 'I', 'ponderado'),
	('2024-09-02', 3, '102002', 'II', 'baja'),
	('2025-01-23', 5, '102003', 'III', 'mediana'),
	('2024-11-18', 2, '102004', 'I', 'ponderado'),
	('2025-03-03', 4, '102005', 'II', 'baja'),
	('2024-08-05', 3, '102006', 'III', 'mediana'),
	('2025-03-12', 5, '102007', 'IV', 'muy baja'),
	('2024-09-26', 2, '102008', 'I', 'ponderado'),
	('2025-02-08', 4, '102009', 'II', 'baja'),
	('2024-12-23', 3, '102010', 'III', 'mediana'),
	('2024-04-01', 4, '102101', 'I', 'ponderado'),
	('2024-09-05', 3, '102102', 'II', 'baja'),
	('2025-01-26', 5, '102103', 'III', 'mediana'),
	('2024-11-21', 2, '102104', 'I', 'ponderado'),
	('2025-03-06', 4, '102105', 'II', 'baja'),
	('2024-08-08', 3, '102106', 'III', 'mediana'),
	('2025-03-15', 5, '102107', 'IV', 'muy baja'),
	('2024-09-29', 2, '102108', 'I', 'ponderado'),
	('2025-02-11', 4, '102109', 'II', 'baja'),
	('2024-12-26', 3, '102110', 'III', 'mediana'),
	('2024-04-05', 4, '102201', 'I', 'ponderado'),
	('2024-09-09', 3, '102202', 'II', 'baja'),
	('2025-01-30', 5, '102203', 'III', 'mediana'),
	('2024-11-25', 2, '102204', 'I', 'ponderado'),
	('2025-03-10', 4, '102205', 'II', 'baja'),
	('2024-08-12', 3, '102206', 'III', 'mediana'),
	('2025-03-18', 5, '102207', 'IV', 'muy baja'),
	('2024-10-03', 2, '102208', 'I', 'ponderado'),
	('2025-02-15', 4, '102209', 'II', 'baja'),
	('2024-12-30', 3, '102210', 'III', 'mediana');

-- Volcando estructura para tabla informatica.plan_estudio
CREATE TABLE IF NOT EXISTS `plan_estudio` (
  `codigo_planestudio` varchar(50) NOT NULL,
  `codigo_escuela` char(6) DEFAULT NULL,
  `observaciones_planestudio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_planestudio`),
  KEY `codigo_escuela` (`codigo_escuela`),
  CONSTRAINT `1` FOREIGN KEY (`codigo_escuela`) REFERENCES `escuela` (`codigo_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla informatica.plan_estudio: ~9 rows (aproximadamente)
INSERT INTO `plan_estudio` (`codigo_planestudio`, `codigo_escuela`, `observaciones_planestudio`) VALUES
	('PLAN-000001', '000001', 'Plan vigente Ingeniería Informática'),
	('PLAN-000002', '000002', 'Plan vigente Ingeniería de Minas'),
	('PLAN-000003', '000003', 'Plan vigente Administración'),
	('PLAN-000004', '000004', 'Plan vigente Ciencias Políticas'),
	('PLAN-000005', '000005', 'Plan vigente Ingeniería Civil'),
	('PLAN-000006', '000006', 'Plan vigente Ingeniería Agroindustrial'),
	('PLAN-000007', '000007', 'Plan vigente Educación Inicial'),
	('PLAN-000008', '000008', 'Plan vigente Veterinaria y Zootecnia'),
	('PLAN-000009', '000009', 'Plan vigente Ingeniería Agroecológica');

-- Volcando estructura para procedimiento informatica.suma_dos_numeros
DELIMITER //
CREATE PROCEDURE `suma_dos_numeros`()
BEGIN
    DECLARE nro1 INT;
    DECLARE nro2 INT;
    DECLARE suma INT;

    SET nro1 = 40;
    SET nro2 = 20;
    SET suma = nro1 + nro2;

    SELECT suma AS resultado;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
