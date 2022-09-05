//
//  Practice.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 2/28/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import Foundation

class practiceQuestion
{
    
    class Question
    {
        let questionImage: String
        let question: String
        let optionA: String
        let optionB: String
        let optionC: String
        let optionD: String
        let correctAnswer: Int
        
        init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String,
             Answer: Int){
            questionImage = image
            question = questionText
            optionA = choiceA
            optionB = choiceB
            optionC = choiceC
            optionD = choiceD
            correctAnswer = Answer
        }
    }
}
