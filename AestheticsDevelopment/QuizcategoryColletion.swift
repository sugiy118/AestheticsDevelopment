//
//  QuizcategoryColletion.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/21.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizcategoryCollection: NSObject {
    
    static let sharedInstance = QuizcategoryCollection()
    var quizzes: [Quiz] = []

    func fetchQuizcategories(callback: () -> Void) {
        let query = NCMBQuery(className: "Quiz")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.quizzes = []
                for object in objects {
                    let quizCategory = object.objectForKey("quizCategory") as! String
                    print(quizCategory)
                    let quizcategory = Quiz()
                    quizcategory.getCagetory(quizCategory)
                    self.quizzes.append(quizcategory)
                    callback()
                    }
                }
            }
        }
    
    }
    

    

