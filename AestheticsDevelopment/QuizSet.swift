//
//  Quizset.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/27.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizSet: NSObject {
    
    var quizanswers:[Quiz] = []
    var quizquestions:[Quiz] = []

    
//    func fetchQuizanswers(callback:() -> Void) {
//        let query = NCMBQuery(className: "Quiz")
//        query.findObjectsInBackgroundWithBlock { (objects, error) in
//            if error == nil {
//                self.quizanswers = []
//                for object in objects {
//                    let answer1 = object.objectForKey("answer1_1") as! String
//                    let answer2 = object.objectForKey("answer2_1") as! String
//                    let answer3 = object.objectForKey("answer3_1") as! String
//                    let answer4 = object.objectForKey("answer4_1") as! String
//                    
//                    print(answer1)
//                    
//                    let quizanswer1 = Quiz()
//                    quizanswer1.makeQuizanswers(answer1, answer2: answer2, answer3: answer3, answer4: answer4)
//                    self.quizanswers.append(quizanswer1)
//                    callback()
//                }
//            }
//        }
//    }
//
//    func fetchQuizquestion(callback:() -> Void) {
//        let query = NCMBQuery(className: "Quiz")
//        query.findObjectsInBackgroundWithBlock { (objects, error) in
//            if error == nil {
//                self.quizquestions = []
//                for object in objects {
//                    let question = object.objectForKey("question1") as! String
//                    print(question)
//                    let quizquestion1 = Quiz()
//                    quizquestion1.makeQuizquestion(question)
//                    self.quizquestions.append(quizquestion1)
//                    callback()
//                }
//            }
//        }
//    }



    }



    
//    func fetchQuizzes(callback: () -> Void) {
//        let query = NCMBQuery(className: "Quiz")
//        query.findObjectsInBackgroundWithBlock { (objects, error) in
//            if error == nil {
//                self.quiz1 = []
//                for object in objects {
//                    let question1 = object.objectForKey("question1") as! String
//                    let answer1 = object.objectForKey("answer1") as! String
//                    let answer2 = object.objectForKey("answer2") as! String
//                    let answer3 = object.objectForKey("answer3") as! String
//                    let answer4 = object.objectForKey("answer4") as! String
//    
//                    print(question1)
//                    //追加する必要がある？
//                    let quizzes = Quizzes(question1: question1, answer1: answer1, answer2: answer2, answer3: answer3, answer4: answer4)
//                    //下記は本当に必要？
//                    self.quizzes.append(quizzes)
//                    callback()
//                }
//            }
//        }



