//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Asya Güney on 8.07.2024.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
