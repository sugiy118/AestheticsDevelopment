//
//  User.swift
//  AestheticsDevelopment
//
//  Created by YU SUGIYAMA on 2016/07/31.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var name: String
    var password: String
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
    
    func signUp(callback: (message: String?) -> Void) {
        let user = NCMBUser()
        user.userName = name
        user.password = password
        user.signUpInBackgroundWithBlock { (error) in
            callback(message: error?.userInfo["NSLocalizedDescription"] as? String)
        }
    }
    
    func login(callback: (message: String?) -> Void) {
        NCMBUser.logInWithUsernameInBackground(self.name, password:self.password) { (user, error) in
            callback(message: error?.userInfo["NSLocalizedDescription"] as? String)
        }
    }
}
//            if error == nil {
//                print("サインアップ成功")
//            } else {
//                print(error?.userInfo["NSLocalizedDescription"] as! String)
//                print("サインアップ失敗")
//            }
//        print("name: \(name)")
//        print("password: \(password)")
