//
//  AnswerManager.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/08/01.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class AnswerManager: NSObject {
    
    static let sharedInstance = AnswerManager()

//    var answers:[[String]] = []
    var answer = Answer()
    
        func fetchQuizanswers1(quiz :Quiz ,callback:() -> Void) {
            let query = NCMBQuery(className: "Answer")
            query.whereKey("quizNumber", equalTo: quiz.quiznumber)
            query.findObjectsInBackgroundWithBlock { (objects, error) in
                if error == nil {
    
    //                self.answers = []
                    for object in objects {
    //                    for i in 1...5 {
    //                        self.answers.append([String]())
    //                        for j in 1...4 {
    //                            let answers = object.objectForKey("answer\(j)_quiz\(i)") as! String
    //                            self.answers[i - 1].append(answers)
    
                        let answer1_question1 = object.objectForKey("answer1_question1") as! String
                        let answer2_question1 = object.objectForKey("answer2_question1") as! String
                        let answer3_question1 = object.objectForKey("answer3_question1") as! String
                        let answer4_question1 = object.objectForKey("answer4_question1") as! String
    
                        let answer = Answer()
    
                        answer.answer1_question1 = answer1_question1
                        answer.answer2_question1 = answer2_question1
                        answer.answer3_question1 = answer3_question1
                        answer.answer4_question1 = answer4_question1
    
                        self.answer = answer
    
                    }
                    callback()
                }
            }
        }
    
        func fetchQuizanswers2(quiz :Quiz ,callback:() -> Void) {
            let query = NCMBQuery(className: "Answer")
            query.whereKey("quizNumber", equalTo: quiz.quiznumber)
            print("\(quiz.quiznumber)こちらには来てるか！？")
            query.findObjectsInBackgroundWithBlock { (objects, error) in
                if error == nil {
    
                    for object in objects {
    
                        let answer1_question2 = object.objectForKey("answer1_question2") as! String
                        let answer2_question2 = object.objectForKey("answer2_question2") as! String
                        let answer3_question2 = object.objectForKey("answer3_question2") as! String
                        let answer4_question2 = object.objectForKey("answer4_question2") as! String
    
                        let answer = Answer()
    
                        answer.answer1_question2 = answer1_question2
                        answer.answer2_question2 = answer2_question2
                        answer.answer3_question2 = answer3_question2
                        answer.answer4_question2 = answer4_question2
    
                        self.answer = answer
    
                    }
                    print("おおおおおおおおおお")
                    print(self.answer.answer1_question2)
                    print("################################")
                    callback()
                }
            }
        }
    
        func fetchQuizanswers3(quiz :Quiz ,callback:() -> Void) {
            let query = NCMBQuery(className: "Answer")
            query.whereKey("quizNumber", equalTo: quiz.quiznumber)
            print("\(quiz.quiznumber)こちらには来てるか！？")
            query.findObjectsInBackgroundWithBlock { (objects, error) in
                if error == nil {
    
                    //                self.answers = []
                    for object in objects {
                        //                    for i in 1...5 {
                        //                        self.answers.append([String]())
                        //                        for j in 1...4 {
                        //                            let answers = object.objectForKey("answer\(j)_quiz\(i)") as! String
                        //                            self.answers[i - 1].append(answers)
    
                        let answer1_question3 = object.objectForKey("answer1_question3") as! String
                        let answer2_question3 = object.objectForKey("answer2_question3") as! String
                        let answer3_question3 = object.objectForKey("answer3_question3") as! String
                        let answer4_question3 = object.objectForKey("answer4_question3") as! String
    
                        let answer = Answer()
    
                        answer.answer1_question3 = answer1_question3
                        answer.answer2_question3 = answer2_question3
                        answer.answer3_question3 = answer3_question3
                        answer.answer4_question3 = answer4_question3
    
                        self.answer = answer
    
                    }
                    print("おおおおおおおおおお")
                    print(self.answer.answer1_question3)
                    print("################################")
                    callback()
                }
            }
        }
    
        func fetchQuizanswers4(quiz :Quiz ,callback:() -> Void) {
            let query = NCMBQuery(className: "Answer")
            query.whereKey("quizNumber", equalTo: quiz.quiznumber)
            print("\(quiz.quiznumber)こちらには来てるか！？")
            query.findObjectsInBackgroundWithBlock { (objects, error) in
                if error == nil {
    
                    for object in objects {
    
                        let answer1_question4 = object.objectForKey("answer1_question4") as! String
                        let answer2_question4 = object.objectForKey("answer2_question4") as! String
                        let answer3_question4 = object.objectForKey("answer3_question4") as! String
                        let answer4_question4 = object.objectForKey("answer4_question4") as! String
    
                        let answer = Answer()
    
                        answer.answer1_question4 = answer1_question4
                        answer.answer2_question4 = answer2_question4
                        answer.answer3_question4 = answer3_question4
                        answer.answer4_question4 = answer4_question4
    
                        self.answer = answer
    
                    }
                    print("おおおおおおおおおお")
                    print(self.answer.answer1_question4)
                    print("################################")
                    callback()
                }
            }
        }
    
        func fetchQuizanswers5(quiz :Quiz ,callback:() -> Void) {
            let query = NCMBQuery(className: "Answer")
            query.whereKey("quizNumber", equalTo: quiz.quiznumber)
            print("\(quiz.quiznumber)こちらには来てるか！？")
            query.findObjectsInBackgroundWithBlock { (objects, error) in
                if error == nil {
    
                    //                self.answers = []
                    for object in objects {
    
                        let answer1_question5 = object.objectForKey("answer1_question5") as! String
                        let answer2_question5 = object.objectForKey("answer2_question5") as! String
                        let answer3_question5 = object.objectForKey("answer3_question5") as! String
                        let answer4_question5 = object.objectForKey("answer4_question5") as! String
    
                        let answer = Answer()
    
                        answer.answer1_question5 = answer1_question5
                        answer.answer2_question5 = answer2_question5
                        answer.answer3_question5 = answer3_question5
                        answer.answer4_question5 = answer4_question5
                        
                        self.answer = answer
                        
                    }
                    print("おおおおおおおおおお")
                    print(self.answer.answer1_question5)
                    print("################################")
                    callback()
                }
            }
        }
    
    
    }


