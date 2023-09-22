// Tableau pour stocker les réponses à chaque question
var answers = [
    "Réponse à la question 1",
    "Réponse à la question 2",
    "Réponse à la question 3",
    // Ajoutez les réponses pour chaque question ici
];

// Fonction pour vérifier la réponse et afficher un message
function checkAnswer(isTrue, questionNumber) {
    var messageElement = document.getElementById("answer-message-" + questionNumber);
    var answerIndex = questionNumber - 1; // L'index dans le tableau commence à 0

    if (isTrue) {
        messageElement.textContent = "Bonne réponse ! La réponse est : " + answers[answerIndex];
        messageElement.style.color = "green"; // Changez la couleur du texte en vert (ou votre choix)
    } else {
        messageElement.textContent = "Mauvaise réponse ! La réponse est : " + answers[answerIndex];
        messageElement.style.color = "red"; // Changez la couleur du texte en rouge (ou votre choix)
    }
}
