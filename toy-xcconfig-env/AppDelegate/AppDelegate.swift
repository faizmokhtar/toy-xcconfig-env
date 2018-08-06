//
//  AppDelegate.swift
//  toy-xcconfig-env
//
//  Created by Faiz Mokhtar on 06/08/2018.
//  Copyright © 2018 faizmokhtar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.printValueFromPlist()
        return true
    }
}

extension AppDelegate {
    func printValueFromPlist() {
        guard let path = Bundle.main.path(forResource: "Info", ofType: "plist") else {
            fatalError("Unable to find Info.plist")
        }
        if let plist = NSDictionary(contentsOfFile: path) {
            print("BASE_URL     : \(plist["Base URL"] as! String)")
            print("ANALYTICS_KEY: \(plist["Analytics Key"] as! String)")
        }
    }
}

