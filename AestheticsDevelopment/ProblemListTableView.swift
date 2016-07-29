//
//  ProblemListTableView.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/28.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemListTableView: UITableView, UITableViewDelegate, UITableViewDataSource {

    var quizSet = QuizSet()
    
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        self.registerNib(UINib(nibName: "ProblemTopTableViewCell", bundle: nil), forCellReuseIdentifier: "ProblemTopTableViewCell")
        self.registerNib(UINib(nibName: "ProblemTableViewCell", bundle: nil), forCellReuseIdentifier: "ProblemTableViewCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProblemTopTableViewCell", forIndexPath: indexPath) as! ProblemTopTableViewCell
            let quizquestion = quizSet.quizquestions[indexPath.row]
            cell.quizName.text = quizquestion.question
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProblemTableViewCell", forIndexPath: indexPath) as! ProblemTableViewCell
            let quizanswer = quizSet.quizanswers[indexPath.row]
            cell.answer1Label.text = quizanswer.answer1
            cell.answer2Label.text = quizanswer.answer2
            cell.answer3Label.text = quizanswer.answer3
            cell.answer4Label.text = quizanswer.answer4
            return cell
        }
    }
}
