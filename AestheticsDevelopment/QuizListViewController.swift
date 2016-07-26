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
	
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.locationsScrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.locationsScrollView.frame.height)
            self.locationsScrollView.pagingEnabled = true

            setQuizListTableView(0, locationName: tokyo, locationImageName: tokyoImageName, color: blue)
            setQuizListTableView(self.view.frame.width, locationName: kyoto, locationImageName: kyotoImageName, color: red)
            setQuizListTableView(self.view.frame.width * 2,locationName: fukuoka, locationImageName: fukuokaImageName, color: green)

            

            
            quizsetCollection.fetchQuizsets {() in
                self.setQuizListTableView(0, locationName: self.tokyo, locationImageName: self.tokyoImageName, color: self.blue).reloadData()
                self.setQuizListTableView(self.view.frame.width, locationName: self.kyoto, locationImageName: self.kyotoImageName, color: self.red).reloadData()
                self.setQuizListTableView(self.view.frame.width * 2,locationName: self.fukuoka, locationImageName: self.fukuokaImageName, color: self.green)
            }


            
        }
        
        func post() {
            print("OK")
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
        
        func didSelectTableViewCell() {
            print("セルがタップされました。")
            self.performSegueWithIdentifier("ShowToProblemViewController", sender: nil)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
        

}




//        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//            self.performSegueWithIdentifier("NextSegueToQuiz", sender: nil)
//        }


//        override func viewWillAppear(animated: Bool) {
//            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "投稿", style: .Plain, target: self, action: #selector(QuizListTableViewController.post))
//        }
    