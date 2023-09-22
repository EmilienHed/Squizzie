<?php
try {
    $host = 'localhost';
    $dbname = 'squizzie';
    $username = 'root';
    $password = 'root';

    // Création d'une instance de la classe PDO pour la connexion
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);

    // Configuration supplémentaire si nécessaire
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // En cas d'erreur de connexion
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
}
?>
