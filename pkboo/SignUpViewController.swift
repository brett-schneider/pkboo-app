//
//  SignUpViewController.swift
//  pkboo
//
//  Created by Brett on 01/02/16.
//  Copyright © 2016 Brett. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class SignUpViewController: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!

    @IBAction func displayTermsAndConditions(sender: UITapGestureRecognizer) {
        UIApplication.sharedApplication().openURL(NSURL(string:"http://www.pkboo.net/termsandconditions")!)
    }
    
    override func viewDidLoad() {
        NSLog("viewDidLoad")
        super.viewDidLoad()

        self.fbLoginButton.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        NSLog("viewDidAppear")
        fbLoginButton.readPermissions = ["public_profile","email","user_friends"]
    }

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
            performSegueWithIdentifier("signup-main", sender: nil)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        performSegueWithIdentifier("back-signup", sender: nil)
    }
    
    func loginButtonWillLogin(loginButton: FBSDKLoginButton!) -> Bool {
        return true
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
