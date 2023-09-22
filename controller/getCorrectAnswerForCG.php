<?php
// Inclure le fichier de connexion
require_once('dbConnect.php');

// Récupérer l'identifiant de la question depuis la requête GET
$questionNumber = $_GET['questionNumber'];

try {
    // Préparer et exécuter une requête SQL pour récupérer la réponse correcte
    $query = "SELECT reponse FROM culture_generale WHERE id_question = :questionNumber";
    $stmt = $dbh->prepare($query);
    $stmt->bindParam(':questionNumber', $questionNumber, PDO::PARAM_INT);
    $stmt->execute();

    // Récupérer la réponse correcte
    $correctAnswer = $stmt->fetch(PDO::FETCH_ASSOC)['reponse'];

    // Fermer la connexion
    $dbh = null;

    // Renvoyer la réponse correcte
    echo $correctAnswer;
} catch (PDOException $e) {
    // En cas d'erreur
    echo 'Erreur : ' . $e->getMessage();
}
?>
