//
//  LoginViewController.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/31.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func tapSignUpButon(sender: UIButton) {
        let user = User(name: nameTextField.text!,  password: passwordTextField.text!)
        user.signUp{ (message) in
            if let unwrappedMessage = message {
                self.showAlert(unwrappedMessage)
                print("サインアップ失敗")
            } else {
                print("サインアップ成功")
            }
        }
    }
    
    @IBAction func tapLoginButton(sender: UIButton) {
        let user = User(name: nameTextField.text!, password: passwordTextField.text!)
        user.login { (message) in
            if let unwrappedMessage = message {
                self.showAlert(unwrappedMessage)
            } else {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
    }
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(action)
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    

}
