# Запрос, возвращающий категории с количеством товаров внутри
SELECT category.category_id, category.title, count(category_product.product_id) as count_product
FROM category 
JOIN category_product ON category.category_id = category_product.category_id
JOIN product ON product.product_id = category_product.product_id
WHERE product.in_stock = 1
GROUP BY category.category_id, category.title
ORDER BY count_product DESC;

# Запрос, возвращающий 12 товаров заданной категории
SELECT product.product_id, product.title, category.title AS category, image.url, image.alt
FROM product 
JOIN category_product ON category_product.product_id = product.product_id
JOIN category ON category.category_id = product.main_category
JOIN image ON image.image_id = product.main_image
WHERE category_product.category_id = 2 AND product.in_stock = 1
LIMIT 12;
