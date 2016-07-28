//
//  ProblemViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/26.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ProblemViewController: UIViewController{
    @IBOutlet weak var problemNumberLabel: UILabel!
    @IBOutlet weak var answer1Label: UILabel!
    @IBOutlet weak var answer2Label: UILabel!
    @IBOutlet weak var answer3Label: UILabel!
    @IBOutlet weak var answer4Label: UILabel!

    var quiz: Quiz!

    //    let quizzes = Quizzes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
