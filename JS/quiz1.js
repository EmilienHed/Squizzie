// Fonction pour vérifier la réponse et afficher un message
function checkAnswer(isTrue) {
    var questionNumber = getCurrentQuestionNumber();
    var messageElement = document.getElementById("answer-message-" + questionNumber);

    if (isTrue) {
        messageElement.textContent = "Bonne réponse !";
    } else {
        messageElement.textContent = "Mauvaise réponse !";
    }
}

// Fonction pour obtenir le numéro de la question actuelle
function getCurrentQuestionNumber() {
    // Vous pouvez personnaliser cette fonction en fonction de votre logique
    // pour suivre la question actuelle.
    // Par exemple, vous pouvez avoir une variable JavaScript qui garde
    // le numéro de la question actuelle.
    return 1; // Remplacez ceci par la logique appropriée.
}
