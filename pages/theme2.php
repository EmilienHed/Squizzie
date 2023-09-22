<!DOCTYPE html>
<html>
<head>
    <title>Thème</title>
    <link rel="stylesheet" type="text/css" href="../css/theme1.css">
</head>
<body>
<h1>Thème Animaux</h1>

<!-- Inclure les données récupérées ici -->
<?php include('../controller/recoverAxQuiz.php'); ?>

<!-- Bloc PHP pour afficher les questions dans des cartes -->
<?php
foreach ($questions as $index => $questionData) {
    $questionNumber = $index;
    $question = $questionData['question'];
    $reponse = $questionData['reponse'];
    ?>
    <div class="quiz-card">
        <h2>Question <?php echo $questionNumber; ?> : <?php echo $question; ?></h2>
        <div class="answer-options">
            <button class="answer-button" onclick="checkAnswer('Vrai', <?php echo $questionNumber; ?>)">Vrai</button>
            <button class="answer-button" onclick="checkAnswer('Faux', <?php echo $questionNumber; ?>)">Faux</button>
        </div>
        <div class="answer-message" id="answer-message-<?php echo $questionNumber; ?>"></div>
    </div>
    <?php
}
?>

<div class="footer">
    <a href="theme.html">Retour à la page d'accueil</a>
</div>

<!-- Script JavaScript pour gérer les réponses -->
<script src="../JS/quiz2.js"></script>
</body>
</html>
