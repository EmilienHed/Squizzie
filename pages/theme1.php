<!DOCTYPE html>
<html>
<head>
    <title>Thème</title>
    <link rel="stylesheet" type="text/css" href="../css/theme1.css">
</head>
<body>
<h1>Thème Culture Générale</h1>

<!-- Inclure les données récupérées ici -->
<?php include('../controller/recoverCGquiz.php'); ?>

<!-- Bloc PHP pour afficher les questions dans des cartes -->
<?php
foreach ($questions as $index => $questionData) {
    $questionNumber = $index + 1;
    $question = $questionData['question'];
    $reponse = $questionData['reponse'];
    ?>
    <div class="quiz-card">
        <h2>Question <?php echo $questionNumber; ?> : <?php echo $question; ?></h2>
        <div class="answer-options">
        <button class="answer-button" onclick="checkAnswer(true, 1)">Vrai</button>
        <button class="answer-button" onclick="checkAnswer(false, 1)">Faux</button>
        </div>
        <div class="answer-message" id="answer-message-<?php echo $questionNumber; ?>"></div>
    </div>
    <?php
}
?>

<!-- Script JavaScript pour gérer les réponses -->
<script src="../JS/quiz1.js"></script>
</body>
</html>
