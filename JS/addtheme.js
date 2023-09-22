// script.js

document.addEventListener("DOMContentLoaded", function () {
    const questionsContainer = document.getElementById("questions");
    const addButton = document.getElementById("add-question");
    const removeButton = document.getElementById("remove-question");
    let questionCounter = 1;

    addButton.addEventListener("click", function () {
        questionCounter++;
        const newQuestionDiv = document.createElement("div");
        newQuestionDiv.classList.add("question");

        const newQuestionLabel = document.createElement("label");
        newQuestionLabel.textContent = `Question ${questionCounter} :`;
        newQuestionDiv.appendChild(newQuestionLabel);

        const newQuestionInput = document.createElement("input");
        newQuestionInput.type = "text";
        newQuestionInput.name = `question${questionCounter}`;
        newQuestionInput.required = true;
        newQuestionDiv.appendChild(newQuestionInput);

        questionsContainer.appendChild(newQuestionDiv);
    });

    removeButton.addEventListener("click", function () {
        const questions = questionsContainer.getElementsByClassName("question");
        if (questions.length > 1) {
            questionsContainer.removeChild(questions[questions.length - 1]);
            questionCounter--;
        }
    });
});
