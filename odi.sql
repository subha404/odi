DROP SCHEMA IF EXISTS `odi`;

CREATE SCHEMA `odi`;
USE `odi`;

CREATE TABLE IF NOT EXISTS `odi`.`team` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `team_name` VARCHAR(50) UNIQUE NOT NULL,
    `position` TINYINT NOT NULL,
    `rating` INT NOT NULL,
    `points` INT NOT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=1;
    
CREATE TABLE IF NOT EXISTS `odi`.`legend_batter` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `batter_name` VARCHAR(50) UNIQUE NOT NULL,
    `matches` INT NOT NULL,
    `fifties` INT NOT NULL,
    `hundreds` INT NOT NULL,
    `avg` DECIMAL(4 , 2 ) NOT NULL,
    `team_id` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`team_id`)
        REFERENCES `team` (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `odi`.`legend_bowler` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `bowler_name` VARCHAR(50) UNIQUE NOT NULL,
    `matches` INT NOT NULL,
    `wickets` INT NOT NULL,
    `avg` DECIMAL(4 , 2 ) NOT NULL,
    `econ` DECIMAL(4 , 2 ) NOT NULL,
    `team_id` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`team_id`)
        REFERENCES `team` (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=1;