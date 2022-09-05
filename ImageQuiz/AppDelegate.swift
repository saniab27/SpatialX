//
//  AppDelegate.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 2/22/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let defaults = UserDefaults.standard
    let currentCount = UserDefaults.standard.integer(forKey: "launchCount")
    //var check = UserDefaults.standard.string(forKey: "UserName")!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if defaults.bool(forKey: "First Launch") == true && UserDefaults.standard.object(forKey: "UserName") != nil
        {
            //SECOND TIME +
            // Override point for customization after application launch.
            // this line is important
            self.window = UIWindow(frame: UIScreen.main.bounds)
            
            // In project directory storyboard looks like Main.storyboard,
            // you should use only part before ".storyboard" as its name,
            // so in this example name is "Main".
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            
            // controller identifier sets up in storyboard utilities
            // panel (on the right), it is called 'Storyboard ID'
            let viewController = storyboard.instantiateViewController(withIdentifier: "quiz_vc")
            
            self.window?.rootViewController = viewController
            self.window?.makeKeyAndVisible()
        }
        
        else
        {
            defaults.set(true, forKey: "First Launch")
            //SECOND TIME +
                // Override point for customization after application launch.
                // this line is important
                self.window = UIWindow(frame: UIScreen.main.bounds)
            
            // In project directory storyboard looks like Main.storyboard,
            // you should use only part before ".storyboard" as its name,
            // so in this example name is "Main".
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            
            // controller identifier sets up in storyboard utilities
            // panel (on the right), it is called 'Storyboard ID'
            let viewController = storyboard.instantiateViewController(withIdentifier: "userInfo_vc")
            
            self.window?.rootViewController = viewController
            self.window?.makeKeyAndVisible()
        
        }
        FirebaseApp.configure()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

