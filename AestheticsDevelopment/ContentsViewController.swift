//
//  ContentsViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ContentsViewController: UIViewController{
    @IBOutlet weak var headerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setContentsTableView(0)
    }
    


    func setContentsTableView(x: CGFloat){
        let frame = CGRectMake(x, 74, self.view.frame.width, self.view.frame.height)
        let contentsTableView = ContentsTableView(frame: frame, style: UITableViewStyle.Plain)
        self.view.addSubview(contentsTableView)
    }
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
