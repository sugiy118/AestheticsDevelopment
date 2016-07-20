//
//  ContentsTableViewCell.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ContentsTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descript: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
