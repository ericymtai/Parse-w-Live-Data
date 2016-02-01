//
//  LoginViewController.swift
//  Orchid_Products
//
//  Created by Eric Y.M. Tai on 2016-02-01.
//  Copyright © 2016 Eric Y.M. Tai. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameInputField: UITextField!
    @IBOutlet weak var passwordInputField: UITextField!
    
    let scrollViewWallSegue = "LoginSuccesful"
    let tableViewWallSegue = "LoginSuccesfulTable"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func loginPressed(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(userNameInputField.text!, password: passwordInputField.text!) { user, error in
            if user != nil {
                self.performSegueWithIdentifier(self.scrollViewWallSegue, sender: nil)
            }
//            else if let error = error {
//                self.showErrorView(error)
//            }
        }
        
    }
    


}
