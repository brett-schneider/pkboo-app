//
//  ProfileViewController.swift
//  pkboo
//
//  Created by Brett on 02/02/16.
//  Copyright © 2016 Brett. All rights reserved.
//

import UIKit
import FBSDKCoreKit

class ProfileViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var fbProfilePictureView: FBSDKProfilePictureView!
    var fbProfile: FBSDKProfile!
    @IBOutlet weak var textdetails: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        FBSDKProfile.enableUpdatesOnAccessTokenChange(true)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onProfileUpdated:", name:FBSDKProfileDidChangeNotification, object: nil)

        // Do any additional setup after loading the view.
//        self.fbProfilePictureView.pictureMode = FBSDKProfilePictureModeNormal
//        NSLog("%@", self.fbProfilePictureView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func onProfileUpdated(notification: NSNotification)
    {
        self.fbProfile = FBSDKProfile.currentProfile()
        //        self.textdetails.text = String(format: "firstName: %s\nmiddleName: %s\nlastName: %s\nname: %s\nuserID: %s\nlinkURL: %s\n", self.fbProfile.firstName, self.fbProfile.middleName, self.fbProfile.lastName, self.fbProfile.name, self.fbProfile.userID, self.fbProfile.linkURL)
        NSLog("%@",self.fbProfile)
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
