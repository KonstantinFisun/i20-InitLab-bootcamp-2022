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
('img/clothes/O\'stin_Main.png', 'Брюки O\'stin'),
('img/clothes/Puma_Main.png', 'Шорты Puma'),
('img/sport/Termit_Main.png', 'Рюкзак Termit'),
('img/clothes/Trousers_Adidas_Main.png', 'Брюки Adidas'),
('img/clothes/Suit_Senser_Main.png', 'Костюм Stenser'),
('img/clothes/Sweatshirt_Diesel_Main.png', 'Свитшорт Diesel'),
('img/clothes/Сardigan_DeFacto_Main.png', 'Кардиган Defacto'),
('img/clothes/Trousers_Savage_Main.png', 'Брюки Savage'),
('img/clothes/Zadig_Main.png', 'Худи Zadig'),
('img/clothes/Guess_Jeans_Main.png', 'Джинсы Guess Jeans'),
('img/clothes/Sela_Main.png', 'Плащ Sela'),
('img/clothes/Trousers_Olsi_Main.png', 'Брюки Olsi'),
('img/clothes/Vittoria_Vicci_Main.png', 'Платье Vittoria Vicci');

-- Информация для Product
INSERT INTO product (title, price, price_without_discount, price_with_promocode, description, in_stock, main_image, main_category) VALUES 
('Платье Trends Brands', '3990', '4500', NULL, NULL, '1', (select image_id from image where url='img/clothes/Trends_Brands_Main.png'), (select category_id from category where title='Одежда')),
('Джинсовая куртка Tom Tailor', '3649', '7590', '3249', 'Джинсовая куртка выполнена из хлопкового денима.', '1', (select image_id from image where url='img/clothes/Tom_Tailor_Main.png'), (select category_id from category where title='Одежда')),
('Брюки O\'stin','2999','3500', NULL, NULL, '1', (select image_id from image where url='img/clothes/O\'stin_Main.png'), (select category_id from category where title='Одежда')),
('Шорты Puma','2999','3700', '2800', 'Шорты спортивные ESS Sweat Shorts 8" TR M', '1', (select image_id from image where url='img/clothes/Puma_Main.png'), (select category_id from category where title='Одежда')),
('Брюки Adidas','5450','8300', NULL, 'Брюки спортивные SST TP P BLUE', '1', (select image_id from image where url='img/clothes/Trousers_Adidas_Main.png'), (select category_id from category where title='Одежда')),
('Костюм Stenser','9350','16350', '7523', 'Костюм классический Двойка', '1', (select image_id from image where url='img/clothes/Suit_Senser_Main.png'), (select category_id from category where title='Одежда')),
('Свитшорт Diesel','8350','15100', '5845', NULL, '1', (select image_id from image where url='img/clothes/Sweatshirt_Diesel_Main.png'), (select category_id from category where title='Одежда')),
('Кардиган Defacto','600','1499', NULL, NULL, '1', (select image_id from image where url='img/clothes/Сardigan_DeFacto_Main.png'), (select category_id from category where title='Одежда')),
('Брюки Savage','2999','3500', NULL, NULL, '1', (select image_id from image where url='img/clothes/Trousers_Savage_Main.png'), (select category_id from category where title='Одежда')),
('Худи Zadig','8080','14700', NULL, NULL, '1', (select image_id from image where url='img/clothes/Zadig_Main.png'), (select category_id from category where title='Одежда')),
('Джинсы Guess Jeans','9010','16399', '6307', 'Джинсы SUPER HIGH WIDE LEG', '1', (select image_id from image where url='img/clothes/Guess_Jeans_Main.png'), (select category_id from category where title='Одежда')),
('Плащ Sela','5499','7999', NULL, NULL, '1', (select image_id from image where url='img/clothes/Sela_Main.png'), (select category_id from category where title='Одежда')),
('Брюки Olsi','2749','3400', NULL, 'Данный товар является частью проекта Lamoda planet - специального раздела нашего каталога, где мы собрали экологичные, этичные, инклюзивные и благотворительные товары.', '1', (select image_id from image where url='img/clothes/Trousers_Olsi_Main.png'), (select category_id from category where title='Одежда')),
('Платье Vittoria Vicci','3865','8590', NULL, NULL, '1', (select image_id from image where url='img/clothes/Vittoria_Vicci_Main.png'), (select category_id from category where title='Одежда')),
('Бейсболка Karl Lagerfeld', '5400', '7700', '4789', NULL, '0', (select image_id from image where url='img/accessories/Karl_Lagerfeld_Main.png'), (select category_id from category where title='Аксессуары')),
('Кеды SAINT TROPEZ', '3379', '5199', NULL, 'Кеды выполнены из сетчатого текстиля.', '1', (select image_id from image where url='img/shoes/SAINT_TROPEZ_Main.png'), (select category_id from category where title='Обувь')),
('Лоферы Tervolina', '5593', '7990', '4299', 'Натуральная замша.', '1', (select image_id from image where url='img/shoes/Tervolina_Main.png'), (select category_id from category where title='Обувь')),
('Рюкзак Termit', '2939', '4199', NULL, 'Рюкзак выполнен из водонепроницаемого материала.', '1', (select image_id from image where url='img/sport/Termit_Main.png'), (select category_id from category where title='Спорт'));

