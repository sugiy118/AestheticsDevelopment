//
//  ProblemTopTableViewCell.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/28.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemTopTableViewCell: UITableViewCell {
    @IBOutlet weak var quizName: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setQuizName()
        
    }
    
    
    func setQuizName(){
        self.quizName.textColor = UIColor.whiteColor()
        self.quizName.textAlignment = NSTextAlignment.Center
        self.quizName.font = UIFont(name: "Helvetica-Light", size: 40)
    }


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
