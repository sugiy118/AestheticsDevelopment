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
    
//
//    let quizCollection = QuizCollection.sharedInstance

//    var quiz = Quiz()
    var quiz = Quiz()
    var quizManager = QuizManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.problemScrollView.contentSize = CGSizeMake(self.view.frame.width * 5, self.problemScrollView.frame.height)
        self.problemScrollView.pagingEnabled = true
        
        print("\(self.quiz.quiznumber)kkkkkkkkkkkkkkkkkkkkkkkkkkkkk")

        let hogehoge = setProblemListTableView(0)
        
        quizManager.fetchQuizcategories {
            print("callback!!!!!!!!!!!!!!!!")
            hogehoge.reloadData()
            
        }
        
        
        
        
//        quizCollection.fetchQuizquestion(quizCollection) {
//            hogehoge.reloadData()
//
//            print("\(self.quiz.categoryNumber)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
//        }
//        
//        quiz.fetchQuizanswers(quizCollection) {
//            hogehoge.reloadData()
//        }
//        
        
        
        
        setProblemListTableView(0)

        
        
        //こちらがわではfetchはせず、QuizLisstViewControllerでfetchしたものを渡す
//        quizCollection.fetchQuizquestion(quiz) { 
//            hogehoge.reloadData()
//        }
        
//            for object in self.quizCollection.quizanswers {
//                let a = self.quizCollection.quizanswers[0]
//                print(self.quiz.answer1)
//                print(self.quiz.answer2)
    }
    
    func setProblemListTableView(x: CGFloat) -> UITableView{
        let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
        let problemListTableView = ProblemListTableView(frame: frame, style: UITableViewStyle.Plain)
        self.problemScrollView.addSubview(problemListTableView)
        return problemListTableView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
