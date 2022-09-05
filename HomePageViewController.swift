//
//  HomePageViewController.swift
//  SpatialX_V2
//
//  Created by Sania Bidurukontam on 5/25/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit
import Foundation

class HomePageViewController: UIViewController {

    @IBOutlet weak var TrainingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func whenPressed(_ sender: Any) {
        let SessionCount = UserDefaults.standard.integer(forKey: "practiceSessionCount")
        
        
        if SessionCount < 5 || SessionCount > 5
        {
            //avoiding nil error
            let PermMRScore = UserDefaults.standard.integer(forKey: "MentalRotationQScore")
            let PermSVQScore = UserDefaults.standard.integer(forKey: "SpatialVisualizationQScore")
            let PermSPQScore = UserDefaults.standard.integer(forKey: "SpatialPerceptionQScore")
            let PermQuizPriorities = UserDefaults.standard.array(forKey: "QuizPriorities")
            
            globals.rank.MRScore = PermMRScore
            globals.rank.SVQScore = PermSVQScore
            globals.rank.SPQScore = PermSPQScore
            globals.rank.nums = [PermMRScore, PermSVQScore, PermSPQScore]
            globals.rank.nums.sort()
           // globals.rank.nums = PermQuizPriorities as! [Int]
            
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "practice_vc") as UIViewController
            UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //show window
            appDelegate.window?.rootViewController = vc
        }
        
        else if SessionCount == 5
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "quiz_vc") as UIViewController
            UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //show window
            appDelegate.window?.rootViewController = vc
        }
        
        
    }
    

}
