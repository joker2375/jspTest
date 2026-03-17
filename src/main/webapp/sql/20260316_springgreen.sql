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

-- 테이블 springgreen.books 구조 내보내기
CREATE TABLE IF NOT EXISTS `books` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `price` int DEFAULT '0',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.books:~20 rows (대략적) 내보내기
DELETE FROM `books`;
INSERT INTO `books` (`bookid`, `bookname`, `publisher`, `price`) VALUES
	(1, '축구의 역사', '굿스포츠', 7000),
	(2, '축구아는 여자', '나무수', 13000),
	(3, '축구의 이해', '대한미디어', 22000),
	(4, '골프 바이블', '대한미디어', 35000),
	(5, '피겨 교본', '굿스포츠', 8000),
	(6, '역도 단계별기술', '굿스포츠', 6000),
	(7, '야구의 추억', '이상미디어', 20000),
	(8, '야구를 부탁해', '이상미디어', 13000),
	(9, '올림픽 이야기', '삼성당', 7500),
	(10, 'Olympic Champions', 'Pearson', 13000),
	(11, '가나다', '삼성당', 17500),
	(12, '포토샵CS6', '제우미디어', 25000),
	(13, '아시안게임 이야기', '스포츠북', 19500),
	(14, '우리들 이야기', '우리출판사', 5000),
	(15, '서로 사랑하자', '이상미디어', 18000),
	(16, '하나된 마음으로', '대한미디어', 21000),
	(17, '나눌수 있을때', '나무수', 9000),
	(18, '함박눈 내리는날', '이상미디어', 15000),
	(19, '나보다 축구를', '굿스포츠', 23000),
	(20, '시작했을때 한번더', '삼성당', 19000);

