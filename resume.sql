CREATE TABLE `education` (
  `edu_Id` int PRIMARY KEY AUTO_INCREMENT,
  `institution` varchar(50),
  `start_date` date,
  `finish_date` date
);

CREATE TABLE `experience` (
  `work_id` int PRIMARY KEY AUTO_INCREMENT,
  `edu_id` int,
  `work_name` varchar(255),
  `start_date` date,
  `finish_date` date
);

CREATE TABLE `skills` (
  `skills_Id` int PRIMARY KEY AUTO_INCREMENT,
  `edu_Id` int,
  `skill_name` varchar(255),
  `skill_progress` int
);

ALTER TABLE `experience` ADD FOREIGN KEY (`edu_id`) REFERENCES `education` (`edu_Id`);

ALTER TABLE `skills` ADD FOREIGN KEY (`edu_Id`) REFERENCES `education` (`edu_Id`);
