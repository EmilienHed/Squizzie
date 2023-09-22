<?php
// Inclure le fichier de connexion
require_once('dbConnect.php');

try {
    // Préparer et exécuter une requête SQL pour récupérer les données de la table culture_generale
    $query = "SELECT * FROM culture_generale";
    $stmt = $dbh->query($query);

    // Parcourir les résultats
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        // Traitez ici les données de chaque ligne, par exemple :
        $question = $row['question'];
        $reponse = $row['reponse'];


        echo "Question : $question<br>";
        echo "Réponse : $reponse<br>";
        echo "<hr>";
    }

    // Fermer la connexion
    $dbh = null;
} catch (PDOException $e) {
    // En cas d'erreur
    echo 'Erreur : ' . $e->getMessage();
}
?>
