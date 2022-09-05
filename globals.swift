//
//  globals.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 3/2/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class globals: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    struct rank
    {
        static var nums = [Int]()
        static var MRScore: Int = 0
        static var SVQScore: Int = 0
        static var SPQScore: Int = 0
        static var results = String()
        static var list2 = [AllQ]()
        static var db = Firestore.firestore()
        static var collectionName = String()
        
        static var array = [Int]()
        static var signal = false
        
        //For practice controller score keeping
        static var wrongAnswer = [Int]()
    }

}
