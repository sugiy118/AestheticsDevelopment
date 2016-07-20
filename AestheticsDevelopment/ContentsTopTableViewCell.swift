//
//  ContentsTopTableViewCell.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ContentsTopTableViewCell: UITableViewCell {
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var imageMaskView: UIView!
    @IBOutlet weak var locationName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    setLocationImageView()
    setImageMaskView()
    setNameLabel()
    
    }
    
    func setLocationImageView(){
        self.locationImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.locationImageView.layer.masksToBounds = true
    }
    
    func setImageMaskView(){
        self.imageMaskView.alpha = 0.6
    }
    
    func setNameLabel(){
        self.locationName.textColor = UIColor.whiteColor()
        self.locationName.textAlignment = NSTextAlignment.Center
        self.locationName.font = UIFont(name: "Helvetica-Light", size: 40)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
