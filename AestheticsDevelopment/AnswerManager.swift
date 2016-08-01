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

    var answers:[[String]] = []
    
    func fetchQuizanswers(quiz :Quiz ,callback:() -> Void) {
        let query = NCMBQuery(className: "Answer")
        query.whereKey("quizNumber", equalTo: quiz.quiznumber)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                
                self.answers = []
                for object in objects {
                    for i in 1...5 {
                        self.answers.append([String]())
                        for j in 1...4 {
                            let answers = object.objectForKey("answer\(j)_quiz\(i)") as! String
                            self.answers[i - 1].append(answers)
                        }
                    }
                }
                callback()
            }
        }
    }
}
