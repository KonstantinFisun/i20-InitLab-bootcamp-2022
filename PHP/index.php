<?php
    // Создаем соединение
    $db = new PDO('mysql:host=localhost;dbname=clothing_store','root','12345');
    // Проверяем соединение
    if (!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    include 'category.php';
?>
<!--
    
    $db->exec("SET NAMES UTF-8");

    
?>
-->
