//
//  UserInfoViewController.swift
//  SpatialX_V2
//
//  Created by Sania Bidurukontam on 5/10/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class UserInfoViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.delegate = self
        //nextButton.isEnabled = false
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func enterTapped(_ sender: Any) {
        //nextButton.isEnabled = true
        
        //textView.text = "User Name: \(userNameField.text!)\n"
       
        if userNameField.text?.count == 0
        {
            //DO NOTHING
        }
        
        else
        {
        UserDefaults.standard.set(userNameField.text as! String, forKey: "UserName")
         globals.rank.collectionName = UserDefaults.standard.string(forKey: "UserName")!
        
        
        //Switching Views
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "quiz_vc") as UIViewController
        UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //show window
        appDelegate.window?.rootViewController = vc
        }
       
    }
    
}

extension UserInfoViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
}
