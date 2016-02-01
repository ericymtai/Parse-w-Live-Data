//
//  SignupViewController.swift
//  Orchid_Products
//
//  Created by Eric Y.M. Tai on 2016-02-01.
//  Copyright © 2016 Eric Y.M. Tai. All rights reserved.
//

import UIKit
import Parse

class SignupViewController: UIViewController {

    @IBOutlet weak var userNameInputField: UITextField!
    @IBOutlet weak var passwordInputField: UITextField!
  
    let scrollViewWallSegue = "SignupSuccesful"
    let tableViewWallSegue = "SignupSuccesfulTable"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func signupPressed(sender: AnyObject) {
        
        //If signup sucessful:
        let user = PFUser()
        
        user.username = userNameInputField.text
        user.password = passwordInputField.text
        
        user.signUpInBackgroundWithBlock { succeeded, error in
            if (succeeded) {
                //The registration was successful, go to the wall
                self.performSegueWithIdentifier(self.scrollViewWallSegue, sender: nil)
            }
//            else if let error = error {
                //Something bad has occurred
//                self.showErrorView(error)
//            }
        }
    }
}
