-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para db_prog_web
DROP DATABASE IF EXISTS `db_prog_web`;
CREATE DATABASE IF NOT EXISTS `db_prog_web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_prog_web`;

-- Copiando estrutura para tabela db_prog_web.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela db_prog_web.categoria: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`idcategoria`, `nome`) VALUES
	(2, 'Higiene pessoal'),
	(3, 'Alimentos'),
	(4, 'Informática'),
	(5, 'Foto e Vídeo');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Copiando estrutura para tabela db_prog_web.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(155) DEFAULT NULL,
  `descricao` text,
  `marca` varchar(145) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `categoria_idcategoria` int(11) NOT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `fk_produto_categoria_idx` (`categoria_idcategoria`),
  CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela db_prog_web.produto: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`idproduto`, `nome`, `descricao`, `marca`, `preco`, `foto`, `categoria_idcategoria`) VALUES
	(2, 'Microcomputador', 'CPU intel 7 , 18gb memoria ram', 'HP', 3000.00, 'foto.jpg', 5),
	(3, 'Camera digital', '16 mpx,com zoom óptico', 'Sansung', 1000.00, 'foto.jpg', 5),
	(4, 'Notebook', 'CPU intel 7 , 12gb memoria ram', 'Dell', 6000.00, 'foto.jpg', 4);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
