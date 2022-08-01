<?php

    # Обновляем путь
    $path = "";
    # id категории
    $id = (int) $_GET['cat_id'];
    # Количество товаров в категории
    $count_product = (int) $_GET['count'];
    # Текущая страница
    $page = (int) $_GET['page'];
    # Лимит на количество товаров на странице
    $count = 12;
    # Число страниц
    $count_pages = ceil($count_product / $count);
    # С какого товара показываем
    $offset = $page * $count;
    
    # Запрос, возвращающий 12 товаров заданной категории
    $request = "SELECT product.product_id, product.title, category.title AS category, image.url, image.alt
                FROM product 
                JOIN category_product ON category_product.product_id = product.product_id
                JOIN category ON category.category_id = product.main_category
                JOIN image ON image.image_id = product.main_image
                WHERE category_product.category_id = $id AND product.in_stock = 1
                LIMIT $count offset $offset";
    $query = $db->prepare($request);
    $query->execute();
    $products = $query->fetchAll();

    # Запрос, возвращающий информацию о категории
    $request = "SELECT title, description from category where category_id=$id";
    $query = $db->prepare($request);
    $query->execute();
    $category = $query->fetch();
    
    # Если категория пустая
    if (empty($products))
        header("Location: error_404.php");
    
    # Обновляем название header
    $title = $category['title'];
    
?>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title><?=$category['title']?></title>
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/category_product.css">
</head>
<body>
    <div class="layout">
        <?php include "header.php"?>
        <div class="category__description"><?=$category['description']?></div>
        <div class="category__products">
            <?php foreach ($products as $product): ?>
            <div class="card">
                <a href="index.php?id=<?=$product['product_id']?>">
                    <div class="content__image"><img src="<?=$product['url']?>" alt="<?=$product['alt']?>"></div>
                    <div class="content__title"><?=$product['title']?></div>             
                </a>
            </div>
            <?php endforeach ?>
        </div>
        <div class="pages">
            <?php
            for ($i = 0; $i < $count_pages; $i++) {
                echo "<a href=\"index.php?cat_id=$id&count=$count_product&page=$i\"";
                if ($page == $i)
                    echo "class=\"pages__current\"";
                echo ">", $i+1, "</a>";
            }
            ?>
        </div>
        
    </div>
</body>