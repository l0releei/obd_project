-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema NakedSun
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema questionnaire
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `questionnaire` ;

-- -----------------------------------------------------
-- Schema questionnaire
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `questionnaire` ;
USE `questionnaire` ;

-- -----------------------------------------------------
-- Table `questionnaire`.`survey`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`survey` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`survey` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `topic` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `questionnaire`.`question`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`question` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`question` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(150) CHARACTER SET 'utf8' NOT NULL,
  `survey_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Question_survey1_idx` (`survey_id` ASC) VISIBLE,
  CONSTRAINT `fk_Question_survey1`
    FOREIGN KEY (`survey_id`)
    REFERENCES `questionnaire`.`survey` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `questionnaire`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`customer` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(320) CHARACTER SET 'utf8' NOT NULL,
  `password` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `questionnaire`.`expert`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`expert` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`expert` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `expert_user1_idx` (`expert_id` ASC) VISIBLE,
  CONSTRAINT `expert_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `questionnaire`.`customer` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `questionnaire`.`correctAnswers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`correctAnswers` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`correctAnswers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(150) CHARACTER SET 'utf8' NOT NULL,
  `expert_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `correctAnswers_expert1_idx` (`expert_id` ASC) VISIBLE,
  INDEX `correctAnswers_Question1_idx` (`Question_id` ASC) VISIBLE,
  CONSTRAINT `correctAnswers_Question1`
    FOREIGN KEY (`Question_id`)
    REFERENCES `questionnaire`.`question` (`id`),
  CONSTRAINT `correctAnswers_expert1`
    FOREIGN KEY (`respondent_id`)
    REFERENCES `questionnaire`.`expert` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `questionnaire`.`incorrectAnswers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`incorrectAnswers` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`incorrectAnswers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(150) CHARACTER SET 'utf8' NOT NULL,
  `question_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Question_id`),
  INDEX `incorrectAnswers_Question1_idx` (`Question_id` ASC) VISIBLE,
  CONSTRAINT `incorrectAnswers_Question1`
    FOREIGN KEY (`Question_id`)
    REFERENCES `questionnaire`.`question` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `questionnaire`.`role` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`role` (
                                                 `id` INT NOT NULL,
                                                 `name` TEXT NOT NULL,
                                                 PRIMARY KEY (`id`),
                                                 UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `questionnaire`.`report`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questionnaire`.`report` ;

CREATE TABLE IF NOT EXISTS `questionnaire`.`report` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(150) CHARACTER SET 'utf8' NOT NULL,
  `survey_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`, `survey_id`, `user_id`),
  INDEX `report_survey1_idx` (`survey_id` ASC) VISIBLE,
  INDEX `report_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `report_survey1`
    FOREIGN KEY (`survey_id`)
    REFERENCES `questionnaire`.`survey` (`id`),
  CONSTRAINT `report_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `questionnaire`.`expert` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `questionnaire`.`survey`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`survey` (`id`, `name`, `Topic`) VALUES (1, 'Sigmund Freud', 'Psychology');
INSERT INTO `questionnaire`.`survey` (`id`, `name`, `Topic`) VALUES (2, 'What animal are you', 'Nature');

COMMIT;


-- -----------------------------------------------------
-- Data for table `questionnaire`.`question`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`question` (`id`, `text`, `survey_id`) VALUES (1, 'When he was born?', 1);
INSERT INTO `questionnaire`.`question` (`id`, `text`, `survey_id`) VALUES (2, 'Which country is his home country?', 1);
INSERT INTO `questionnaire`.`question` (`id`, `text`, `survey_id`) VALUES (3, 'Death date', 2);
INSERT INTO `questionnaire`.`question` (`id`, `text`, `survey_id`) VALUES (4, 'Did he have a wife?', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `questionnaire`.`expert`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (1);
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (2);
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (3);
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (4);
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (5);
INSERT INTO `questionnaire`.`expert` (`id`) VALUES (6);

COMMIT;


-- -----------------------------------------------------
-- Data for table `questionnaire`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.1, 'Psychology', 'Гладков Даніїл', 'gladkovdaniil.kpi.io92@gmail.com', '123346');
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.2, 'Nature', 'Карнаухова Анастасія', 'anastasiz.bbq@gmail.com', 'Loremipsum');
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.3, 'Psychology', 'Кушенко Сергій', 'kushenkosergey111@gmail.com', 'Bababoy56');
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.4, 'Psychology', 'Педенко Данило', 'pedenko.danil@gmail.com', 'Sobaka_Ubivaka');
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.5, 'Nature', 'Рожко Михайло', 'mihaylo.rozhko.01@gmail.com', 'Starosta_24_com');
INSERT INTO `questionnaire`.`customer` (`id`, `specialization_survay`, `name`, `email`, `password`,) VALUES (0.6, 'Nature', 'Соболь Денис', 'deesy2203@gmail.com', 'winner_2001_best');

COMMIT;

START TRANSACTION;
USE `NakedSun`;
INSERT INTO `questionnaire`.`role` (`id`, `name`) VALUES (1, 'Manager');
INSERT INTO `questionnaire`.`role` (`id`, `name`) VALUES (2, 'Analyst');
INSERT INTO `questionnaire`.`role` (`id`, `name`) VALUES (3, 'Expert');
INSERT INTO `questionnaire`.`role` (`id`, `name`) VALUES (3, 'Customer');

COMMIT;
-- -----------------------------------------------------
-- Data for table `questionnaire`.`correctAnswers`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`correctAnswers` (`id`, `text`, `expert_id`, `Question_id`) VALUES (1, 'Blue', 1, 1);
INSERT INTO `questionnaire`.`correctAnswers` (`id`, `text`, `expert_id`, `Question_id`) VALUES (2, '1856', 1, 2);
INSERT INTO `questionnaire`.`correctAnswers` (`id`, `text`, `expert_id`, `Question_id`) VALUES (3, 'I don`t know', 2, 3);
INSERT INTO `questionnaire`.`correctAnswers` (`id`, `text`, `expert_id`, `Question_id`) VALUES (4, 'Im just Lorem Ipsum', 2, 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `questionnaire`.`incorrectAnswers`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`incorrectAnswers` (`id`, `text`, `Question_id`) VALUES (1, 'Red', 1);
INSERT INTO `questionnaire`.`incorrectAnswers` (`id`, `text`, `Question_id`) VALUES (2, '1855', 2);
INSERT INTO `questionnaire`.`incorrectAnswers` (`id`, `text`, `Question_id`) VALUES (3, 'I know', 3);
INSERT INTO `questionnaire`.`incorrectAnswers` (`id`, `text`, `Question_id`) VALUES (4, 'Boy next door', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `questionnaire`.`report`
-- -----------------------------------------------------
START TRANSACTION;
USE `questionnaire`;
INSERT INTO `questionnaire`.`report` (`id`, `text`, `survey_id`, `user_id`) VALUES (1, '1 star(', 1, 2);
INSERT INTO `questionnaire`.`report` (`id`, `text`, `survey_id`, `user_id`) VALUES (2, '5 stars!', 2, 2);

COMMIT;
