CREATE TABLE `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `aadhar_no` varchar(20) DEFAULT NULL,
  `dl_no` varchar(20) DEFAULT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `avail` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `pick_up` varchar(50) DEFAULT NULL,
  `drop_loc` varchar(50) DEFAULT NULL,
  `vehicle_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `donor` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `blood_grp` varchar(5) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `aids` varchar(20) DEFAULT NULL,
  `cancer` varchar(20) DEFAULT NULL,
  `pierce` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `patient` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `blood_grp` varchar(5) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `contacts`
(
id int NOT NULL AUTO_INCREMENT,
name varchar(50),
contact varchar(10),
PRIMARY KEY (id)
);