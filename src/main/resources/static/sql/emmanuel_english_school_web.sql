-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23-Jul-2024 às 13:38
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `emmanuel_english_school_web`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id_estudante` varchar(10) DEFAULT NULL,
  `teste_escrito1` decimal(10,0) DEFAULT NULL,
  `teste_escrito2` decimal(38,2) DEFAULT NULL,
  `teste_escrito3` decimal(38,2) DEFAULT NULL,
  `teste_oral1` decimal(38,2) DEFAULT NULL,
  `teste_oral2` decimal(38,2) DEFAULT NULL,
  `teste_oral3` decimal(38,2) DEFAULT NULL,
  `teste_oral4` decimal(38,2) DEFAULT NULL,
  `teste_oral5` decimal(38,2) DEFAULT NULL,
  `media` decimal(38,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id_estudante`, `teste_escrito1`, `teste_escrito2`, `teste_escrito3`, `teste_oral1`, `teste_oral2`, `teste_oral3`, `teste_oral4`, `teste_oral5`, `media`) VALUES
('est_0281', 12, 12.50, 18.23, 13.50, 15.50, 14.20, 17.00, 16.00, 14.87),
('est_2135', 11, 16.00, 16.00, 6.25, 12.00, 15.00, 0.00, 0.00, 9.53),
('est_4105', 13, 0.00, 0.00, 12.00, 0.00, 0.00, 16.00, 15.00, 7.00),
('est_6707', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16.00, 2.00),
('est_5470', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_2306', 15, 0.00, 15.50, 0.00, 0.00, 0.00, 0.00, 0.00, 3.81),
('est_2457', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_1804', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_6261', 0, 0.00, 0.00, 13.00, 0.00, 0.00, 0.00, 0.00, 1.63),
('est_3566', 16, 17.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.38),
('est_1133', 12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.50),
('est_5161', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_6535', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_7458', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_8876', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_1124', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_6602', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_2228', 0, 12.25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.53),
('est_6074', 16, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00),
('est_0563', 15, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.88),
('est_5888', 13, 0.00, 15.25, 0.00, 0.00, 0.00, 0.00, 0.00, 3.53),
('est_1018', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_7123', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_5012', 0, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.50),
('est_1218', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
('est_0283', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `emergencia`
--

CREATE TABLE `emergencia` (
  `id_emergencia` int(10) NOT NULL DEFAULT 0,
  `id_estudante` varchar(10) DEFAULT NULL,
  `contacto_emergencia` varchar(100) DEFAULT NULL,
  `nome_completo` varchar(100) DEFAULT NULL,
  `numero_celular` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `emergencia`
--

INSERT INTO `emergencia` (`id_emergencia`, `id_estudante`, `contacto_emergencia`, `nome_completo`, `numero_celular`) VALUES
(1, 'est_4332', 'Pai', 'Nome B', '+258856767665'),
(2, NULL, 'em', 'nm', '88765443'),
(3, 'est_1370', '876767776', 'nome', '876767776'),
(4, 'est_1804', '', '', '+258'),
(5, 'est_8876', 'padrinho', 'nome_padrinho', '+258834521342'),
(6, 'est_6535', 'padrinho', 'nome_padrinho', '+258834521342'),
(7, 'est_1133', 'padrinho', 'nome_padrinho', '+258834521342'),
(8, 'est_1124', 'jhjhjh', 'hjhjhjh', '+2587767'),
(9, 'est_6707', 'padi', 'pai_pai', '+258867654332'),
(10, 'est_6261', 'usyh', 'ysys', '+258ghdgs'),
(11, 'est_6602', 'usyh', 'ysys', '+258ghdgs'),
(12, 'est_5161', 'q`q', 'q', '+258q'),
(14, 'est_4416', '', '', '+258'),
(15, 'est_4105', 'grhrehh', 'hsher', '+258sshshs'),
(16, 'est_8414', 'grhrehh', 'hsher', '+258sshshs'),
(17, 'est_0563', 'grhrehh', 'hsher', '+258sshshs'),
(18, 'est_7458', 'grhrehh', 'hsher', '+258sshshs'),
(19, 'est_1018', 'grhrehh', 'hsher', '+258sshshs'),
(20, 'est_2135', '', '', '+258'),
(21, 'est_0281', '', '', '+258'),
(22, 'est_2228', 'timerrrr', 'time_T', '+258876565665'),
(23, 'est_8675', 'mmm', 'mmm', '+258'),
(24, 'est_3775', '', '', '+258'),
(25, 'est_5470', '', 'aaa', '+258'),
(26, 'est_5888', 'aa', 'aa', '+258'),
(27, 'est_6074', '', '', '+258'),
(28, 'est_2306', '', '', '+258'),
(29, 'est_2457', '', '', '+258'),
(30, 'est_3566', 'pai', 'papapa', '+258876543332');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudante`
--

CREATE TABLE `estudante` (
  `id_estudante` varchar(10) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `morada` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `numero_celular` varchar(13) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `nivel` varchar(100) DEFAULT NULL,
  `horario` time(6) NOT NULL,
  `data_matricula` date DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estudante`
--

INSERT INTO `estudante` (`id_estudante`, `nome_completo`, `morada`, `bairro`, `email`, `data_nascimento`, `numero_celular`, `sexo`, `nivel`, `horario`, `data_matricula`, `password`) VALUES
('est_0281', 'Jose joao', '', 'magude', 'josejoao@gmail.com', '2015-08-24', '+258869488373', 'M', 'A1 (Basico)', '13:00:00.000000', '2024-04-09', '$2a$10$eWsh7EZMZ0l2kEp1PRNwgOU7ROmVbxnij6eQq3FU/dZNI4yFo6mKS'),
('est_0283', 'sdhkjsdhk', 'Maputo', 'Liberdade', 'gkjkvjk', '2020-12-31', 'hjkjh', 'M', 'A1 (Básico)', '12:30:00.000000', NULL, '$2a$10$rQXkpfJC.s/C6xgRKiOxyeZT4uywhCQSfic3AkTYRVUpJpNQ97IdW'),
('est_0563', 'Antonio Joao', 'hshera', 'Liberdade', 'antonio@gmail.com', '2002-08-19', '+258869488373', 'M', 'Inglês para negócios', '15:00:00.000000', '2024-04-08', '$2a$10$n379/SzfJuYBMFyyFQb0K.gJ0UuiZLZBACaFqNpccjoFGIOPauA9C'),
('est_1018', 'Francisco Antonio', 'hshera', 'Nkobe', 'franciscoantonio@gmail.com', '2005-08-26', '+258869488373', 'M', 'C1 (Avançado)', '13:00:00.000000', '2024-04-08', '$2a$10$QR079O.1Vf2G41Tv8QER9eXI8y2WQDl/qUYp97CqmVrI5pDOa3OSC'),
('est_1124', 'Feles Muianga', 'sjk', 'bairro----', 'felesmuianga@gmail.com', '2003-03-04', '+258869488373', 'M', 'D1 (Fluente)', '15:00:00.000000', '2024-04-07', '$2a$10$fHCN4N1.z3pVe1bV2y7iaOpFfDc17H.WCl9H0rtEHHx.pVv9cDTia'),
('est_1133', 'Sidónio Chaúque', 'morada----', 'bairro----', 'sidóniochaúque@gmail.com', '2015-04-23', '+258869488373', 'M', 'C1 (Avançado)', '13:00:00.000000', '2024-04-07', '$2a$10$qUjF3zu409ppbF6a958he.2ZZJBMWB4xiP2pyL41Ly7dPWt38.RWW'),
('est_1218', 'gjhh', 'Maputo', 'Liberdade', 'ghfh', '2024-12-31', 'hgjhg', 'M', 'A1 (Básico)', '12:30:00.000000', NULL, '$2a$10$1yMpsoSifm7YPAKfbRNxVufcijaplXr5ux.YCr2mAJMOMRz42G4qa'),
('est_1370', 'Pedro John', 'morada', 'bairro----', 'pedrojohn@gmail.com', '2015-02-18', '+258869488373', 'M', 'C1 (Avançado)', '18:00:00.000000', '2024-04-05', '$2a$10$FHkURjzoX7Fw9KCsTSLCBuYxUQx679P9TleW4lkHxdMOC9x/wGF/e'),
('est_1804', 'John Doe', '', 'bairro----', 'johndoe@gmail.com', '2015-12-12', '+258869488373', 'M', 'B1 (Intermediário)', '07:00:00.000000', '2024-04-05', '$2a$10$0coGxNj8fT46.Hui4KsJgunGEEEu.zn0gZRY06IfmDf9MkyslB/Xe'),
('est_2135', 'Filipe Joana', 'Matola', 'bairro----', 'filipejoana@gmail.com', '2014-08-04', '+258869488373', 'M', 'A1 (Básico)', '08:30:00.000000', '2024-04-09', '$2a$10$F6nVEsiNi87uQUGRE8cIheVU6uiqQbdV36I/.444CGqGgZ8XR7DC.'),
('est_2228', 'Joaquim A. Cesar', 'timer', 'bairro----', 'joaquimacesar@gmail.com', '2015-08-04', '+258869488373', 'M', 'Aulas domiciliares', '10:30:00.000000', '2024-04-09', '$2a$10$fHt9cnmqlDaF/j3eFggDRuSE77MOTaRmr0xgZhDsHp.9TmZ6gIEvS'),
('est_2306', 'Cesar Clown', '', 'bairro----', 'cesarclown@gmail.com', '2016-09-30', '+258869488373', 'M', 'A1 (Básico)', '02:02:00.000000', '2024-04-15', '$2a$10$4LlWnOmMuGzTSMVfnlPnxe8XVDKuKnXHFzJqWN20xg5cp98QBQP76'),
('est_2457', 'Monkey D. Luffy', '', 'bairro----', 'monkeydluffy@gmail.com', '2011-02-16', '+258869488373', 'M', 'A1 (Básico)', '02:02:00.000000', '2024-04-15', '$2a$10$vkCRLYxENGm3YmToz6IQ9ujMHfCmGGZGhTYoezzOBbPrJnSkqkM2e'),
('est_3566', 'wilma', 'maputo', 'zimpeto', 'wilma@gmail.com', '2013-07-28', '+258876543221', 'F', 'B1 (Intermediário)', '10:30:00.000000', '2024-05-03', '$2a$10$L.Lpc3GnSgVth9Cnl9CMH.J7eTEaHiK.9HBGK4BMMsF8Hy8Sm0H.S'),
('est_3775', 'São Petersburgo', '', 'bairro----', 'sãopetersburgo@gmail.com', '2014-11-14', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-15', '$2a$10$MFGBRiojySNgql6M4yIXwOUyJdCx06VjMfZ1.mWJ9TvcN8Ev5.R0S'),
('est_4105', 'Alfredo Joao', 'hshera', 'bairro----', 'alfredojoao@gmail.com', '2005-11-24', '+258869488373', 'M', 'A1 (Básico)', '02:02:00.000000', '2024-04-08', '$2a$10$XSd7TkG0f5qMhfCzFD.ZAeBfKSPNnLtWZxs8omZoKQS./VB3SZCUC'),
('est_4332', 'Trafalgar Law', 'morada', 'bairro----', 'trafalgarlaw@gmail.com', '2015-08-04', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-05', '$2a$10$RWH4YY2MxvRokRZx1GS0.O521t/36SnDE/KdDOgGqq36RQgohvxzK'),
('est_4416', 'Itadori Yuji', '', 'bairro----', 'itadoriyuji@gmail.com', '2014-01-17', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-07', '$2a$10$2fkHbhoAlAnG8Gga1YbBTeIULJsDH1ygPWaZ27blursEAzRNKVrwa'),
('est_5012', 'A Vumo', 'Maputo', 'Liberdade', 'admin@lago.co.mz', '2001-11-30', '+258861223112', 'M', 'C1 (Avançado)', '00:30:00.000000', NULL, '$2a$10$KZA58Mvs1j9hsdA7XzSLrOsMHo.O.tql8ovU8ZgOLuyNx0iPMcfQC'),
('est_5161', 'Ryomen Sukuna', 'q', 'bairro----', 'ryomensukuna@gmail.com', '2016-08-09', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-07', '$2a$10$9w0SoQnMm/w51t6W.phbFeM6xrKamguDQrsU/AvtkWtlXlxyV7eGm'),
('est_5470', 'Satoru Gojo', 'aa', 'bairro----', 'satorugojo@gmail.com', '2001-08-04', '+258869488373', 'M', 'A1 (Básico)', '02:02:00.000000', '2024-04-15', '$2a$10$OXFjqO8tfQbws9d6SUY7oOBjUYUY1GShSJQCja8vjaHxeSfTxonLW'),
('est_5875', 'Izuku Miodrya', '', 'bairro----', 'izukumiodrya@gmail.com', '2000-07-20', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-05', '$2a$10$2UsTih2kh6oPfh0mzsABrOOIKNPLWwTThoOGOMCBhBcirr4BWQyqq'),
('est_5888', 'All Might', 'aaa', 'bairro----', 'allmight@gmail.com', '2003-01-10', '+258869488373', 'M', 'Aulas online', '02:02:00.000000', '2024-04-15', '$2a$10$krbXC15uswwYxrWvv0kKYOvwDRBe7vraAh/.VFarwRMsv7/lsfLM2'),
('est_6064', 'Joao Felix', 'Maputo', 'chamaculo', 'admin@lago.co.mz', '2006-12-27', '+258856765432', 'M', 'A1 (Básico)', '12:30:00.000000', NULL, '$2a$10$l2qXkQa8ibLGhLI2C0uE/uA4qT4flGukEhQYES65pnLhSAzI/T1JC'),
('est_6074', 'All For One', '', 'bairro----', 'allforone@gmail.com', '2004-08-05', '+258869488373', 'M', 'Inglês Intensivo', '02:02:00.000000', '2024-04-15', '$2a$10$lFsk7xvLgE3aO3qZ9t0O0ug5SLid5xWCxvqy5lQeVkJ4.j5RGB6Ae'),
('est_6123', 'Outro', 'Maputo', 'Liberdade', 'outro@gmail.com', '2009-12-12', '+258861223112', 'M', 'A1 (Básico)', '20:30:00.000000', NULL, '$2a$10$EFcTU0W/XyK0GdgE4sNxs.8sliu36lutfD75A3IPjlNSoeYoPtT5q'),
('est_6261', 'Dr. Vegapunk', 'oqoo', 'bairro----', 'drvegapunk@gmail.com', '2002-12-03', '+258869488373', 'M', 'B1 (Intermediário)', '02:02:00.000000', '2024-04-07', '$2a$10$NTa.2TmXnn/mPuLziHjFjuYlOXQfuuUUQEt/wqmVUgehtwE2kMR4q'),
('est_6535', 'Sakazuki Akaino', 'morada----', 'bairro----', 'sakazukiakaino@gmail.com', '2001-09-21', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-07', '$2a$10$PuCQdY0aMZGonqqyEkDxzOCmAcRS0BDRXSE1/wxPKDgyrL9DVmtEW'),
('est_6602', 'Aokiji Kuzan', 'oqoo', 'bairro----', 'aokijikuzan@gmail.com', '2006-08-25', '+258869488373', 'M', 'D1 (Fluente)', '02:02:00.000000', '2024-04-07', '$2a$10$qu5r.HhfNNxitjsVAjkHqOterlhxO/wcyeMzrD2vUUhidAqlagx9O'),
('est_6707', 'Nico Robin', 'Machava sede, Q13', 'bairro----', 'nicorobin@gmail.com', '2004-02-17', '+258869488373', 'M', 'A1 (Básico)', '02:02:00.000000', '2024-04-07', '$2a$10$tLnfTttEFpKui55IdOcHoOVsuiHauXOp6o3EXtONV.LEV9dgnctqi'),
('est_7123', 'Filipe Dos Santos', 'Maputo', 'Liberdade', 'filipedossantos@gmail.com', '2008-02-11', '+258861223112', 'M', 'D1 (Fluente)', '08:00:00.000000', NULL, '$2a$10$6vOZhc96hYxI9Fj0u5PL4eRs3C9GsuBUdGGMVLwSwUvu3w651/YCi'),
('est_7380', 'Novo estudante', 'Maputo', 'Liberdade', 'novoestudante@gmail.com', '2011-06-04', '+258856765432', 'M', 'A1 (Básico)', '12:00:00.000000', NULL, '$2a$10$EGmGzfFGwGvpL92Cuntuj.c73J/399LVV0Ix.Zvi4V4qp1.7vxvWS'),
('est_7458', 'Roronoa Zoro', 'hshera', 'bairro----', 'roronoazoro@gmail.com', '2098-08-04', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-08', '$2a$10$XRI2Dh6OUaszm.yqDkmy4OA6mjHZ1yCEbXtbo4VY22rNfDEQvhLqi'),
('est_8414', 'King', 'hshera', 'bairro----', 'king@gmail.com', '2098-08-04', '+258869488373', 'M', 'Aulas ao domicílio', '02:02:00.000000', '2024-04-08', '$2a$10$uLBAtCxpArj/wd/O07OfneWrd8WCTdgp9OWjRxNnEJ4CU8CwZ6Qku'),
('est_8675', 'Vinsmoke Sanji', 'mmmmm', 'bairro----', 'vinsmokesanji@gmail.com', '2098-08-04', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-15', '$2a$10$zgXoRYAxiHDDF77.bluO0eY.36fiDRajG75CbamsItCnONSue5qLW'),
('est_8876', 'Todoroki Shouto', 'morada----', 'bairro----', 'todorokishouto@gmail.com', '2098-08-04', '+258869488373', 'M', 'C1 (Avançado)', '02:02:00.000000', '2024-04-07', '$2a$10$qQiS4rnVGdYQQ.4rw02zaO5AK3vprwYt35mzDH8P4cgm48DR/Vpai');

--
-- Acionadores `estudante`
--
DELIMITER $$
CREATE TRIGGER `insert_avaliacao` AFTER INSERT ON `estudante` FOR EACH ROW BEGIN
    /*
    * Inserir nas tabelas avaliacao geral e mensalidade assim que um novo estudante for registado
    */
    INSERT INTO avaliacao (id_estudante, teste_escrito1, teste_escrito2, teste_escrito3, teste_oral1, teste_oral2, teste_oral3, teste_oral4, teste_oral5) VALUES (new.id_estudante, 0, 0, 0, 0, 0, 0, 0, 0);
    INSERT INTO mensalidade (id_estudante, mes, status) VALUES (new.id_estudante, MONTH(NOW()), 'nao pago');

    IF new.nivel = 'A1 (Basico)' THEN
        UPDATE mensalidade set divida=1000 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'B1 (Intermediário)' THEN
        UPDATE mensalidade set divida=1025 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'C1 (Avançado)' THEN
        UPDATE mensalidade set divida=1225 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'D1 (Fluente)' THEN
        UPDATE mensalidade set divida=1415 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'Inglês para negócios' THEN
        UPDATE mensalidade set divida=4499 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'Aulas domiciliares' THEN
        UPDATE mensalidade set divida=5419 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'Inglês Intensivo' THEN
        UPDATE mensalidade set divida=3480 WHERE `mensalidade`.`id_estudante` = new.id_estudante;

    ELSEIF new.nivel = 'Aulas online' THEN
        UPDATE mensalidade set divida=1409 WHERE `mensalidade`.`id_estudante` = new.id_estudante;
    END IF ;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` varchar(10) NOT NULL,
  `id_utilizador` varchar(10) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `identificacao` varchar(13) DEFAULT NULL,
  `experiencia_profissional` varchar(100) DEFAULT NULL,
  `habilidades` varchar(100) DEFAULT NULL,
  `funcao` varchar(100) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `experiencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionarios`, `id_utilizador`, `nome`, `idade`, `identificacao`, `experiencia_profissional`, `habilidades`, `funcao`, `id`, `experiencia`) VALUES
('@0041503#', '', 'Jorge Paulo', 33, '', '', '', 'Agente de limpeza', NULL, NULL),
('@0385434#', '', 'a', 36, 'teste', 'funcionario de teste', 'funcionario de teste', 'Administrador', NULL, NULL),
('@0660014#', '', '', 12, '', '', '', '', NULL, NULL),
('@1432631#', '', 'nnn', 21, '', '', '', 'Professor', NULL, NULL),
('@2100108#', '', 'ww', 35, '', '', '', 'Pro', NULL, NULL),
('@2416523#', '', 'qqqqqqq', 22, 'wwwwwwww', 'wwwww', 'wwwwww', 'wwwwww', NULL, NULL),
('@2715777#', '', 'q', 12, '', '', '', 'Prof', NULL, NULL),
('@3045245#', '@414857q', 'Alberto', 34, '55664321234M', 'professor', 'Ingles', 'Professor', NULL, NULL),
('@3428661#', '', 'nome', 23, 'kkkk', 'kkkkk', 'kkkkkk', 'kkkkk', NULL, NULL),
('@3722470#', '', 'aaa', 12, '', '', '', 'll', NULL, NULL),
('@4431060#', '', 'Julio', 26, '675009430010A', 'Professor de biologia na instituiçao de ensino Willow International School', 'Biologia quimica, botânica', 'Professor', NULL, NULL),
('@4625342#', '@208133q', 'func_user', 23, '67676767367N', 'experiancia', 'fisica', 'Professor', NULL, NULL),
('@5256747#', '', 'nome', 23, '', '', '', '', NULL, NULL),
('@7203036#', '', 'qqpp', 53, '', '', '', 'Unc', NULL, NULL),
('@7647047#', '@630638q', 'Frenk Tovela', 17, '765465654300H', 'professor english na willow', 'ingles de negocios', 'Administrador', NULL, NULL),
('@7837742#', '', 'nnn', 21, '', '', '', 'Professor', NULL, NULL),
('func_3505', 'user_8276', 'wadolass', 35, '876543212345M', 'professor de ingles e frances', 'pedagogia', 'Professor', NULL, NULL),
('func_8124', 'user_7751', 'filipe marcos', 23, '874987894578N', 'professor de ingles', 'pedagogia', 'Professor', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidade`
--

CREATE TABLE `mensalidade` (
  `id_mensalidade` int(11) NOT NULL,
  `id_estudante` varchar(10) DEFAULT NULL,
  `mes` int(2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `divida` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mensalidade`
--

INSERT INTO `mensalidade` (`id_mensalidade`, `id_estudante`, `mes`, `status`, `divida`) VALUES
(1, 'est_4332', 4, 'pago', 0),
(2, 'est_1133', 4, 'pago', 0),
(3, 'est_1124', 4, 'pago', 0),
(4, 'est_6707', 4, 'pago', 0),
(5, 'est_6261', 4, 'pago', 0),
(6, 'est_6602', 4, 'pago', 0),
(7, 'est_5161', 4, 'pago', 0),
(9, 'est_4416', 4, 'pago', 0),
(10, 'est_4105', 4, 'pago', 0),
(11, 'est_8414', 4, 'pago', 0),
(12, 'est_0563', 4, 'nao pago', 4499),
(13, 'est_7458', 4, 'pago', 0),
(14, 'est_1018', 4, 'nao pago', 1225),
(15, 'est_2135', 4, 'nao pago', 1000),
(16, 'est_0281', 4, 'nao pago', 5419),
(17, 'est_2228', 4, 'nao pago', 5419),
(18, 'est_8675', 4, 'nao pago', 1000),
(19, 'est_3775', 4, 'nao pago', 1000),
(20, 'est_5470', 4, 'nao pago', 1000),
(21, 'est_5888', 4, 'nao pago', 1409),
(22, 'est_6074', 4, 'nao pago', 3489),
(23, 'est_2306', 4, 'pago', 0),
(24, 'est_2457', 4, 'pago', 0),
(25, 'est_3566', 5, 'pago', 0),
(26, 'est_5012', 6, 'pago', 0),
(27, 'est_1218', 6, 'pago', 0),
(28, 'est_0283', 6, 'nao pago', 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id_utilizador` varchar(8) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha_encoded` varchar(100) DEFAULT NULL,
  `funcao` varchar(100) NOT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`id_utilizador`, `nome`, `senha_encoded`, `funcao`, `senha`) VALUES
('@015822q', 'Ananias', '$2a$10$GZ3xVVb.HE0bjWoveSr.p.TKU..g1TaTNf7ldPKumjTMQAcCOPsKu', 'Administrador', 'senha47'),
('@038510q', 'func_u', '$2a$10$VZqdWjUy6l9P0Xz3HvAq7eXwHY/B0OvunNoOijnTOHtKD3cevdVAO', 'Professor', 'senha50'),
('@073558q', 'qqpp', '$2a$10$AClhE4n4SszyB3ZfYpIuieprlRDn5gpQ5Fw/QLoa8J21lkxRNjiCu', 'Unc', 'senha32'),
('@138331q', 'aaa', '$2a$10$wtL2C4md2fiz9wdfk4RWxe6SdXvhA01ArOlLnmNWG3BojKugazfcO', 'll', 'senha75'),
('@208133q', 'func_user', '$2a$10$gIKgtZ6jlYa102sKTMq2f.nYv4S1b9OKFYZ5oDkw54jYuRrhSHmw2', 'Professor', 'senha0'),
('@215162q', 'a', '$2a$10$dwhYuDcqsQLQ/mES5ftZb.32L2/s7JzioYOSsv/M8wE1QPiugOKZO', 'Administrador', 'senha62'),
('@221731q', 'Julio', '$2a$10$7fJVDX4yuHd3ocLE572rxeGrFV30grAoSQq58c3SLf1EG4JRtAKI6', 'Professor', 'senha59'),
('@270234q', 'qqqq', '$2a$10$4G8XIeEt8UXCdB.wVhca.ecm8Vt0m5G1RkVsZbawILpfmGavl8Hdu', 'Administrador', 'senha60'),
('@347021q', 'ww', '$2a$10$HCKcyGOqdfKDiT67dY7UuOEiUedM1ukjFsCHwB5EkUZYC4ZiLfpIy', 'Pro', 'senha84'),
('@408260q', 'Elton', '$2a$10$4aqL442VLB2qcxQFnGKpUuuQJxW2gpt8gsXQrsYF2vPfx462u6bte', 'Professor', 'senha33'),
('@414857q', 'Chico Antonio', '$2a$10$QQDwB2ZPB58kN5pSA4Qb/eGxSq4U53xFQRMGHPXTVKklJf5BZuEI6', 'Professor', 'senha70'),
('@534863q', 'q', '$2a$10$BI/7x1R2IrBryKcskb/j3.2PNHsCqyBdft5Bj8ZOqZTeZa/HutvZm', 'Prof', 'senha58'),
('@540654q', 'qqqq', '$2a$10$M35FCn1xdWxHp8D73vwrT.3HHFAcCJenyLiJzaqcuXYqCaaRopALC', 'Administrador', 'senha47'),
('@630638q', 'Frenk Tovela', '$2a$10$3.FOp4aBVatzHCUpvR9nmOgovMujv0ItOxuf2W47zviTbGkj8.pDS', 'Administrador', 'senha12'),
('user2431', 'Hwang Jorge', '$2a$10$L9V6JAiLXYMbJAWZbgWH7OjdCCR8545Y1vwDP41SEWrgMIsVvQcge', 'Administrador', '_senha'),
('user6543', 'Joao', '$2a$10$6jSu3PJPn0oh0b/N3i0r1e34RqWPuyNjw52FONAWDgOvcmU5rRl0a', 'Professor', 'senha');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD KEY `fk_id_estudante_avaliacao` (`id_estudante`) USING BTREE;

--
-- Índices para tabela `emergencia`
--
ALTER TABLE `emergencia`
  ADD PRIMARY KEY (`id_emergencia`),
  ADD KEY `fk_id_estudante` (`id_estudante`) USING BTREE;

--
-- Índices para tabela `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`id_estudante`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`),
  ADD KEY `fk_utilizador` (`id_utilizador`) USING BTREE;

--
-- Índices para tabela `mensalidade`
--
ALTER TABLE `mensalidade`
  ADD PRIMARY KEY (`id_mensalidade`),
  ADD KEY `fk_id_estudante_mensalidade` (`id_estudante`) USING BTREE;

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id_utilizador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mensalidade`
--
ALTER TABLE `mensalidade`
  MODIFY `id_mensalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
