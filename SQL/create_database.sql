-- Создание базы данных
create database clothing_store;
use clothing_store;

-- Создание таблицы Category
CREATE TABLE category (
  category_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(75) NOT NULL,
  description VARCHAR(150) NOT NULL,
  PRIMARY KEY (category_id));

-- Создание таблицы Image
CREATE TABLE image (
  image_id INT NOT NULL AUTO_INCREMENT,
  url TEXT(150) NOT NULL,
  alt VARCHAR(150) NOT NULL,
  PRIMARY KEY (image_id));
  
-- Создание таблицы Product
CREATE TABLE product (
  product_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(75) NOT NULL,
  price INT UNSIGNED NOT NULL,
  price_without_discount INT UNSIGNED NULL,
  price_with_promocode INT UNSIGNED NULL,
  description VARCHAR(150) NULL,
  in_stock TINYINT NOT NULL DEFAULT 1,
  main_image INT NULL,
  main_category INT NOT NULL,
  PRIMARY KEY (product_id),
  CONSTRAINT FK_Product_Image FOREIGN KEY (main_image) REFERENCES image (image_id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT FK_Product_Category FOREIGN KEY (main_category) REFERENCES category (category_id) ON DELETE CASCADE ON UPDATE CASCADE);
  
-- Создание таблицы Category_Product
  CREATE TABLE category_product (
  category_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (category_id, product_id),
  CONSTRAINT FK_CategoryC FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_ProductC FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE);
  
-- Создание таблицы Image_Product
  CREATE TABLE image_product (
  image_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (image_id, product_id),
  CONSTRAINT FK_ImageI FOREIGN KEY (image_id) REFERENCES image (image_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_ProductI FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE);