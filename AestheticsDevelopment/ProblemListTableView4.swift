//
//  ProblemListTableView4.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/08/02.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemListTableView4: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    let questionManager = QuestionManager.sharedInstance
    let answerManager = AnswerManager.sharedInstance
    
    var quiz = Quiz()
    
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
    
    //セル数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 1
        }
    }
    
    //セルの内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProblemTopTableViewCell", forIndexPath: indexPath) as! ProblemTopTableViewCell
            
            cell.quizName.text = questionManager.question.sentence4
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProblemTableViewCell", forIndexPath: indexPath) as! ProblemTableViewCell
            
            //            let quizanswer = quizCollection.quizanswers[indexPath.row]
            
            cell.answer1Label.text = answerManager.answer.answer1_question4
            cell.answer2Label.text = answerManager.answer.answer2_question4
            cell.answer3Label.text = answerManager.answer.answer3_question4
            cell.answer4Label.text = answerManager.answer.answer4_question4
            
            return cell
        }
    }
    
    //セルの高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 340
        }
    }
}