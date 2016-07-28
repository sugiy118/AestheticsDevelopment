//
//  Quizset.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/27.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizCollection: NSObject {
    
    var quiz1:[Quiz] = []

    
    func fetchQuizCollection1() {
        let query = NCMBQuery(className: "Quiz")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.quiz1 = []
                for object in objects {
                    let question = object.objectForKey("question1") as! String
                    let answer1 = object.objectForKey("answer1_1") as! String
                    let answer2 = object.objectForKey("answer2_1") as! String
                    let answer3 = object.objectForKey("answer3_1") as! String
                    let answer4 = object.objectForKey("answer4_1") as! String
                    
                    print(question)
                    
                    let quizcollection1 = Quiz()
                    quizcollection1.question = question
                    quizcollection1.answer1 = answer1
                    quizcollection1.answer2 = answer2
                    quizcollection1.answer3 = answer3
                    quizcollection1.answer4 = answer4
                    
                    self.quiz1.append(quizcollection1)
                }
            }
        }
    }
    


    }



    //
    //func fetchQuizzes(callback: () -> Void) {
    //    let query = NCMBQuery(className: "Quiz")
    //    query.findObjectsInBackgroundWithBlock { (objects, error) in
    //        if error == nil {
    //            self.quiz1 = []
    //            for object in objects {
    //                let question1 = object.objectForKey("question1") as! String
    //                let answer1 = object.objectForKey("answer1") as! String
    //                let answer2 = object.objectForKey("answer2") as! String
    //                let answer3 = object.objectForKey("answer3") as! String
    //                let answer4 = object.objectForKey("answer4") as! String
    //
    //                print(question1)
    //                //追加する必要がある？
    //                let quizzes = Quizzes(question1: question1, answer1: answer1, answer2: answer2, answer3: answer3, answer4: answer4)
    //                //下記は本当に必要？
    //                self.quizzes.append(quizzes)
    //                callback()
    //            }
    //        }
    //    }



