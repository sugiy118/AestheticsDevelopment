//
//  QuizListTableView.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizListTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
//    let quizsetCollection = QuizsetCollection.sharedInstance

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
        self.registerNib(UINib(nibName: "ContentsTopTableViewCell", bundle: nil), forCellReuseIdentifier: "ContentsTopTableViewCell")
        self.registerNib(UINib(nibName: "QuizsetsTableViewCell", bundle: nil), forCellReuseIdentifier: "QuizsetsTableViewCell")
        
//        quizsetCollection.fetchQuizsets{ () in
//            self.tableView.reloadData
//        }
        
    }

    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let blue = UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    

    //セル数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return  quizsetCollection.quizsets.count
        }
    }
    
    
    //セル内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                if indexPath.section == 0 {
                    let cell = tableView.dequeueReusableCellWithIdentifier("ContentsTopTableViewCell", forIndexPath: indexPath) as! ContentsTopTableViewCell
                    cell.locationImageView.image = UIImage(named: "tokyo_top_image")
                    cell.locationName.text = "TOKYO"
                    cell.imageMaskView.backgroundColor = blue
                    return cell
                } else {
                    let cell = tableView.dequeueReusableCellWithIdentifier("QuizsetsTableViewCell", forIndexPath: indexPath) as! QuizsetsTableViewCell
       
                    return cell
                }
    }
    

//    セルの高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 85
        }
    }
    
}

    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */



//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//       var controller = QuizListTableViewController()
//        controller.performSegueWithIdentifier("NextSegueToQuiz", sender: controller)
//
//    }