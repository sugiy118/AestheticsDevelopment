//
//  ContentsViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/20.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ContentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contentsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        contentsTableView.delegate = self
        contentsTableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "myCell")
        cell.textLabel?.text = "：\(indexPath.section)"
        cell.detailTextLabel?.text = "Information about Exibitions"
        cell.imageView?.image = UIImage(named: "\(dogImageArray[indexPath.row]).png")
        return cell
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
