# Запрос, возвращающий категории с количеством товаров внутри
SELECT category.category_id, category.title, count(category_product.product_id) as count_product
FROM category 
JOIN category_product ON category.category_id = category_product.category_id
JOIN product ON product.product_id = category_product.product_id
WHERE product.in_stock = 1
GROUP BY category.category_id
ORDER BY count_product DESC;

# Запрос, возвращающий 12 товаров заданной категории
SELECT product.product_id, product.title, category.title AS category, image.url, image.alt
FROM product 
JOIN category_product ON category_product.product_id = product.product_id
JOIN category ON category.category_id = product.main_category
JOIN image ON image.image_id = product.main_image
WHERE category_product.category_id = 2 AND product.in_stock = 1
LIMIT 12;

# Запрос, возвращающий информацию о товаре
SELECT title, price, price_without_discount, price_with_promocode, description
FROM product 
WHERE product_id = 1;

#Получаем все второстепенные фото для товара
SELECT url, alt
FROM image
JOIN image_product ON image.image_id = image_product.image_id
JOIN product ON product.product_id = image_product.product_id
WHERE image_product.product_id = 1 and product.main_image != image.image_id;

# Получаем главное фото товара
SELECT url, alt
FROM image
JOIN product ON image.image_id = product.main_image
WHERE product.product_id = 1;

# Получаем все категории товара
SELECT title
FROM category 
JOIN category_product ON category.category_id = category_product.category_id
WHERE category_product.product_id = 1;

# Запрос, возвращающий категории с количеством товаров внутри, даже если товаров в них нет
SELECT category.category_id, category.title, count(category_product.product_id) as count_product
FROM category
LEFT JOIN category_product ON category.category_id = category_product.category_id
GROUP BY category.category_id;

# Запрос, возвращающий категории с количеством товаров внутри больше 2
SELECT category.category_id, category.title, count(category_product.product_id) as count_product
FROM category
JOIN category_product ON category.category_id = category_product.category_id
GROUP BY category.category_id
HAVING count_product > 2;
