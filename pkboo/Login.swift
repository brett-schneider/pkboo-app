//
//  Login.swift
//  pkboo
//
//  Created by Brett on 04/02/16.
//  Copyright © 2016 Brett. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class Login: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    
    @IBAction func displayTermsAndConditions(sender: UITapGestureRecognizer) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.pkboo.net/termsandconditions")!)
    }
    
    var msgs = [String](arrayLiteral: "parents like you", "places to go")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.fbLoginButton.delegate = self
        self.fbLoginButton.readPermissions = ["public_profile","email","user_friends"]
        self.message.text = msgs[random() % msgs.count]
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

    // MARK: FBSDKLoginButtonDelegate
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        if ((error) != nil) {
            // Process error
            // do nothing
        }
        else if result.isCancelled {
            // Handle cancellations
            // do nothing
        }
        else {
            performSegueWithIdentifier("segue_loggedin", sender: nil)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        // performSegueWithIdentifier("back-signup", sender: nil)
    }
    
    func loginButtonWillLogin(loginButton: FBSDKLoginButton!) -> Bool {
        return true
    }

}
