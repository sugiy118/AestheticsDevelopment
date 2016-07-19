//
//  ProfileTableViewCell.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/19.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var finishedNumberLabel: UILabel!
    @IBOutlet weak var favoriteTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        setBackImageView()
        setUserImageView()
        setNameLabel()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setBackImageView(){
        backImageView.image = UIImage(named: "background.jpg")
        backImageView.contentMode = UIViewContentMode.ScaleAspectFill
        backImageView.clipsToBounds = true
    }
    
    func setUserImageView(){
        userImageView.image = UIImage(named: "pug.png")
        userImageView.contentMode = UIViewContentMode.ScaleAspectFill
        userImageView.clipsToBounds = true
        userImageView.layer.borderWidth = 2
        userImageView.layer.borderColor = UIColor.whiteColor().CGColor
        userImageView.layer.cornerRadius = 5
    }

    func setNameLabel(){
        nameLabel.text = "松下 慶大"
        nameLabel.font = UIFont(name: "HiraKakuProN-W3", size: 35)
        nameLabel.textColor = UIColor.whiteColor()
    }

}
