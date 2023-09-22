<?php
    $dsn = 'mysql:host=localhost:8889;dbname=squizzie';
    $user = 'root';
    $password = 'root';
    $options = array(
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    );
    try {
        $dbh = new PDO($dsn, $user, $password, $options);
    } catch (PDOException $e) {
        echo 'Connexion échouée : ' . $e->getMessage();
    }
?>
