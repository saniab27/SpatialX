//
//  PracticeQuestion.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 2/28/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import Foundation

public class AllQ
{
    let questionImage: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    var label: Int
    
    init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String,
         Answer: Int, Tag: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = Answer
        label = Tag
    }
    
    
}


