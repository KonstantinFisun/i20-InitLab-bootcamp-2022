<?php
    //Запрос, возвращающий категории с количеством товаров внутри
    $sql = "SELECT category.category_id, category.title, count(category_product.product_id) as count_product
            FROM category 
            JOIN category_product ON category.category_id = category_product.category_id
            JOIN product ON product.product_id = category_product.product_id
            WHERE product.in_stock = 1
            GROUP BY category.category_id, category.title
            ORDER BY count_product DESC";

    $query = $db->prepare($sql);
    $query->execute();
    $categories = $query->fetchAll();

    $title = "Категории товаров";
?>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Интернет магазин одежды</title>
    <link rel="stylesheet" href="style/category.css">
    <link rel="stylesheet" href="style/main.css">
</head>
<body>
    <div class="layout">
         <!--p>Подключаем заголовок</p-->
        <?php include "header.php"?>
    <div class="categories">
        <?php foreach ($categories as $category): ?>
        <div class="card">
            <a href="index.php?cat_id=<?=$category['category_id']?>&count=<?=$category['count_product']?>&page=0">
                    <div class="content__title">
                    <div><?=$category['title']?></div>
                    </div>
                    <div class="content__count">
                        Количество товаров: <?=$category['count_product']?>
                    </div>
                    
            </a>
        </div>
        
        <?php endforeach ?>   
    </div>
    </div>
</body>