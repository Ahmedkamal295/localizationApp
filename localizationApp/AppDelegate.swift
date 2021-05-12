//
//  AppDelegate.swift
//  localizationApp
//
//  Created by Ahmed kamal on 5/10/21.
//

import UIKit
import MOLH
@main
class AppDelegate: UIResponder, UIApplicationDelegate, MOLHResetable {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
        MOLH.shared.activate(true)
        return true
    }
    
    func reset() {
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        let stry = UIStoryboard(name: "Main", bundle: nil)
        rootviewcontroller.rootViewController = stry.instantiateViewController(withIdentifier: "ViewController")
    }
}
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

