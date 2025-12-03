CREATE TABLE `user` (
	`id` int NOT NULL AUTO_INCREMENT,
	`first_name` varchar(60) NOT NULL,
	`last_name` varchar(60) NOT NULL,
	`phone_number` varchar(60),
	`email` varchar(60),
	`password` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `pill` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`content` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `pill_content` (
	`id` int NOT NULL AUTO_INCREMENT,
	`pill_type` int NOT NULL,
	`amount` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `pill_type` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `reminder` (
	`id` int NOT NULL AUTO_INCREMENT,
	`user_id` int NOT NULL AUTO_INCREMENT,
	`pill` int NOT NULL AUTO_INCREMENT,
	`date_start` DATE NOT NULL,
	`date_end` DATE NOT NULL,
	`reminder` varchar(2000) NOT NULL,
	`amount` DECIMAL NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `log` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`user` int NOT NULL,
	`action` int NOT NULL AUTO_INCREMENT,
	`date` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `action` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(500) NOT NULL DEFAULT 'Action',
	PRIMARY KEY (`id`)
);

ALTER TABLE `pill` ADD CONSTRAINT `pill_fk0` FOREIGN KEY (`content`) REFERENCES `pill_content`(`id`);

ALTER TABLE `pill_content` ADD CONSTRAINT `pill_content_fk0` FOREIGN KEY (`pill_type`) REFERENCES `pill_type`(`id`);

ALTER TABLE `reminder` ADD CONSTRAINT `reminder_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`);

ALTER TABLE `reminder` ADD CONSTRAINT `reminder_fk1` FOREIGN KEY (`pill`) REFERENCES `pill`(`id`);

ALTER TABLE `log` ADD CONSTRAINT `log_fk0` FOREIGN KEY (`user`) REFERENCES `user`(`id`);

ALTER TABLE `log` ADD CONSTRAINT `log_fk1` FOREIGN KEY (`action`) REFERENCES `action`(`id`);








