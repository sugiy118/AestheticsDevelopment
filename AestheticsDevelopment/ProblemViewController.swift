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

    var quiz = Quiz()
    var questionManager = QuestionManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self.quiz.quiznumber)データを受け渡せました")
        
        self.problemScrollView.contentSize = CGSizeMake(self.view.frame.width * 5, self.problemScrollView.frame.height)
        self.problemScrollView.pagingEnabled = true

        let hogehoge = setProblemListTableView(0)
        
        questionManager.fetchQuizquestion(quiz) {
                        hogehoge.reloadData()
                        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                    }
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
