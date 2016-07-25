//
//  QuizListViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

//class QuizListViewController: UIViewController, UITableViewDelegate{

    class QuizListViewController: UIViewController{
        
        @IBOutlet weak var headerView: UIView!
        @IBOutlet weak var locationsScrollView: UIScrollView!

        let quizsetCollection = QuizsetCollection.sharedInstance

        let tokyo = "TOKYO"
        let kyoto = "KYOTO"
        let fukuoka = "FUKUOKA"
        
        let tokyoImageName = "tokyo_top_image.png"
        let kyotoImageName = "kyoto_top_image.png"
        let fukuokaImageName = "fukuoka_top_image.png"
        
        let blue = UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
        let green = UIColor(red: 105.0 / 255, green: 207.0 / 255, blue: 153.0 / 255, alpha: 1.0)
        let red = UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)
	
        let quizListTableView = QuizListTableView()

        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.locationsScrollView.contentSize = CGSizeMake(self.view.frame.width * 2, self.locationsScrollView.frame.height)
            self.locationsScrollView.pagingEnabled = true
        
            quizListTableView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
            self.view.addSubview(quizListTableView)
            
            
//            setQuizListTableView(0, locationName: tokyo, locationImageName: tokyoImageName, color: blue)
//            setQuizListTableView(self.view.frame.width, locationName: kyoto, locationImageName: kyotoImageName, color: red)
//            setQuizListTableView(self.view.frame.width*2,locationName: fukuoka, locationImageName: fukuokaImageName, color: green)
        
            
            
            quizsetCollection.fetchQuizsets { () in
                self.quizListTableView.reloadData()
            }
        }
        
        func post() {
            print("OK")
        }
        
        func setQuizListTableView(x: CGFloat, locationName: String, locationImageName: String, color: UIColor){
            let frame = CGRectMake(x, 0, self.view.frame.width, locationsScrollView.frame.height)
            let quizListTableView = QuizListTableView(frame: frame, style: UITableViewStyle.Plain)
            quizListTableView.locationName = locationName
            quizListTableView.locationImageName = locationImageName
            quizListTableView.color = color
            
            self.locationsScrollView.addSubview(quizListTableView)
            }
        

        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
}


//        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//            self.performSegueWithIdentifier("NextSegueToQuiz", sender: nil)
//        }

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
    