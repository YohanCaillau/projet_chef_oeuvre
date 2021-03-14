CREATE TABLE `Object_Detection_Images` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`image_path` varchar(255) NOT NULL,
	`pedestrian` INT NOT NULL,
	`red_light` INT NOT NULL,
	`green_light` INT NOT NULL,
	`stop_sign` INT NOT NULL,
	`speed_sign` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Cars` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`prototype` varchar(255) NOT NULL,
	`version` varchar(255) NOT NULL,
	`ip_address` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Lane_Navigation_Models` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`model` varchar(255) NOT NULL,
	`r²` FLOAT NOT NULL,
	`mse` FLOAT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Lane_Navigation_Images` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`image_path` varchar(255) NOT NULL,
	`steering_angle` FLOAT NOT NULL,
	`ride_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Object_Detection_Models` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`model` varchar(255) NOT NULL,
	`precision` FLOAT NOT NULL,
	`loss` FLOAT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Ride` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ground` varchar(255) NOT NULL,
	`car_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Lane_Navigation_Images` ADD CONSTRAINT `Lane_Navigation_Images_fk0` FOREIGN KEY (`ride_id`) REFERENCES `Ride`(`id`);

ALTER TABLE `Ride` ADD CONSTRAINT `Ride_fk0` FOREIGN KEY (`car_id`) REFERENCES `Cars`(`id`);

ALTER TABLE `Lane_Navigation_Images` ADD CONSTRAINT `image_path` UNIQUE (`image_path`);

