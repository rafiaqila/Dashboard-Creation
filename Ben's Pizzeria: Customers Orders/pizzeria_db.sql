CREATE TABLE `orders` (
  `row_id` int PRIMARY KEY,
  `order_id` varchar(10),
  `created_at` datetime,
  `item_id` varchar(10),
  `quantity` int,
  `cust_id` int,
  `delivery` boolean,
  `add_id` int
);

CREATE TABLE `customers` (
  `cust_id` int PRIMARY KEY,
  `cust_firstname` varchar(50),
  `cust_lastname` varchar(50)
);

CREATE TABLE `address` (
  `add_id` int PRIMARY KEY,
  `delivery_address1` varchar(200),
  `delivery_address2` varchar(200),
  `delivery_city` varchar(50),
  `delivery_zipcode` varchar(20)
);

CREATE TABLE `item` (
  `item_id` varchar(10) PRIMARY KEY,
  `sku` varchar(20),
  `item_name` varchar(100),
  `item_cat` varchar(100),
  `item_size` varchar(10),
  `item_price` decimal(10,2)
);

CREATE TABLE `ingredient` (
  `ing_id` varchar(10) PRIMARY KEY,
  `ing_name` varchar(200),
  `ing_weight` int,
  `ing_measure` varchar(20),
  `ing_price` decimal(10,2)
);

CREATE TABLE `recipe` (
  `row_id` int PRIMARY KEY,
  `recipe_id` varchar(20),
  `ing_id` varchar(10),
  `quantity` int
);

CREATE TABLE `inventory` (
  `inv_id` int PRIMARY KEY,
  `item_id` varchar(10),
  `quantity` int
);

CREATE TABLE `staff` (
  `staff_id` varchar(20) PRIMARY KEY,
  `first_name` varchar(50),
  `last_name` varchar(50),
  `position` varchar(100),
  `hourly_rate` decimal(5,2)
);

CREATE TABLE `shift` (
  `shift_id` varchar(20),
  `day_of_week` varchar(15),
  `start_time` time,
  `end_time` time
);

CREATE TABLE `rotation` (
  `row_id` int PRIMARY KEY,
  `rota_id` varchar(20),
  `date` datetime,
  `shift_id` varchar(20),
  `staff_id` varchar(20)
);

ALTER TABLE `customers` ADD FOREIGN KEY (`cust_id`) REFERENCES `orders` (`cust_id`);

ALTER TABLE `address` ADD FOREIGN KEY (`add_id`) REFERENCES `orders` (`add_id`);

ALTER TABLE `item` ADD FOREIGN KEY (`item_id`) REFERENCES `orders` (`item_id`);

ALTER TABLE `item` ADD FOREIGN KEY (`sku`) REFERENCES `recipe` (`recipe_id`);

ALTER TABLE `ingredient` ADD FOREIGN KEY (`ing_id`) REFERENCES `recipe` (`ing_id`);

ALTER TABLE `item` ADD FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`created_at`) REFERENCES `rotation` (`date`);

ALTER TABLE `shift` ADD FOREIGN KEY (`shift_id`) REFERENCES `rotation` (`shift_id`);

ALTER TABLE `staff` ADD FOREIGN KEY (`staff_id`) REFERENCES `rotation` (`staff_id`);
