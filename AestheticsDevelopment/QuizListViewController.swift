//
//  QuizListViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

    class QuizListViewController: UIViewController, UIScrollViewDelegate, QuizListTableViewDelegate{
        @IBOutlet weak var headerView: UIView!
        @IBOutlet weak var locationsScrollView: UIScrollView!
        
        let tokyo = "TOKYO"
        let tokyoImageName = "tokyo_top_image.png"
        
        let blue = UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
        let green = UIColor(red: 105.0 / 255, green: 207.0 / 255, blue: 153.0 / 255, alpha: 1.0)
        let red = UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)
	
        let quizCollection = QuizCollection.sharedInstance
        let quizSet = Quiz.sharedInstance
        
        var currentSelectedQuiz = Quiz()
        
        //画面遷移後に入れる5問のデータを入れておく場所
        let quizsets:[Quiz] = []

        
        override func viewDidLoad() {
            super.viewDidLoad()
            let hoge = setQuizListTableView(0, locationName: self.tokyo, locationImageName: self.tokyoImageName, color: self.blue)
            
            
            quizCollection.fetchQuizcategories {
                hoge.reloadData()
                print(#function)
            }
            
            
//            quizCollection.fetchQuizanswers(self.currentSelectedQuiz) {
//                print(#function)
//            }
            
            

            self.locationsScrollView.contentSize = CGSizeMake(self.view.frame.width, self.locationsScrollView.frame.height)
            self.locationsScrollView.pagingEnabled = true
            
        }
            
        
        func setQuizListTableView(x: CGFloat, locationName: String, locationImageName: String, color: UIColor) -> UITableView{
            let frame = CGRectMake(x, 0, self.view.frame.width, locationsScrollView.frame.height)
            let quizListTableView = QuizListTableView(frame: frame, style: UITableViewStyle.Plain)
            
            quizListTableView.customDelegate = self
            quizListTableView.locationName = locationName
            quizListTableView.locationImageName = locationImageName
            quizListTableView.color = color
            self.locationsScrollView.addSubview(quizListTableView)
            return quizListTableView
        }
        
        func didSelectTableViewCell(quiz: Quiz) {
            print("セルがタップされました。")

            self.currentSelectedQuiz = quiz
            self.performSegueWithIdentifier("ShowToProblemViewController", sender: nil)
        }
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let problemViewController = segue.destinationViewController as! ProblemViewController
            problemViewController.quiz = self.currentSelectedQuiz
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

}





//        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//            if indexPath.section != 0 {
//                let quiz = quizcategories[indexPath.row]
//                self.performSegueWithIdentifier("NextSegueToQuiz", sender: nil)
//            }
        



//        override func viewWillAppear(animated: Bool) {
//            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "投稿", style: .Plain, target: self, action: #selector(QuizListTableViewController.post))
//        }




// 以下、画面3倍の場合に必要になる情報
    //                self.setQuizListTableView(self.view.frame.width, locationName: self.kyoto, locationImageName: self.kyotoImageName, color: self.red).reloadData()
    //                self.setQuizListTableView(self.view.frame.width * 2,locationName: self.fukuoka, locationImageName: self.fukuokaImageName, color: self.green)

    //            self.locationsScrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.locationsScrollView.frame.height)

    //        let kyotoImageName = "kyoto_top_image.png"
    //        let fukuokaImageName = "fukuoka_top_image.png"

    //        let kyoto = "KYOTO"
    //        let fukuoka = "FUKUOKA"
    