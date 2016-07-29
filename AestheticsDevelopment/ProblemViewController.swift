//
//  ProblemViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/26.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemViewController: UIViewController{
    
    var quiz: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.quiz.quizcategory)
//        quizSet.fetchQuizanswers {
//            self.setProblemListTableView(0).reloadData()
//        }
//        quizSet.fetchQuizquestion {
//            self.setProblemListTableView(0).reloadData()
//        }
        setProblemListTableView(0)
    }
    
    func setProblemListTableView(x: CGFloat) -> UITableView{
        let frame = CGRectMake(x, 0, self.view.frame.width, self.view.frame.height)
        let problemListTableView = ProblemListTableView(frame: frame, style: UITableViewStyle.Plain)
        return problemListTableView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