-- Доп картинки для Product
INSERT INTO image_product VALUES
((select image_id from image where url='img/clothes/Vittoria_Vicci_Main.png'), (select product_id from product where title='Платье Vittoria Vicci')),
((select image_id from image where url='img/clothes/Trousers_Olsi_Main.png'), (select product_id from product where title='Брюки Olsi')),
((select image_id from image where url='img/clothes/Sela_Main.png'), (select product_id from product where title='Плащ Sela')),
((select image_id from image where url='img/clothes/Guess_Jeans_Main.png'), (select product_id from product where title='Джинсы Guess Jeans')),
((select image_id from image where url='img/clothes/Zadig_Main.png'), (select product_id from product where title='Худи Zadig')),
((select image_id from image where url='img/clothes/Trousers_Savage_Main.png'), (select product_id from product where title='Брюки Savage')),
((select image_id from image where url='img/clothes/Сardigan_DeFacto_Main.png'), (select product_id from product where title='Кардиган Defacto')),
((select image_id from image where url='img/clothes/Sweatshirt_Diesel_Main.png'), (select product_id from product where title='Свитшорт Diesel')),
((select image_id from image where url='img/clothes/Suit_Senser_Main.png'), (select product_id from product where title='Костюм Stenser')),
((select image_id from image where url='img/clothes/Trousers_Adidas_Main.png'), (select product_id from product where title='Брюки Adidas')),
((select image_id from image where url='img/sport/Termit_Main.png'), (select product_id from product where title='Рюкзак Termit')),
((select image_id from image where url='img/clothes/Puma_Main.png'), (select product_id from product where title='Шорты Puma')),
((select image_id from image where url='img/clothes/O\'stin_Main.png'), (select product_id from product where title='Брюки O\'stin')),
((select image_id from image where url='img/accessories/Karl_Lagerfeld_Main.png'), (select product_id from product where title='Бейсболка Karl Lagerfeld')),
((select image_id from image where url='img/shoes/Tervolina_Main.png'), (select product_id from product where title='Лоферы Tervolina')),
((select image_id from image where url='img/shoes/SAINT_TROPEZ_Main.png'), (select product_id from product where title='Кеды SAINT TROPEZ')),
((select image_id from image where url='img/clothes/Trends_Brands_Main.png'), (select product_id from product where title='Платье Trends Brands')),
((select image_id from image where url='img/clothes/Tom_Tailor_Main.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/clothes/Tom_Tailor_1.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/clothes/Tom_Tailor_2.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/clothes/Tom_Tailor_3.png'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select image_id from image where url='img/accessories/Karl_Lagerfeld_1.png'), (select product_id from product where title='Бейсболка Karl Lagerfeld'));

-- Доп категории для Product
INSERT INTO category_product VALUES
((select category_id from category where title='Одежда'), (select product_id from product where title='Платье Vittoria Vicci')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Брюки Olsi')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Плащ Sela')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Джинсы Guess Jeans')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Худи Zadig')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Брюки Savage')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Кардиган Defacto')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Свитшорт Diesel')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Костюм Stenser')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Брюки Adidas')),
((select category_id from category where title='Аксессуары'), (select product_id from product where title='Рюкзак Termit')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Шорты Puma')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Брюки O\'stin')),
((select category_id from category where title='Аксессуары'), (select product_id from product where title='Бейсболка Karl Lagerfeld')),
((select category_id from category where title='Обувь'), (select product_id from product where title='Лоферы Tervolina')),
((select category_id from category where title='Обувь'), (select product_id from product where title='Кеды SAINT TROPEZ')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Платье Trends Brands')),
((select category_id from category where title='Одежда'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select category_id from category where title='Скидки'), (select product_id from product where title='Джинсовая куртка Tom Tailor')),
((select category_id from category where title='Скидки'), (select product_id from product where title='Лоферы Tervolina')),
((select category_id from category where title='Скидки'), (select product_id from product where title='Бейсболка Karl Lagerfeld'));