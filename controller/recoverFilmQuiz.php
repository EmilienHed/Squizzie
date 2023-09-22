<?php
// Inclure le fichier de connexion
require_once('dbConnect.php');

// Initialiser un tableau pour stocker les questions et réponses
$questions = array();

try {
    // Préparer et exécuter une requête SQL pour récupérer les données de la table culture_generale
    $query = "SELECT * FROM film";
    $stmt = $dbh->query($query);

    // Parcourir les résultats et ajouter chaque question et réponse au tableau
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $id_question = $row['id_question'];
        $question = $row['question'];
        $reponse = $row['reponse'];

        // Ajouter la question et la réponse au tableau
        $questions[$id_question] = array(
            'question' => $question,
            'reponse' => $reponse
        );
    }

    // Fermer la connexion
    $dbh = null;
} catch (PDOException $e) {
    // En cas d'erreur
    echo 'Erreur : ' . $e->getMessage();
}
?>
