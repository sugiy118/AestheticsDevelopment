//
//  QuizListViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

//class QuizListViewController: UIViewController, UITableViewDelegate{

    let quizsetCollection = QuizsetCollection.sharedInstance

    class QuizListViewController: UIViewController{
        @IBOutlet weak var headerView: UIView!
        @IBOutlet weak var locationsScrollView: UIScrollView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.locationsScrollView.contentSize = CGSizeMake(self.view.frame.width * 2, self.locationsScrollView.frame.height)
            self.locationsScrollView.pagingEnabled = true
            
            setQuizListTableView(0)
            setQuizListTableView(self.view.frame.width)
            setQuizListTableView(self.view.frame.width*2)
            
        quizsetCollection.fetchQuizsets { }

            
        }
        
        
        func post() {
            print("OK")
        }
        
        func setQuizListTableView(x: CGFloat){
            let frame = CGRectMake(x, 0, self.view.frame.width, locationsScrollView.frame.height)
            let quizListTableView = QuizListTableView(frame: frame, style: UITableViewStyle.Plain)
            self.locationsScrollView.addSubview(quizListTableView)
        }
        
//        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//            self.performSegueWithIdentifier("NextSegueToQuiz", sender: nil)
//        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

        
        

//        3機能一旦入れてみる
//            func setQuizListTableView(x: CGFloat){
//                let frame = CGRectMake(x, 74, self.view.frame.width, self.view.frame.height)
//                let quizListTableView = QuizListTableView(frame: frame, style: UITableViewStyle.Plain)
//                quizListTableView.delegate = self
//                self.view.addSubview(quizListTableView)
//            }
        

        
        

        
//            override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//                if indexPath.section == 0 {
//                    return 200
//                } else {
//                    return 85
//                }
//            }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}





//
////セクション数
//override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//    return 1
//    //      return quizManager.quizzes.count
//}
//
////セル数
//override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return self.quizsetCollection.quizsets.count
//}
//
//
////セルの内容
//override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//    let cell = self.tableView.dequeueReusableCellWithIdentifier("QuizsetsTableViewCell", forIndexPath: indexPath) as! QuizsetsTableViewCell
//    let quiz = quizsetCollection.quizsets[indexPath.row]
//    cell.titleLabel.text = "題名"
//    cell.quizCategoryLabel.text = quiz.quizcategory
//    
//    //        cell.quizCategoryLabel.text = String(indexPath.row)
//    return cell
//}
//
////セルの高さ
//override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//    return 75
//}


//セルの登録





//        override func viewWillAppear(animated: Bool) {
//            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "投稿", style: .Plain, target: self, action: #selector(QuizListTableViewController.post))
//        }
