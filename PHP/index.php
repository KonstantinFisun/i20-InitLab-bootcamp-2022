<?php
    // Создаем соединение
    $db = new PDO('mysql:host=localhost;dbname=clothing_store','root','12345');
    // Проверяем соединение
    if (!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }
    if (!empty($_GET)) {
        if (isset($_GET['cat_id']))
            include 'category_product.php';
        elseif (isset($_GET['id']))
            include 'product.php';
        else {
            include("Location: 404.php");
        }
    }
    else{
        include 'category.php';
    }
    
?>
