//
//  QuizListTableView.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

@objc protocol QuizListTableViewDelegate{
    func didSelectTableViewCell()
    
}

class QuizListTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    weak var customDelegate: QuizListTableViewDelegate?
    var locationName: String!
    var locationImageName: String!
    var color: UIColor!
    
    let quizsetCollection = QuizsetCollection.sharedInstance

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.delegate = self
        self.dataSource = self
        self.registerNib(UINib(nibName: "ContentsTopTableViewCell", bundle: nil), forCellReuseIdentifier: "ContentsTopTableViewCell")
        self.registerNib(UINib(nibName: "QuizsetsTableViewCell", bundle: nil), forCellReuseIdentifier: "QuizsetsTableViewCell")
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
                    cell.locationImageView.image = UIImage(named: self.locationImageName)
                    cell.locationName.text = self.locationName
                    cell.imageMaskView.backgroundColor = self.color
                    return cell
                } else {
                    let cell = tableView.dequeueReusableCellWithIdentifier("QuizsetsTableViewCell", forIndexPath: indexPath) as! QuizsetsTableViewCell
                    let quiz = quizsetCollection.quizsets[indexPath.row]
                    cell.titleLabel.text = "題名"
                    cell.quizCategoryLabel.text = quiz.quizcategory
                    return cell
                }
    }
    

    //セルの高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 85
        }
    }
    
    //タップされた時に次の画面に移動するDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section != 0 {
            self.customDelegate?.didSelectTableViewCell()
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