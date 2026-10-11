CREATE DATABASE IF NOT EXISTS mintmarket_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE mintmarket_db;
CREATE TABLE IF NOT EXISTS admins(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,email VARCHAR(190) NOT NULL UNIQUE,password_hash VARCHAR(255) NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS products(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,name VARCHAR(160) NOT NULL,category VARCHAR(80) NOT NULL,description TEXT NOT NULL,price DECIMAL(10,2) NOT NULL,stock INT UNSIGNED NOT NULL DEFAULT 0,image_url VARCHAR(500) DEFAULT 'assets/product.svg',active TINYINT(1) NOT NULL DEFAULT 1,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,INDEX(name),INDEX(category)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS orders(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,customer_name VARCHAR(120) NOT NULL,email VARCHAR(190) NOT NULL,phone VARCHAR(30) NOT NULL,address TEXT NOT NULL,total DECIMAL(10,2) NOT NULL,status ENUM('Placed','Processing','Shipped','Completed','Cancelled') NOT NULL DEFAULT 'Placed',created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS order_items(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,order_id INT UNSIGNED NOT NULL,product_id INT UNSIGNED NULL,product_name VARCHAR(160) NOT NULL,quantity INT UNSIGNED NOT NULL,unit_price DECIMAL(10,2) NOT NULL,FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE CASCADE,FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE SET NULL) ENGINE=InnoDB;
INSERT INTO products(name,category,description,price,stock,image_url) SELECT 'Everyday Canvas Tote','Accessories','A sturdy everyday tote for errands, classes and little adventures.',499,24,'assets/product.svg' WHERE NOT EXISTS(SELECT 1 FROM products);
INSERT INTO products(name,category,description,price,stock,image_url) VALUES
('Ceramic Morning Mug','Home & Living','A softly rounded ceramic mug for slow mornings and warm cups of tea.',349,30,'assets/product.svg'),
('Pocket Notebook Set','Stationery','Three pocket-sized notebooks for plans, lists and new ideas.',229,40,'assets/product.svg'),
('Minimal Desk Lamp','Home & Living','A compact desk lamp for your reading corner or workspace.',899,12,'assets/product.svg'),
('Daily Carry Bottle','Lifestyle','A reusable bottle for everyday hydration.',599,18,'assets/product.svg'),
('Soft Cotton Cap','Accessories','A simple cotton cap with an adjustable fit.',399,16,'assets/product.svg'),
('Wireless Mini Speaker','Electronics','A compact speaker for music at your desk or on the move.',1299,9,'assets/product.svg'),
('Weekly Planner Pad','Stationery','A weekly planner pad with space for priorities and notes.',279,25,'assets/product.svg');
