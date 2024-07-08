//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Asya Güney on 8.07.2024.
//

import Foundation

struct QuizBrain {
    let questions = [
        Question(text: "Penguins can fly", answer: "False"),
        Question(text: "Fish cannot blink", answer: "True"),
        Question(text: "Venus is the hottest planet in the solar system", answer: "True"),
        Question(text: "Thomas Edison discovered gravity", answer: "False"),
        Question(text: "Monaco is the smallest country in the world", answer: "False"),
        Question(text: "Alliumphobia is a fear of garlic", answer: "True"),
        Question(text: "The Caesar salad was invented in France", answer: "False")
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == questions[questionNumber].answer {
            return true
        } else {
           return false
        }
    }
    
    func getQuestionText() -> String {
        var text = questions[questionNumber].text
        return text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1)/Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber < questions.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
