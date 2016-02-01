//
//  account.swift
//  pkboo
//
//  Created by Brett on 01/02/16.
//  Copyright © 2016 Brett. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class account: NSObject {
    
    class func amiloggedin() -> Bool {
        let t = FBSDKAccessToken.currentAccessToken();
        if (t == nil) {
            return false
        } else {
            return true
        }
    }

}
