--
-- title: "DATA 607 Week 02 Assignment"
-- author: "Philip Tanofsky"
-- date: "2/9/2020"
-- SQL file for creating database schema
-- schema: movie_ratings
-- tables: movies, individuals, ratings
--
--
-- Table structure for table `movies`
--
UNLOCK TABLES;

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` varchar(3) NOT NULL,
  `title` varchar(30) NOT NULL,
  `director` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `movies` WRITE;

INSERT INTO `movies` VALUES 
('101', 'Parasite', 'Bong Joon-ho'),
('102', '1917','Sam Mendes'),
('103', 'Little Women', 'Greta Gerwig'),
('104', 'Jojo Rabbit', 'Taika Waititi'),
('105', 'The Irishman', 'Martin Scorsese'),
('106', 'Marriage Story', 'Noah Baumbach');
UNLOCK TABLES;


--
-- Table structure for table `individuals`
--

DROP TABLE IF EXISTS `individuals`;

CREATE TABLE `individuals` (
  `id` varchar(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `individuals` WRITE;

INSERT INTO `individuals` VALUES 
('201', 'Matthew', 'brother'),
('202', 'Evi', 'mother'),
('203', 'David', 'friend'),
('204', 'Michael', 'friend'),
('205', 'Bart', 'colleague');

UNLOCK TABLES;


--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `individual_id` varchar(3) NOT NULL,
  `movie_id` varchar(3) NOT NULL,
  `rating` varchar(3) NOT NULL,
  CONSTRAINT PK_Rating PRIMARY KEY (`individual_id`,`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ratings` WRITE;

INSERT INTO `ratings` VALUES 
('201','101','2'),
('201','102','3.5'),
('201','103','2.5'),
('201','104','4'),
('201','105','2'),
('201','106','3.5'),

('202','102','1.5'),
('202','103','4.5'),
('202','105','2.5'),
('202','106','3'),

('203','101','3.5'),
('203','102','1.5'),
('203','103','4'),
('203','104','2'),
('203','105','3'),
('203','106','0.5'),

('204','101','4'),
('204','102','3.5'),
('204','103','2'),

('205','101','4.5'),
('205','102','3'),
('205','103','1.5'),
('205','104','3'),
('205','106','4');

UNLOCK TABLES;