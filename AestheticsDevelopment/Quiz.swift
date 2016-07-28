//
//  Quiz.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//
import UIKit

class Quiz: NSObject {

    var quizcategory: String = ""
    var question: String = ""
    var answer1: String = ""
    var answer2: String = ""
    var answer3: String = ""
    var answer4: String = ""
    

    func getCagetory(text: String) {
        self.quizcategory = text
    }
    
    func makeQuizset(question: String, answer1: String, answer2: String, answer3: String, answer4: String) {
        self.question = question
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
    }

}

