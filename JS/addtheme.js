// script.js

document.addEventListener("DOMContentLoaded", function () {
    const numQuestionsInput = document.getElementById("numQuestions");
    const questionsContainer = document.getElementById("questions");

    numQuestionsInput.addEventListener("input", function () {
        const numQuestions = parseInt(numQuestionsInput.value);
        questionsContainer.innerHTML = ""; // Efface les questions précédentes

        for (let i = 1; i <= numQuestions; i++) {
            // ... Le reste du code JavaScript pour ajouter dynamiquement les champs de question
        }
    });
});
