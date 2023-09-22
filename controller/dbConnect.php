<?php
try {
    // Informations de connexion à la base de données
    $host = 'localhost'; // Remplacez par l'adresse de votre serveur MySQL
    $dbname = 'votre_base_de_donnees'; // Remplacez par le nom de votre base de données
    $username = 'votre_utilisateur'; // Remplacez par votre nom d'utilisateur MySQL
    $password = 'votre_mot_de_passe'; // Remplacez par votre mot de passe MySQL

    // Création d'une instance de la classe PDO pour la connexion
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);

    // Configuration supplémentaire si nécessaire
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // En cas d'erreur de connexion
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
}
?>
