-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.44 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- springgreen 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `springgreen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springgreen`;

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~7 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 25, '남자', '서울'),
	(2, '김말숙', 55, '남자', '울산'),
	(3, '이기자', 39, '남자', '제주'),
	(6, '아톰', 22, '여자', '서울'),
	(7, '비톰맨', 44, '남자', '제주'),
	(8, '씨톰', 20, '여자', '서울'),
	(10, '디톰', 20, '여자', NULL),
	(11, '씨톰', 20, '여자', NULL);

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~17 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-23 13:49:41'),
	(2, '김말숙', 20, '여자', '2026-01-23 13:49:42'),
	(3, '김연아', 20, '여자', '2026-01-23 13:49:43'),
	(4, '홍길순', 33, '여자', '2023-05-06 00:00:00'),
	(5, '이겨라', 28, '여자', '2023-04-04 00:00:00'),
	(7, '아톰', 11, '여자', '2025-05-05 00:00:00'),
	(8, '비톰', 12, '남자', '2025-02-02 00:00:00'),
	(9, '씨톰', 13, '남자', '2025-03-03 00:00:00'),
	(10, '디톡스', 14, '여자', '2025-04-04 00:00:00'),
	(11, '조나단', 15, '남자', '2025-06-06 00:00:00'),
	(12, '햄스터', 16, '여자', '2025-07-07 00:00:00'),
	(13, '짱구', 17, '남자', '2025-08-08 00:00:00'),
	(14, '유리', 18, '여자', '2025-09-09 00:00:00'),
	(15, '이슬이', 19, '여자', '2025-10-10 00:00:00'),
	(16, '퉁퉁이', 20, '남자', '2025-11-11 00:00:00'),
	(17, '퉁순이', 21, '여자', '2025-12-12 00:00:00'),
	(18, '노진구', 22, '남자', '2025-01-02 00:00:00'),
	(19, '맹구', 23, '남자', '2025-01-03 00:00:00'),
	(20, '철수', 24, '남자', '2025-01-04 00:00:00');

-- 테이블 springgreen.jcrane 구조 내보내기
CREATE TABLE IF NOT EXISTS `jcrane` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `spec` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `state` varchar(10) DEFAULT '대기',
  `image` varchar(100) DEFAULT NULL,
  `memo` text,
  `indate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jcrane:~0 rows (대략적) 내보내기
DELETE FROM `jcrane`;

-- 테이블 springgreen.salary 구조 내보내기
CREATE TABLE IF NOT EXISTS `salary` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `position` varchar(10) NOT NULL,
  `overtime` int DEFAULT '0',
  `netpay` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.salary:~6 rows (대략적) 내보내기
DELETE FROM `salary`;
INSERT INTO `salary` (`idx`, `code`, `name`, `department`, `position`, `overtime`, `netpay`) VALUES
	(1, 'CK05', '홍길순', '총무과', '과장', 6, 2412000),
	(2, 'SS03', '나가자', '생산과', '사원', 6, 1512000),
	(3, 'SS02', '김빛나', '생산과', '사원', 9, 1593000),
	(4, 'YB01', '영원히', '영업과', '부장', 1, 2727000),
	(5, 'IB01', '강감찬', '인사과', '부장', 2, 2754000),
	(6, 'IB02', '아톰맨', '인사과', '부장', 3, 2781000),
	(7, 'CS06', '씨톰', '총무과', '사원', 3, 1431000);

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~9 rows (대략적) 내보내기
DELETE FROM `test`;
INSERT INTO `test` (`name`, `age`, `gender`, `ipsail`, `address`, `job`) VALUES
	('김장미', 20, '여자', '2026-01-16 09:08:08', '서울', NULL),
	('김말숙', 30, '여자', '2020-02-01 00:00:00', '인천', NULL),
	('김말숙', 30, '여자', '2020-02-01 00:00:00', '인천', NULL),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주', NULL),
	('이순신', 42, '남자', '2024-09-09 00:00:00', '서울', NULL),
	('소나무', 34, '남자', '2023-06-25 00:00:00', '울산', NULL),
	('가나다', 20, '남자', '2000-10-01 00:00:00', '광주', NULL),
	('강감찬', 50, '남자', '2026-01-16 09:08:29', '제주', NULL),
	('홍길동', 20, '남자', '2026-01-16 09:08:30', '청주', NULL);

-- 테이블 springgreen.test2 구조 내보내기
CREATE TABLE IF NOT EXISTS `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test2:~13 rows (대략적) 내보내기
DELETE FROM `test2`;
INSERT INTO `test2` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 20, '남자', NULL),
	(2, '', 20, '남자', NULL),
	(3, '', 0, '남자', NULL),
	(4, '김말숙', 20, '여자', ''),
	(6, '김연아', 29, '남자', '서울'),
	(7, '소나무', 55, '남자', '청주'),
	(8, '오하늘', 39, '여자', '서울'),
	(9, '가나다', 39, '여자', '제주'),
	(10, '고인돌', 39, '남자', '광주'),
	(11, '아톰', 19, '여자', '청주'),
	(12, '비톰', 44, '남자', '제주'),
	(14, '시톰', 46, '여자', '서울'),
	(15, '연습맨', 20, '남자', NULL),
	(16, '연습맨2', 39, '여자', '청주');

-- 테이블 springgreen.test3 구조 내보내기
CREATE TABLE IF NOT EXISTS `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test3:~2 rows (대략적) 내보내기
DELETE FROM `test3`;
INSERT INTO `test3` (`idx`, `mid`, `name`, `age`) VALUES
	(1, 'hkd1234', '홍길동', 25),
	(3, 'hks1234', '홍길순', 22);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
