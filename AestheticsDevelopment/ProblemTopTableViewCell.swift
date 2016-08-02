//
//  ProblemTopTableViewCell.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/28.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemTopTableViewCell: UITableViewCell {
    @IBOutlet weak var problemColorView: UIView!
    @IBOutlet weak var quizName: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()

        setProblemColorView()
        setQuizName()

    }
    
    func setProblemColorView(){
        self.problemColorView.contentMode = UIViewContentMode.ScaleAspectFill
        self.problemColorView.layer.masksToBounds = true
            
    }
    
    
    func setQuizName(){
        self.quizName.textColor = UIColor.blackColor()
        self.quizName.textAlignment = NSTextAlignment.Center
        self.quizName.font = UIFont(name: "Helvetica-Light", size: 15)
    }


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
