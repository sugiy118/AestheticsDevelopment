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
    
    var questions:[String] = []
    var quizManager = QuizManager.sharedInstance

    func fetchQuizquestion(quiz :Quiz, callback:() -> Void) {
        let query = NCMBQuery(className: "Question")
        query.whereKey("quizNumber", equalTo: quizManager.quizzes) //quizzesではなく、quiznumber
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.questions = []
                for object in objects {
                    for i in 1...5 {
                        let question = object.objectForKey("question_quiz\(i)") as! String
                        self.questions.append(question)
                    }
                }
                callback()
            }
        }
    }
    
}
