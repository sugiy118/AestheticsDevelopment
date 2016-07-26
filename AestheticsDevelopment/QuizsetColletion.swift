//
//  QuestionsColletion.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/21.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizsetCollection: NSObject {
    static let sharedInstance = QuizsetCollection()
    var quizsets: [Quizset] = []
    
    func fetchQuizsets(callback: () -> Void) {
        let query = NCMBQuery(className: "Quiz")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.quizsets = []
                for object in objects {
                    //let x = object.objectForKey("categoryNumber") as! Int
                    let quizCategory = object.objectForKey("quizCategory") as! String
                    print(quizCategory)
                    let quizset = Quizset(text: quizCategory)
                    self.quizsets.append(quizset)
                    callback()
                    }
                }
            }
        }
    }
    
