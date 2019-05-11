/*
	Delete the S-Mart production database and rebuild it
*/
DROP DATABASE IF EXISTS smart_prod;
CREATE DATABASE smart_prod;

USE smart_prod;



/* state lookup table */
CREATE TABLE state_lookup (
	state_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	state_name VARCHAR(100) NOT NULL,
	state_abbr CHAR(2) NOT NULL
    );


/* s-mart job lookup table */
CREATE TABLE job_lookup (
	job_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	job_title VARCHAR(100) NOT NULL
    );


/* job role restriction level */
CREATE TABLE role (
	role_id INT UNSIGNED NOT NULL PRIMARY KEY,
	role_title VARCHAR(100) NOT NULL,
	acces_level INT NOT NULL
    );
    
    
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
	customer_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(200) NOT NULL UNIQUE,
	pass CHAR(60) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
	street VARCHAR(200) NULL,
	city INT UNSIGNED NULL,
	state_id INT UNSIGNED NOT NULL, /* foreign key to state lookup */
    zip INT UNSIGNED NOT NULL,
    phone_number INT UNSIGNED NULL,
    #image LONGBLOB NOT NULL,
    register_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    INDEX login (email, pass),
    CONSTRAINT FK_customer_state FOREIGN KEY (state_id) REFERENCES state_lookup(state_id)
    );
    

CREATE TABLE category (
	category_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
	);
    
    
CREATE TABLE product (
	prod_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category_id INT UNSIGNED NOT NULL,
	prod_name VARCHAR(255) CHARACTER SET utf8 NOT NULL,
	prod_desc TEXT(500) CHARACTER SET utf8 NOT NULL,
    prod_feature1 VARCHAR(100) CHARACTER SET utf8 NOT NULL,
    prod_feature2 VARCHAR(100) CHARACTER SET utf8 NOT NULL,
    prod_feature3 VARCHAR(100) CHARACTER SET utf8 NOT NULL,
    prod_feature4 VARCHAR(100) CHARACTER SET utf8 NOT NULL,
    #image LONGBLOB NOT NULL,
	prod_price DECIMAL(9,2) NOT NULL,
    prod_in_stock TINYINT (12) NOT NULL DEFAULT 1,
    date_added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    date_expires INT UNSIGNED NULL,
	PRIMARY KEY (prod_id), FULLTEXT (prod_name), FULLTEXT (prod_desc),
    CONSTRAINT FK_prod_category FOREIGN KEY (category_id) REFERENCES category(category_id)
    );
    
    
CREATE TABLE orders (
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNSIGNED NOT NULL,
	product_id INT UNSIGNED NOT NULL,
    order_total DECIMAL(10,2) UNSIGNED NOT NULL,
    order_discounts DECIMAL(10,2) UNSIGNED NULL,
    order_date TIMESTAMP,
    INDEX (customer_id),
    INDEX (order_date)
    );
    

CREATE TABLE order_contents (
    order_content_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNSIGNED NOT NULL,
    prod_id INT UNSIGNED NOT NULL,
    quantity TINYINT UNSIGNED NOT NULL DEFAULT 1,
    price DECIMAL(6,2) UNSIGNED NOT NULL,
    ship_date DATETIME DEFAULT NULL,
    INDEX (order_id),
    INDEX (prod_id),
    INDEX (ship_date)
    );


CREATE TABLE employee (
	employee_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(200) NOT NULL UNIQUE,
	pass CHAR(60) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
	street VARCHAR(200) NOT NULL,
	city INT UNSIGNED NOT NULL,
	state_id INT UNSIGNED NOT NULL, /* foreign key to state lookup */
    phone_number INT UNSIGNED NOT NULL,
    #image LONGBLOB NOT NULL,
	role_id INT UNSIGNED NOT NULL, /* foreign key to role table */
    salary DECIMAL(7,2) NOT NULL,
	payment_id INT UNSIGNED NOT NULL, /* foreign key to payroll table */
    hire_date DATETIME,
    leave_date DATETIME,
    CONSTRAINT FK_employee_state FOREIGN KEY (state_id) REFERENCES state_lookup(state_id),
    CONSTRAINT FK_employee_role FOREIGN KEY (role_id) REFERENCES role(role_id)
    );


/* reviews table for products, staff, or stores */
CREATE TABLE review (
	review_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id INT UNSIGNED NOT NULL, /* foreign key to tell what customer left the review */
    prod_id INT UNSIGNED NULL, /* foreign key in case a product review */
    rating INT(1) NULL,
    feedback VARCHAR(200) NOT NULL,
    CONSTRAINT FK_customer_review FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    CONSTRAINT FK_product_review FOREIGN KEY (prod_id) REFERENCES product(prod_id)
    );