use clothing_store;

-- Информация для Category
INSERT INTO category (title, description) VALUES 
('Одежда', 'Модная одежда на каждый день.'), 
('Обувь', 'Движение к совершенству.'),
('Аксессуары', 'Измени свой взгляд на привычные вещи.'),
('Спорт', 'Сделай свою жизнь ярче!'),
('Дом', 'Территория новой жизни.'),
('Скидки', 'Наши цены – настоящий клад!');


-- Информация для Image
INSERT INTO image (url, alt) VALUES 
('img/clothes/Tom_Tailor_Main.png', 'Джинсовая куртка Tom Tailor'), 
('img/clothes/Tom_Tailor_1.png', 'Джинсовая куртка Tom Tailor сзади'),
('img/clothes/Tom_Tailor_2.png', 'Джинсовая куртка Tom Tailor сбоку'),
('img/clothes/Tom_Tailor_3.png', 'Джинсовая куртка Tom Tailor внутри'),
('img/clothes/Trends_Brands_Main.png', 'Платье Trends Brands'),
('img/shoes/SAINT_TROPEZ_Main.png', 'Кеды SAINT TROPEZ'),
('img/shoes/Tervolina_Main.png', 'Лоферы Tervolina'),
('img/accessories/Karl_Lagerfeld_Main.png', 'Бейсболка Karl Lagerfeld'),
('img/accessories/Karl_Lagerfeld_1.png', 'Бейсболка Karl Lagerfeld сверху'),
('img/sport/Termit_Main.png', 'Рюкзак Termit');

-- Информация для Product
INSERT INTO product (title, price, price_without_discount, price_with_promocode, description, in_stock, main_image, main_category) VALUES 
('Платье Trends Brands', '3990', NULL, NULL, NULL, '1', (select image_id from image where url='img/clothes/Trends_Brands_Main.png'), (select category_id from category where title='Одежда')),
('Джинсовая куртка Tom Tailor', '3649', '7590', '3249', 'Джинсовая куртка выполнена из хлопкового денима.', '1', (select image_id from image where url='img/clothes/Tom_Tailor_Main.png'), (select category_id from category where title='Одежда')),
('Бейсболка Karl Lagerfeld', '5400', '7700', '4789', NULL, '0', (select image_id from image where url='img/accessories/Karl_Lagerfeld_Main.png'), (select category_id from category where title='Аксессуары')),
('Кеды SAINT TROPEZ', '3379', '5199', NULL, 'Кеды выполнены из сетчатого текстиля.', '1', (select image_id from image where url='img/shoes/SAINT_TROPEZ_Main.png'), (select category_id from category where title='Обувь')),
('Лоферы Tervolina', '5593', '7990', '4299', 'Натуральная замша.', '1', (select image_id from image where url='img/shoes/Tervolina_Main.png'), (select category_id from category where title='Обувь')),
('Рюкзак Termit', '2939', '4199', NULL, 'Рюкзак выполнен из водонепроницаемого материала.', '1', (select image_id from image where url='img/sport/Termit_Main.png'), (select category_id from category where title='Спорт'));

-- Доп картинки для Product
INSERT INTO image_product VALUES
((select image_id from image where url='img/clothes/Tom_Tailor_1.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/clothes/Tom_Tailor_2.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/clothes/Tom_Tailor_3.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/accessories/Karl_Lagerfeld_1.png'), (select product_id from product where title='Бейсболка Karl Lagerfeld'));

-- Доп категории для Product
INSERT INTO category_product VALUES
((select category_id from category where title='Скидки'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select category_id from category where title='Скидки'), (select product_id from product where title='Лоферы Tervolina')),
((select category_id from category where title='Скидки'), (select product_id from product where title='Бейсболка Karl Lagerfeld'));