//    func fetchQuizanswers(quiz :Quiz ,callback:() -> Void) {
//        let query = NCMBQuery(className: "Answer")
//        query.whereKey("quizNumber", equalTo: quiz.quiznumber)
//        print("\(quiz.quiznumber)こちらには来てるか！？")
//        query.findObjectsInBackgroundWithBlock { (objects, error) in
//            if error == nil {
//                for object in objects {
//
//                    let answer1_question1 = object.objectForKey("answer1_question1") as! String
//                    let answer2_question1 = object.objectForKey("answer2_question1") as! String
//                    let answer3_question1 = object.objectForKey("answer3_question1") as! String
//                    let answer4_question1 = object.objectForKey("answer4_question1") as! String
//
//                    let answer1_question2 = object.objectForKey("answer1_question2") as! String
//                    let answer2_question2 = object.objectForKey("answer2_question2") as! String
//                    let answer3_question2 = object.objectForKey("answer3_question2") as! String
//                    let answer4_question2 = object.objectForKey("answer4_question2") as! String
//
//                    let answer1_question3 = object.objectForKey("answer1_question3") as! String
//                    let answer2_question3 = object.objectForKey("answer2_question3") as! String
//                    let answer3_question3 = object.objectForKey("answer3_question3") as! String
//                    let answer4_question3 = object.objectForKey("answer4_question3") as! String
//
//                    let answer1_question4 = object.objectForKey("answer1_question4") as! String
//                    let answer2_question4 = object.objectForKey("answer2_question4") as! String
//                    let answer3_question4 = object.objectForKey("answer3_question4") as! String
//                    let answer4_question4 = object.objectForKey("answer4_question4") as! String
//
//                    let answer1_question5 = object.objectForKey("answer1_question5") as! String
//                    let answer2_question5 = object.objectForKey("answer2_question5") as! String
//                    let answer3_question5 = object.objectForKey("answer3_question5") as! String
//                    let answer4_question5 = object.objectForKey("answer4_question5") as! String
//
//                    let answer = Answer()
//
//                    answer.answer1_question1 = answer1_question1
//                    answer.answer2_question1 = answer2_question1
//                    answer.answer3_question1 = answer3_question1
//                    answer.answer4_question1 = answer4_question1
//
//                    answer.answer1_question2 = answer1_question2
//                    answer.answer2_question2 = answer2_question2
//                    answer.answer3_question2 = answer3_question2
//                    answer.answer4_question2 = answer4_question2
//
//                    answer.answer1_question3 = answer1_question3
//                    answer.answer2_question3 = answer2_question3
//                    answer.answer3_question3 = answer3_question3
//                    answer.answer4_question3 = answer4_question3
//
//                    answer.answer1_question4 = answer1_question4
//                    answer.answer2_question4 = answer2_question4
//                    answer.answer3_question4 = answer3_question4
//                    answer.answer4_question4 = answer4_question4
//
//                    answer.answer1_question5 = answer1_question5
//                    answer.answer2_question5 = answer2_question5
//                    answer.answer3_question5 = answer3_question5
//                    answer.answer4_question5 = answer4_question5
//
//                    self.answer = answer
//
//                }
//                print("おおおおおおおおおお")
//                print(self.answer.answer1_question1)
//                print("################################")
//                callback()
//            }
//        }
//    }
//}


//                    for i in 1...5 {
//                        self.answers.append([String]())
//                        for j in 1...4 {
//                            let answers = object.objectForKey("answer\(j)_quiz\(i)") as! String
//                            self.answers[i - 1].append(answers)
