//
//  QuizColletion.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/21.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizCollection: NSObject {
    
    static let sharedInstance = QuizCollection()
    var quizcategories: [Quiz] = []

    func fetchQuizcategories(callback: () -> Void) {
        let query = NCMBQuery(className: "QuizCategory")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.quizcategories = []
                for object in objects {
                    let quizCategory = object.objectForKey("quizCategory") as! String
                    print(quizCategory)
                    let quizcategory = Quiz()
                    quizcategory.getCagetory(quizCategory)
                    self.quizcategories.append(quizcategory)
                    callback()
                }
            }
        }
    }
    
   


}