-- 테이블 springgreen.buseos 구조 내보내기
CREATE TABLE IF NOT EXISTS `buseos` (
  `buseoId` int NOT NULL,
  `buseoName` varchar(10) NOT NULL,
  `jiyuk` varchar(10) NOT NULL,
  PRIMARY KEY (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.buseos:~2 rows (대략적) 내보내기
DELETE FROM `buseos`;
INSERT INTO `buseos` (`buseoId`, `buseoName`, `jiyuk`) VALUES
	(10, '인사', '서울'),
	(20, '개발', '부산'),
	(30, '마케팅', '서울');

-- 테이블 springgreen.customer 구조 내보내기
CREATE TABLE IF NOT EXISTS `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.customer:~7 rows (대략적) 내보내기
DELETE FROM `customer`;
INSERT INTO `customer` (`custid`, `name`, `address`, `phone`) VALUES
	(1, '박지성', '영국 맨체스타', '000-5000-0001'),
	(2, '김연아', '대한민국 서울', '000-6000-0001'),
	(3, '김말숙', '대한민국 강원도', '000-7000-0001'),
	(4, '손흥민', '영국 토트넘', '000-8000-0001'),
	(5, '박세리', '대한민국 대전', '001-0011-0012'),
	(6, '이순신', '대한민국 아산', '001-0009-0007'),
	(7, '소나무', '대한민국 청주', '000-1100-0050');

-- 테이블 springgreen.guest 구조 내보내기
CREATE TABLE IF NOT EXISTS `guest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `visitDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `clientIp` varchar(30) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.guest:~31 rows (대략적) 내보내기
DELETE FROM `guest`;
INSERT INTO `guest` (`idx`, `name`, `content`, `email`, `homePage`, `visitDate`, `clientIp`) VALUES
	(1, '관리자', '방명록 서비스를 시작합니다.', 'cjsk1126@naver.com', 'https://cjsk1126.tistory.com', '2026-03-09 11:20:38', '192.168.50.20'),
	(2, '홍길동', '길동이 다녀갑니다.\r\n감사합니다.', 'hkd1234@naver.com', 'https://', '2026-03-09 12:13:30', '192.168.50.20'),
	(3, '김말숙', '말숙이 다녀가요..\r\n열심히 하세요.', 'kms1234@test.com', 'https://', '2026-03-09 12:40:52', '192.168.50.20'),
	(5, '아톰', '아톰이예요.\r\n반갑습니다.', 'atom1234@naver.com', 'https://cjsk1126.tistory.com', '2026-03-09 12:54:59', '192.168.50.20'),
	(6, '홍길동', 'dddd', 'cjsk1126@naver.com', 'https://cjsk1126.tistory.com', '2026-03-09 12:56:24', '192.168.50.20'),
	(7, '뇽', '여러분 힘내세요! <img src="https://ogqmarket.img.sooplive.co.kr/sticker/16f23cb5eda44f0/23.png"/>\r\n', '', '', '2026-03-09 14:04:39', '192.168.50.56'),
	(9, '홍길동', '부엉가 인사합니다.\r\n\r\n<img src="https://discuss.pytorch.kr/uploads/default/original/2X/4/46b22ec06888396d927e15a991ec2945dcec66e9.jpeg" width="200px" />', 'hkd1234@naver.com', 'https://cjsk1126.tistory.com', '2026-03-09 14:34:13', '192.168.50.20'),
	(10, '돈입니다', '아녕하세요 돈입니다 \r\n\r\n<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA0MDVfMTU3%2FMDAxNjgwNjI3NDg0NDYx.S8Z2isw0kXdTibvCj4wyjbbwsZ1XKqv3dqX-AkF48RIg.fQXG2wdta04tLe0v7nvaBaLOqfJtmiOF33s4v43gkqMg.JPEG.queisa3%2FDrxlO.jpg&type=a340" width="200px"/>', '', 'https://', '2026-03-09 14:38:09', '192.168.50.61'),
	(11, '아톰', '<marquee>안녕하세요</marquee>', '', 'https://', '2026-03-09 14:40:51', '192.168.50.20'),
	(12, '바우나', '바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현바바우우나나김김수수현현 <img src="https://www.shutterstock.com/image-photo/anime-artistic-image-totoro-large-260nw-2648579151.jpg" width="200px"/>', '', 'https://', '2026-03-09 14:41:18', '192.168.50.53'),
	(13, '아톰', '<style>\r\nbody>div:first-child{\r\nbackground-image:url("https://discuss.pytorch.kr/uploads/default/original/2X/4/46b22ec06888396d927e15a991ec2945dcec66e9.jpeg")\r\n}\r\n</style>\r\naa', '', 'https://', '2026-03-09 14:41:40', '127.0.0.1'),
	(14, '홍길동', '<marquee direction="up" width="300px" height="100px">위로 이동</marquee>', '', 'https://', '2026-03-09 14:42:10', '192.168.50.20'),
	(15, '잠자느는사람', '<marquee direction="up" width="300px" height="100px">위로 이동</marquee>\r\n\r\n<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fstatic6.depositphotos.com%2F1000199%2F544%2Fi%2F950%2Fdepositphotos_5440719-stock-photo-sleeping-man-and-money-on.jpg&type=a340" width="200px"/>', '', 'https://', '2026-03-09 14:42:25', '192.168.50.61'),
	(16, '홍길동', '<marquee direction="up" width="300px" height="100px"><img src="https://ogqmarket.img.sooplive.co.kr/sticker/16f23cb5eda44f0/23.png" width="100px"/></marquee>', '', 'https://', '2026-03-09 14:44:33', '192.168.50.20'),
	(17, '안녕하세요', '<marquee><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTBfMjEg%2FMDAxNjMxMjY4MDQ4NDQ1.Y5AQZvH0IL6KPIqrJxNZAlXjHaK3hSrPwtTPH1W6BT4g.jQDx8Lnlo-u_bxzuHzzv2MvuPZB3jfXQEHacnqG8L8Ag.JPEG.ekgus248%2FIMG_4241.JPG&type=a340" width="400px"/></marquee>', '', 'https://', '2026-03-09 14:59:29', '192.168.50.61'),
	(18, '선생님~~^^', '선생님~~^^\r\n\r\n<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2F20110827_11%2Fcksdn031_1314443634743uThAy_jpg%2Fnaver_com_20110812_195607_cksdn031.jpg&type=a340" width="500px"/>', '', 'https://', '2026-03-09 15:02:33', '192.168.50.61'),
	(19, '바우나', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20130114_269%2Fdhtjdrh1_1358089376679JKsQb_JPEG%2F%25C0%25AF%25B8%25D3%25BB%25E7%25C1%25F8%25B8%25F0%25C0%25BD%25C1%25FD_5_-_c20b4.jpg&type=sc960_832" width="200px"/>', '', 'https://', '2026-03-09 15:05:24', '192.168.50.53'),
	(20, '12기 개발자들 상황.', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAzMTlfODgg%2FMDAxNjQ3NjUyMzQwMjg2.Rk2OSnUawDOFuOdu1Y0LL7j4vURa6OAoeE7cCNkK92og.mJdKCvSM3cEz-gcEy1l-glpj7UqjFBbw6gpDknSfE74g.JPEG.ohappung%2F1647652221220.jpg&type=a340" width="400px"/>', '', 'https://', '2026-03-09 15:33:03', '192.168.50.61'),
	(21, '힝', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi1.sndcdn.com%2Favatars-5ajkEiGvrG5qu4Ow-uZNh8Q-t500x500.jpg&type=a340" width="500px"/>', '', 'https://', '2026-03-09 15:40:14', '192.168.50.61'),
	(22, '관리자', '6545456', '', 'https://', '2026-03-09 15:40:48', '192.168.50.20'),
	(23, '삭제 안돼요', '<marquee><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2Fdata13%2F2005%2F12%2F15%2F164%2F10%25286379%2529.jpg&type=a340" width="600px"/></marquee>', '', 'https://', '2026-03-09 16:05:28', '192.168.50.61'),
	(24, '맛있는치킨', '<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20110901_206%2Fdddfood_1314860309836mrFxM_PNG%2F%25BD%25C4%25BF%25E5%25BE%25EF%25C1%25A6%25BB%25E7%25C1%25F8_5.png&type=a340" width="800px"/>', '', 'https://', '2026-03-09 16:10:56', '192.168.50.61'),
	(25, '선생님께서 좋아하시는 이븐 산이에요', '<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1661189655438-ef18f0b29faa%3Fmark%3Dhttps%253A%252F%252Fimages.unsplash.com%252Fopengraph%252Flogo.png%26mark-w%3D64%26mark-align%3Dtop%252Cleft%26mark-pad%3D50%26h%3D630%26w%3D1200%26crop%3Dfaces%252Cedges%26blend-w%3D1%26blend%3D000000%26blend-mode%3Dnormal%26blend-alpha%3D10%26auto%3Dformat%26fit%3Dcrop%26q%3D60%26ixid%3DM3wxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNzcwNjQ3NjA5fA%26ixlib%3Drb-4.1.0&type=l340_165" width="700px"/>', '', 'https://', '2026-03-09 16:13:12', '192.168.50.61'),
	(26, '관리자', '관리자입니다.\r\n방명록에 오류 있으면\r\n알려주세요.\r\n감사합니다.', '', 'https://', '2026-03-09 17:09:59', '192.168.50.20'),
	(27, '관리자', '2323', '', 'https://', '2026-03-10 10:44:04', '192.168.50.20'),
	(28, '32323', '32323', '', 'https://', '2026-03-10 10:44:10', '192.168.50.20'),
	(29, '비톰', '32323', '', 'https://', '2026-03-10 10:44:16', '192.168.50.20'),
	(30, '3333', '33333', '', 'https://', '2026-03-10 10:44:22', '192.168.50.20'),
	(31, '2323', '2323', '', 'https://', '2026-03-10 10:44:34', '192.168.50.20'),
	(32, '333', '333', '', 'https://', '2026-03-10 10:44:41', '192.168.50.20'),
	(36, 'hkd1234', 'rtsertswert', '', 'https://', '2026-03-12 14:40:05', '192.168.50.20');

-- 테이블 springgreen.hakjum 구조 내보내기
CREATE TABLE IF NOT EXISTS `hakjum` (
  `grade` char(1) NOT NULL,
  `minScore` int NOT NULL,
  `maxScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hakjum:~5 rows (대략적) 내보내기
DELETE FROM `hakjum`;
INSERT INTO `hakjum` (`grade`, `minScore`, `maxScore`) VALUES
	('A', 90, 100),
	('B', 80, 89),
	('C', 70, 79),
	('D', 60, 69),
	('F', 0, 59);

-- 테이블 springgreen.hoewon 구조 내보내기
CREATE TABLE IF NOT EXISTS `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.hoewon:~6 rows (대략적) 내보내기
DELETE FROM `hoewon`;
INSERT INTO `hoewon` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 25, '남자', '서울'),
	(2, '김말숙', 55, '남자', '울산'),
	(3, '이기자', 39, '남자', '제주'),
	(6, '아톰', 33, '남자', '제주'),
	(7, '비톰맨', 44, '남자', '청주'),
	(8, '씨톰', 20, '여자', '서울');

-- 테이블 springgreen.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa:~17 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `name`, `age`, `gender`, `ipsail`) VALUES
	(1, '홍길동', 20, '남자', '2026-01-23 13:48:03'),
	(2, '김말숙', 20, '여자', '2026-01-23 13:48:04'),
	(3, '김연아', 20, '여자', '2026-01-23 13:48:05'),
	(4, '홍길순', 33, '여자', '2023-05-06 00:00:00'),
	(5, '이겨라', 28, '남자', '2023-04-04 00:00:00'),
	(7, 'atom', 12, '여자', '2024-05-10 00:00:00'),
	(8, '비톰', 23, '남자', '2015-02-02 00:00:00'),
	(9, 'ctom', 34, '여자', '2021-12-21 00:00:00'),
	(10, '디톰', 45, '여자', '2016-05-11 00:00:00'),
	(11, 'etom', 32, '여자', '2025-12-23 00:00:00'),
	(12, 'ftom', 44, '남자', '2003-09-10 00:00:00'),
	(13, 'gtom', 19, '남자', '2023-03-08 00:00:00'),
	(14, 'htom', 32, '여자', '2026-05-07 00:00:00'),
	(15, 'jtom', 32, '여자', '2013-09-01 00:00:00'),
	(16, 'aaaa', 23, '여자', '2025-04-04 00:00:00'),
	(17, 'bbbb', 33, '여자', '2020-04-08 00:00:00'),
	(18, 'cccc', 35, '남자', '2017-04-06 00:00:00');

-- 테이블 springgreen.insa2 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'noimage.jpg',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.insa2:~17 rows (대략적) 내보내기
DELETE FROM `insa2`;
INSERT INTO `insa2` (`idx`, `name`, `age`, `gender`, `ipsail`, `photo`) VALUES
	(1, '홍길동', 22, '남자', '2026-11-26 00:00:00', ''),
	(2, '김말숙', 20, '여자', '2026-01-26 20:44:19', 'noimage.jpg'),
	(3, '김연아', 20, '여자', '2026-01-26 20:44:20', 'noimage.jpg'),
	(4, 'atom', 12, '여자', '2025-04-04 00:00:00', 'noimage.jpg'),
	(5, 'btom', 32, '여자', '2026-04-01 00:00:00', 'noimage.jpg'),
	(8, 'itom', 32, '여자', '2026-01-01 00:00:00', '소리설정.jpg'),
	(9, 'jtom', 55, '남자', '2025-05-01 00:00:00', 'noimage.jpg'),
	(10, 'ktom', 77, '여자', '2023-01-04 00:00:00', '소리설정.jpg'),
	(11, 'ltom', 43, '여자', '2026-01-01 00:00:00', '소리설정_b.jpg'),
	(12, 'mtom', 22, '여자', '2026-04-01 00:00:00', 'noimage.jpg'),
	(13, 'otom', 32, '남자', '2026-03-01 00:00:00', '20251123_151927.jpg'),
	(14, 'ptom', 1234, '남자', '2025-01-02 00:00:00', '소리설정_b.jpg'),
	(16, 'rtom', 33, '여자', '2026-01-01 00:00:00', 'aws1260126094220.jpg'),
	(17, 'stom', 55, '여자', '2026-01-01 00:00:00', 'aws1_260126094319.jpg'),
	(18, 'ttom', 1234, '여자', '2026-01-01 00:00:00', 'aws1.jpg'),
	(20, 'ytom', 55, '여자', '2024-03-08 00:00:00', 'b5b7208f-6f5f-4af3-9f47-f08dd8519508.png'),
	(21, 'xtom', 11, '여자', '2024-01-01 00:00:00', '7.jpg');

-- 테이블 springgreen.jikmu 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikmu` (
  `buseoId` int NOT NULL,
  `jikmuId` char(2) NOT NULL,
  PRIMARY KEY (`jikmuId`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikmu_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikmu:~2 rows (대략적) 내보내기
DELETE FROM `jikmu`;
INSERT INTO `jikmu` (`buseoId`, `jikmuId`) VALUES
	(10, 'J1'),
	(20, 'J2'),
	(30, 'J3');

-- 테이블 springgreen.jikwon 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwon` (
  `no` int NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `bonus` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwon:~10 rows (대략적) 내보내기
DELETE FROM `jikwon`;
INSERT INTO `jikwon` (`no`, `buseo`, `pay`, `bonus`) VALUES
	(101, '인사', 800, 100),
	(102, '개발', 1200, 20),
	(103, '기획', 1200, 0),
	(104, '개발', 1300, 30),
	(105, '개발', 1100, 50),
	(106, '인사', 900, 0),
	(107, '기획', 1400, 20),
	(108, '인사', 1200, 50),
	(109, '인사', 1100, 0),
	(110, '기획', 700, 100);

-- 테이블 springgreen.jikwons 구조 내보내기
CREATE TABLE IF NOT EXISTS `jikwons` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikwons_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jikwons:~2 rows (대략적) 내보내기
DELETE FROM `jikwons`;
INSERT INTO `jikwons` (`id`, `name`, `buseoId`) VALUES
	(101, '홍길동', 10),
	(102, '김말숙', 20),
	(103, '이기자', 10);

-- 테이블 springgreen.jobs 구조 내보내기
CREATE TABLE IF NOT EXISTS `jobs` (
  `no` int NOT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jobs:~7 rows (대략적) 내보내기
DELETE FROM `jobs`;
INSERT INTO `jobs` (`no`, `job`) VALUES
	(2, '공무원'),
	(3, '회사원'),
	(4, '학생'),
	(5, NULL),
	(6, '자영업'),
	(7, NULL),
	(1, NULL);

-- 테이블 springgreen.jproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jproduct:~0 rows (대략적) 내보내기
DELETE FROM `jproduct`;

-- 테이블 springgreen.jumun 구조 내보내기
CREATE TABLE IF NOT EXISTS `jumun` (
  `no` int NOT NULL,
  `ilja` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.jumun:~7 rows (대략적) 내보내기
DELETE FROM `jumun`;
INSERT INTO `jumun` (`no`, `ilja`) VALUES
	(101, '2026-03-02 00:00:00'),
	(102, '2026-03-09 00:00:00'),
	(103, '2026-03-12 00:00:00'),
	(104, '2026-04-01 00:00:00'),
	(105, '2026-04-06 00:00:00'),
	(106, '2026-04-30 00:00:00'),
	(107, '2026-05-22 00:00:00');

-- 테이블 springgreen.kwamok 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok` (
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok:~5 rows (대략적) 내보내기
DELETE FROM `kwamok`;
INSERT INTO `kwamok` (`code`) VALUES
	(201),
	(202),
	(203),
	(204),
	(205);

-- 테이블 springgreen.kwamok2 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamok2` (
  `id` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamok2:~2 rows (대략적) 내보내기
DELETE FROM `kwamok2`;
INSERT INTO `kwamok2` (`id`, `kwamokName`) VALUES
	(1, '수학'),
	(3, '컴퓨터');

-- 테이블 springgreen.kwamoks 구조 내보내기
CREATE TABLE IF NOT EXISTS `kwamoks` (
  `kwamokId` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.kwamoks:~2 rows (대략적) 내보내기
DELETE FROM `kwamoks`;
INSERT INTO `kwamoks` (`kwamokId`, `kwamokName`) VALUES
	(1, '수학'),
	(2, '과학'),
	(3, '컴퓨터');

-- 테이블 springgreen.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.member:~9 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(2, 'hkd1234', 'f58184636c74c4b6b5ddbd7af7fb6e37ba3c4025416286b4427eb66904ac49b94fdf3867', '홍장군', '홍길동', '남자', '2026-03-12 00:00:00', '010-3423-2704', '17559 /경기 안성시 공도읍 공도로 142 /106동 403호 / (디자인시티블루밍) ', 'cjsk1126@naver.com', 'https://cjsk1126.tistory.com', '기타', '등산/낚시/기타', 'noimage.jpg', '홍길동이라고 합니다.\r\n잘 부탁드립니다.', '공개', 'NO', 230, 2, 0, '2026-03-12 11:10:03', '2026-03-16 11:09:12', 4),
	(3, 'admin', 'f58184636c74c4b6b5ddbd7af7fb6e37ba3c4025416286b4427eb66904ac49b94fdf3867', '관리맨', '관리자', '여자', '2026-03-12 00:00:00', '010-3423-2704', '17559 /경기 안성시 공도읍 공도로 142 /106동 403호 /(디자인시티블루밍) ', 'cjsk1126@hanmail.net', 'https://cjsk1126.tistory.com', '기타', '등산/수영/영화감상/기타', 'noimage.jpg', '관리자입니다.\r\n프로젝트에 에러가 있으면 방명록에 문의사항 올려주세요.\r\n뭘봐!!!!!선생님 슨상남 헤헤 쓰을쌔앵니잉! 오늘 과제 없으면 좋겠어요~ 제발요 저 공부 하기 싫어요~ 너무 졸리단 말이에요~ 양치도 하고싶고 수업시간에 누워서 들을래요~\r\nㅡ배유나&김수현ㅡ', '공개', 'NO', 130, 0, 0, '2026-03-12 11:45:15', '2026-03-16 17:42:46', 32),
	(4, 'kms1234', '1d7f738542d1d5340b0f5bdb7f4193917efb2123e5547ae6ca6a3501ed243120f3c2dbeb', '김장미', '김말숙', '여자', '2026-03-03 00:00:00', '010-3333-3333', ' / / / ', 'cjsk1126@hanmail.net', 'https://', '기타', '기타', 'noimage.jpg', '', '공개', 'NO', 120, 1, 0, '2026-03-12 15:43:31', '2026-03-16 12:41:29', 2),
	(5, 'atom1234', '7cb98896beb8fffcb89dce85a8266e22f282fff92e29fea59d5d03aa5ab199d250b7b0b8', '아톰맨', '아톰', '남자', '2026-03-12 00:00:00', '010-2323-2323', ' / / / ', 'cjsk1126@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '공개', 'NO', 130, 2, 0, '2026-03-12 15:44:07', '2026-03-12 15:44:07', 0),
	(6, 'btom1234', '54896261a2325edc257bf555bb11ea4c1f325837274bd57b4908b38ee81d97463977f896', '비톰맨', '비톰', '남자', '2026-03-12 00:00:00', '010-3232-3232', ' / / / ', 'cjsk1126@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '공개', 'NO', 100, 1, 0, '2026-03-12 15:44:32', '2026-03-12 15:44:32', 0),
	(7, 'ctom1234', 'bf696de7f270f1600bdd99df4e8f314c0385ced47f864ea2d37d4a661cf226a55b52d457', '씨톰맨', '씨톰', '남자', '2026-03-12 00:00:00', '010-4444-5555', ' / / / ', 'cjsk1126@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '공개', 'NO', 100, 1, 0, '2026-03-12 15:45:01', '2026-03-12 15:45:01', 0),
	(8, 'dtom1234', '7b06c6ef0d556a891602e4bfcac0eda87263a723898810cbdea0994eebef8a61a0a0d386', '디톰맨', '디톰', '여자', '2026-03-12 00:00:00', '010-4343-4343', ' / / / ', 'cjsk1126@hanmail.net', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 130, 2, 0, '2026-03-12 16:39:01', '2026-03-12 16:39:01', 0),
	(9, 'ftom1234', 'd758ef3d529db3e963f5b24c7fff9f7bc536bff15a77b63cb4a153c2db6ee26a0c6da3f6', '에프톰맨', '에프톰', '여자', '2026-03-12 00:00:00', '010-4324-4323', ' / / / ', 'cjsk1126@naver.com', 'https://', '기타', '기타', 'noimage.jpg', '', '비공개', 'NO', 110, 2, 0, '2026-03-12 16:41:57', '2026-03-12 16:41:57', 0),
	(10, 'ztom1234', 'f58184636c74c4b6b5ddbd7af7fb6e37ba3c4025416286b4427eb66904ac49b94fdf3867', '젯톰맨', '제트톰', '남자', '2026-03-13 00:00:00', '010-5665-5656', '61900 /광주 서구 덕흥동 831-1 / / ', 'cbsk1126@naver.com', 'https://', '기타', '수영/기타', 'noimage.jpg', '3333333', '공개', 'OK', 140, 99, 0, '2026-03-13 10:54:41', '2026-03-13 12:18:17', 0);

-- 테이블 springgreen.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `bookid` int NOT NULL,
  `saleprice` int DEFAULT '0',
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.orders:~20 rows (대략적) 내보내기
DELETE FROM `orders`;
INSERT INTO `orders` (`orderid`, `custid`, `bookid`, `saleprice`, `orderdate`) VALUES
	(1, 1, 1, 6000, '2019-08-01 00:00:00'),
	(2, 1, 3, 21000, '2018-09-03 00:00:00'),
	(3, 2, 5, 8000, '2022-11-03 00:00:00'),
	(4, 3, 6, 6000, '2020-06-04 00:00:00'),
	(5, 4, 7, 19000, '2019-11-05 00:00:00'),
	(6, 1, 2, 12000, '2021-09-07 00:00:00'),
	(7, 4, 8, 11000, '2019-03-07 00:00:00'),
	(8, 3, 10, 12000, '2021-07-08 00:00:00'),
	(9, 2, 10, 9000, '2017-05-09 00:00:00'),
	(10, 3, 18, 13000, '2023-10-11 00:00:00'),
	(11, 7, 15, 15000, '2023-06-17 00:00:00'),
	(12, 7, 20, 16000, '2023-12-19 00:00:00'),
	(13, 3, 19, 23000, '2023-06-30 00:00:00'),
	(14, 1, 16, 17000, '2023-11-21 00:00:00'),
	(15, 4, 15, 13000, '2023-05-12 00:00:00'),
	(16, 7, 10, 13000, '2025-09-24 00:00:00'),
	(17, 1, 12, 23000, '2025-02-26 00:00:00'),
	(18, 2, 11, 13000, '2025-09-16 00:00:00'),
	(19, 4, 20, 13000, '2026-03-20 00:00:00'),
	(20, 4, 15, 20000, '2026-04-26 00:00:00');

-- 테이블 springgreen.panme2 구조 내보내기
CREATE TABLE IF NOT EXISTS `panme2` (
  `nalja` datetime NOT NULL,
  `jikwon` varchar(10) NOT NULL,
  `mechul` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.panme2:~6 rows (대략적) 내보내기
DELETE FROM `panme2`;
INSERT INTO `panme2` (`nalja`, `jikwon`, `mechul`) VALUES
	('2026-03-01 00:00:00', '홍길동', 100),
	('2026-03-02 00:00:00', '홍길동', 200),
	('2026-03-03 00:00:00', '홍길동', 150),
	('2026-03-01 00:00:00', '김말숙', 300),
	('2026-03-02 00:00:00', '김말숙', 350),
	('2026-03-01 00:00:00', '이기자', 250);

-- 테이블 springgreen.products 구조 내보내기
CREATE TABLE IF NOT EXISTS `products` (
  `productName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.products:~8 rows (대략적) 내보내기
DELETE FROM `products`;
INSERT INTO `products` (`productName`, `price`) VALUES
	('진라면', 1300),
	('새우탕면', 1100),
	('너구리', 1800),
	('틈새라면', 1200),
	('비빔면', 1500),
	('안성탕면', 1000),
	('라면시대', 1900),
	('신_라면', 2200);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.salary:~7 rows (대략적) 내보내기
DELETE FROM `salary`;
INSERT INTO `salary` (`idx`, `code`, `name`, `department`, `position`, `overtime`, `netpay`) VALUES
	(2, 'CK05', '홍길순', '총무과', '과장', 6, 2385000),
	(3, 'SS03', '나가자', '생산과', '사원', 6, 1512000),
	(4, 'SS02', '김빛나', '생산과', '사원', 9, 1593000),
	(5, 'YB01', '영원히', '영업과', '부장', 1, 2727000),
	(6, 'IB01', '강감찬', '인사과', '부장', 2, 2754000),
	(7, 'IB02', '아톰맨', '인사과', '부장', 3, 2781000),
	(8, 'CS06', '씨톰', '총무과', '사원', 3, 1431000);

-- 테이블 springgreen.sawon 구조 내보내기
CREATE TABLE IF NOT EXISTS `sawon` (
  `sabun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`sabun`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `sawon_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sawon:~5 rows (대략적) 내보내기
DELETE FROM `sawon`;
INSERT INTO `sawon` (`sabun`, `name`, `pay`, `buseoId`) VALUES
	(101, '김사원', 5000, 10),
	(102, '김과장', 6000, 20),
	(103, '서대리', 4000, 10),
	(104, '이부장', 7000, 30),
	(105, '오과장', 6500, 30);

-- 테이블 springgreen.students 구조 내보내기
CREATE TABLE IF NOT EXISTS `students` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `age` int DEFAULT '20',
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students:~8 rows (대략적) 내보내기
DELETE FROM `students`;
INSERT INTO `students` (`hakbun`, `name`, `age`, `score`) VALUES
	(101, '홍길동', 20, 85),
	(102, '이순신', 21, 73),
	(103, '임꺽정', 20, 59),
	(104, '장보고', 21, 92),
	(105, '홍길동', 20, 63),
	(106, '김연아', 23, 88),
	(107, '오하늘', 23, 81),
	(108, '강감찬', 24, 95);

-- 테이블 springgreen.students2 구조 내보내기
CREATE TABLE IF NOT EXISTS `students2` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `kwamokId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students2:~4 rows (대략적) 내보내기
DELETE FROM `students2`;
INSERT INTO `students2` (`hakbun`, `name`, `kwamokId`) VALUES
	(101, '홍길동', 1),
	(102, '이순신', 2),
	(103, '임꺽정', NULL),
	(103, '이기자', 2);

-- 테이블 springgreen.students3 구조 내보내기
CREATE TABLE IF NOT EXISTS `students3` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students3:~2 rows (대략적) 내보내기
DELETE FROM `students3`;
INSERT INTO `students3` (`name`, `hakbun`, `major`) VALUES
	('홍길동', 21, '컴퓨터'),
	('김말숙', 22, '경영'),
	('이기자', 24, '물리');

-- 테이블 springgreen.students4 구조 내보내기
CREATE TABLE IF NOT EXISTS `students4` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.students4:~2 rows (대략적) 내보내기
DELETE FROM `students4`;
INSERT INTO `students4` (`name`, `hakbun`, `major`) VALUES
	('강감찬', 21, '물리'),
	('김말숙', 22, '경영'),
	('김연아', 23, '교육');

-- 테이블 springgreen.sungjuks 구조 내보내기
CREATE TABLE IF NOT EXISTS `sungjuks` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `jumsu` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.sungjuks:~6 rows (대략적) 내보내기
DELETE FROM `sungjuks`;
INSERT INTO `sungjuks` (`idx`, `name`, `jumsu`) VALUES
	(1, '길동', 90),
	(2, '말숙', 80),
	(3, '철수', 90),
	(4, '영희', 60),
	(5, '민수', 60),
	(6, '수지', 70),
	(7, '수민', 50);

-- 테이블 springgreen.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test:~11 rows (대략적) 내보내기
DELETE FROM `test`;
INSERT INTO `test` (`name`, `age`, `gender`, `ipsail`, `address`) VALUES
	('강감찬', 50, '남자', '2026-01-15 18:02:13', '제주'),
	('가나다', 20, '남자', '2000-10-01 00:00:00', '광주'),
	('소나무', 34, '남자', '2023-06-25 00:00:00', '울산'),
	('이순신', 42, '남자', '2024-09-09 00:00:00', '서울'),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주'),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주'),
	('강감찬', 50, '남자', '2026-01-16 09:01:00', '제주'),
	('가나다', 20, '남자', '2000-10-01 00:00:00', '광주'),
	('소나무', 34, '남자', '2023-06-25 00:00:00', '울산'),
	('이순신', 42, '남자', '2024-09-09 00:00:00', '서울'),
	('오하늘', 58, '여자', '2000-02-01 00:00:00', '청주');

-- 테이블 springgreen.test2 구조 내보내기
CREATE TABLE IF NOT EXISTS `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test2:~15 rows (대략적) 내보내기
DELETE FROM `test2`;
INSERT INTO `test2` (`idx`, `name`, `age`, `gender`, `address`) VALUES
	(1, '홍길동', 20, '남자', NULL),
	(2, '', 20, '남자', NULL),
	(3, '', 0, '남자', NULL),
	(4, '에프톰', 20, '남자', NULL),
	(5, '김말숙', 20, '여자', ''),
	(7, '김연아', 29, '남자', '서울'),
	(8, '소나무', 55, '남자', '청주'),
	(9, '오하늘', 39, '여자', '서울'),
	(10, '가나다', 39, '여자', '제주'),
	(11, '고인돌', 39, '남자', '광주'),
	(12, '아톰', 19, '여자', '청주'),
	(13, '비톰', 44, '남자', '제주'),
	(16, '씨톰', 46, '여자', '서울'),
	(17, '연습맨', 20, '남자', NULL),
	(18, '연습맨2', 39, '여자', '청주');

-- 테이블 springgreen.test3 구조 내보내기
CREATE TABLE IF NOT EXISTS `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test3:~3 rows (대략적) 내보내기
DELETE FROM `test3`;
INSERT INTO `test3` (`idx`, `mid`, `name`, `age`) VALUES
	(1, 'hkd1234', '홍길동', 25),
	(2, 'hks1234', '홍길순', 22),
	(3, 'lkj1234', '이기자', 12);

-- 테이블 springgreen.test4 구조 내보내기
CREATE TABLE IF NOT EXISTS `test4` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `test3` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 springgreen.test4:~2 rows (대략적) 내보내기
DELETE FROM `test4`;
INSERT INTO `test4` (`idx`, `mid`, `bookName`, `price`) VALUES
	(2, 'lkj1234', '노인과바다', 10000),
	(3, 'hkd1234', '노을저편', 25000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
