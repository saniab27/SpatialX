//
//  QuestionBank.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 2/23/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import Foundation

public class QuestionBank
{
    var list = [Question]()
    
    //Do this for all questions
    init(){
        list.append(Question(image: "Q1", questionText: "Which object is the same as the first object, just rotated differently?", choiceA: "A", choiceB: "B", choiceC: "C",
        choiceD: "D", Answer: 3))
        
        list.append(Question(image: "Q2", questionText: "Which object matches the first one, just folded and rotated differently?", choiceA: "A", choiceB: "B", choiceC: "C",
            choiceD: "D", Answer: 1))
        
        list.append(Question(image: "Q3", questionText: "Which of the solid shapes shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 4))
        list.append(Question(image: "Q4", questionText: "Which of the cubes shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 1))
        list.append(Question(image: "Q5", questionText: "Three views of the same cube are shown above. Which symbol is opposite the X? ", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 4))
        list.append(Question(image: "Q6", questionText: "How many blocks make up the figure above?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 4))
        list.append(Question(image: "Q7", questionText: "If the net was folded into a cube, which of the given cubes would it look like?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 4))
        list.append(Question(image: "Q8", questionText: "Which answer is the top view of the pyramid?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 3))
        list.append(Question(image: "Q9", questionText: "Which answer is a rotation of the first figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 2))
        list.append(Question(image: "Q10", questionText: "Which answer is a rotation of the first figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 3))
        list.append(Question(image: "Q11", questionText: "Which figure is identical to the first?", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 3))
        list.append(Question(image: "Q12", questionText: "Choose the correct cube", choiceA: "A", choiceB: "B", choiceC: "C",
                             choiceD: "D", Answer: 4))
        

    }
}
