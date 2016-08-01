//
//  QuestionManager.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/08/01.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuestionManager: NSObject {
    
    static let sharedInstance = QuestionManager()
    var question = Question()

    func fetchQuizquestion(quiz :Quiz, callback:() -> Void) {
        let query = NCMBQuery(className: "Question")
        query.whereKey("quizNumber", equalTo: quiz.quiznumber)
        print("\(quiz.quiznumber)ここまで来てるか！？")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {

                for object in objects {
//                    for i in 1...5 {
//                        let sentence = object.objectForKey("sentence\(i)") as! String
//                        let question = Question()
//                        question.sentence = sentence
//                        self.questions.append(question)
//                    }
                let sentence1 = object.objectForKey("sentence1") as! String
                let sentence2 = object.objectForKey("sentence1") as! String
                let sentence3 = object.objectForKey("sentence3") as! String
                let sentence4 = object.objectForKey("sentence4") as! String
                let sentence5 = object.objectForKey("sentence5") as! String

                let question = Question()

                question.sentence1 = sentence1
                question.sentence2 = sentence2
                question.sentence3 = sentence3
                question.sentence4 = sentence4
                question.sentence5 = sentence5
                
                self.question = question
                    
                }
                print("======================")
                print(self.question.sentence1)
                print("?????????????????????")
                callback()
            }
        }
//        print("\(self.questions.count)???????????????????")
//        print("\(self.questions[1])あああああ")
    }
    
}
