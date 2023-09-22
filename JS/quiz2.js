// Fonction pour vérifier la réponse de l'utilisateur
function checkAnswer(userAnswer, questionNumber) {
    // Récupérer la réponse correcte de la base de données en utilisant AJAX
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = xhr.responseText;
            var correctAnswer = response.trim();

            // Sélectionner l'élément d'affichage du message de réponse
            var answerMessage = document.getElementById("answer-message-" + questionNumber);

            // Comparer la réponse de l'utilisateur à la réponse correcte
            if (userAnswer === correctAnswer) {
                answerMessage.textContent = "Bonne réponse !";
                answerMessage.style.color = "green";
            } else {
                answerMessage.textContent = "Mauvaise réponse. La réponse correcte est : " + correctAnswer;
                answerMessage.style.color = "red";
            }
        }
    };

    xhr.open("GET", "../controller/getCorrectAnswerForCG.php?questionNumber=" + questionNumber, true);
    xhr.send();
}
