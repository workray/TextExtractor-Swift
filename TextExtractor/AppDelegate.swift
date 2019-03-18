//
//  AppDelegate.swift
//  TextExtractor
//
//  Created by Mobdev125 on 3/18/19.
//  Copyright © 2019 Mobdev125. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    override init() {
        FirebaseApp.configure()
    }
}

