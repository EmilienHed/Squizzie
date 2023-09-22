<?php
require('dbConnect.php');

try {
    // Requête SQL pour récupérer toutes les données de la table culture_generale
    $query = "SELECT * FROM culture_generale";

    // Exécution de la requête
    $stmt = $pdo->query($query);

    // Boucle pour parcourir les résultats
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        // Utilisez $row pour accéder aux données de chaque ligne
        echo "Question : " . $row['question'] . "<br>";
        echo "Réponse : " . $row['reponse'] . "<br>";
        echo "<br>";
    }
} catch (PDOException $e) {
    // En cas d'erreur
    echo "Erreur : " . $e->getMessage();
}



?>