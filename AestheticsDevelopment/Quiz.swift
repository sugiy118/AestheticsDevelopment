//
//  Quiz.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//
import UIKit

class Quiz: NSObject {
    
    static let sharedInstance = Quiz()

    var quizquestions:[String] = []
    var quizanswers:[[String]] = []
    
    
    var categoryNumber: Int = 0
    var quizcategory: String = ""
    var question: String = ""
    var answer1: String = ""
    var answer2: String = ""
    var answer3: String = ""
    var answer4: String = ""
    
    
    func getCagetory(text: String) {
        self.quizcategory = text
    }

    func fetchQuizquestion(quiz :Quiz, callback:() -> Void) {
        let query = NCMBQuery(className: "Question")
        query.whereKey("categoryNumber", equalTo: quiz.categoryNumber)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                
                self.quizquestions = []
                for object in objects {
                    for i in 1...5 {
                        var question = object.objectForKey("question_quiz\(i)") as! String
    //
    //                  let question2 = object.objectForKey("question_quiz2") as! String
    //                  let question3 = object.objectForKey("question_quiz3") as! String
    //                  let question4 = object.objectForKey("question_quiz4") as! String
    //                  let question5 = object.objectForKey("question_quiz5") as! String

                        self.quizquestions.append(question)
                    }
                }
                print(self.quizquestions)
                callback()
            }
        }
    }
    
    
    
    func fetchQuizanswers(quiz :Quiz ,callback:() -> Void) {
        let query = NCMBQuery(className: "Answer")
        query.whereKey("categoryNumber", equalTo: quiz.categoryNumber)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                
                self.quizanswers = []
                for object in objects {
                    for i in 1...5 {
                        self.quizanswers.append([String]())
                        for j in 1...4 {
                            let answers = object.objectForKey("answer\(j)_quiz\(i)") as! String
                            self.quizanswers[i - 1].append(answers)
                        }
                    }
                }
                print(self.quizanswers)
                callback()
            }
        }
    }
    
//    
//    
//    func fetchQuizanswer(quiz :Quiz ,callback:() -> Void) {
//        let query = NCMBQuery(className: "Answer")
//        query.whereKey("categoryNumber", equalTo: quiz.categoryNumber)
//        query.findObjectsInBackgroundWithBlock { (objects, error) in
//            
//            if error == nil {
//                
//                self.quizanswers = []
//                print(objects)
//                for object in objects {
//                    let answer1 = object.objectForKey("answer1_quiz1") as! String
//                    let answer2 = object.objectForKey("answer2_quiz1") as! String
//                    let answer3 = object.objectForKey("answer3_quiz1") as! String
//                    let answer4 = object.objectForKey("answer4_quiz1") as! String
//                    
//                    print(answer1)
//                    print(answer2)
//                    print(answer3)
//                    print(answer4)
//                    let quiz = Quiz()
//                    quiz.makeQuizanswers(answer1, answer2: answer2, answer3: answer3, answer4: answer4)
//                    self.quizanswers.append(quiz)
//                    callback()
//                    
//                }
//            }
//        }
//    }
}