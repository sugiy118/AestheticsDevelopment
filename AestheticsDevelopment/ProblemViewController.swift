//
//  ProblemViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/26.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemViewController: UIViewController{
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var problemScrollView: UIScrollView!
    @IBAction func tapNextBtn(sender: UIButton) {
        if page_count <= 4{
            self.problemScrollView.setContentOffset(CGPointMake(self.view.frame.width * CGFloat(page_count), 0), animated: true)
            page_count += 1
        }
//        if page_count == 5 {
//            self.resultViewSegue
//        }
    }
    
    var page_count = 1
    
    var quiz = Quiz()
    var questionManager = QuestionManager.sharedInstance
    var answerManager = AnswerManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self.quiz.quiznumber)データを受け渡せました")
        
        self.problemScrollView.contentSize = CGSizeMake(self.view.frame.width * 5, self.problemScrollView.frame.height)
        self.problemScrollView.pagingEnabled = true

        
        let hogehoge = setProblemListTableView(0)
        questionManager.fetchQuizquestion1(quiz) {
            hogehoge.reloadData()
                    }
        answerManager.fetchQuizanswers1(quiz) {
            hogehoge.reloadData()
        }
        
        let hogehoge2 = setProblemListTableView2(self.view.frame.width)
        questionManager.fetchQuizquestion2(quiz) {
            hogehoge2.reloadData()
        }
        answerManager.fetchQuizanswers2(quiz) {
            hogehoge2.reloadData()
        }

        let hogehoge3 = setProblemListTableView3(self.view.frame.width * 2)
        questionManager.fetchQuizquestion3(quiz) {
            hogehoge3.reloadData()
        }
        answerManager.fetchQuizanswers3(quiz) { 
            hogehoge3.reloadData()
        }

        let hogehoge4 = setProblemListTableView4(self.view.frame.width * 3)
        questionManager.fetchQuizquestion4(quiz) {
            hogehoge4.reloadData()
        }
        answerManager.fetchQuizanswers4(quiz) { 
            hogehoge4.reloadData()
        }
        
        let hogehoge5 = setProblemListTableView5(self.view.frame.width * 4)
        questionManager.fetchQuizquestion5(quiz) {
            hogehoge5.reloadData()
        }
        answerManager.fetchQuizanswers5(quiz) { 
            hogehoge5.reloadData()
        }
        
    }
    
    
        
        
        func setProblemListTableView(x: CGFloat) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
            let problemListTableView = ProblemListTableView(frame: frame, style: UITableViewStyle.Plain)
            self.problemScrollView.addSubview(problemListTableView)
            return problemListTableView
        }
    
        func setProblemListTableView2(x: CGFloat) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
            let problemListTableView = ProblemListTableView2(frame: frame, style: UITableViewStyle.Plain)
            self.problemScrollView.addSubview(problemListTableView)
            return problemListTableView
        }
    
        func setProblemListTableView3(x: CGFloat) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
            let problemListTableView = ProblemListTableView3(frame: frame, style: UITableViewStyle.Plain)
            self.problemScrollView.addSubview(problemListTableView)
            return problemListTableView
        }
    
        func setProblemListTableView4(x: CGFloat) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
            let problemListTableView = ProblemListTableView4(frame: frame, style: UITableViewStyle.Plain)
            self.problemScrollView.addSubview(problemListTableView)
            return problemListTableView
        }
    
        func setProblemListTableView5(x: CGFloat) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
            let problemListTableView = ProblemListTableView5(frame: frame, style: UITableViewStyle.Plain)
            self.problemScrollView.addSubview(problemListTableView)
            return problemListTableView
        }
    
    
//    func resultViewSegue(){
//        self.performSegueWithIdentifier(ResultViewController, sender: self)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
