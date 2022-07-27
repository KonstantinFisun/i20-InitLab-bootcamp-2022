SELECT category.category_id, category.title, count(category_product.product_id) as count_product
FROM category 
JOIN category_product ON category.category_id = category_product.category_id
JOIN product ON product.product_id = category_product.product_id
WHERE product.in_stock = 1
GROUP BY category.category_id, category.title
ORDER BY count_product DESC