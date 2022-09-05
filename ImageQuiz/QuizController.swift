//
//  ViewController.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 2/22/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore


class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var questionView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!

    
    //Outlet for Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    //Oulet to keep count of seconds
    @IBOutlet weak var TimerLabel: UILabel!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var selectedAnswer: Int = 0
    var score: Int = 0
    
    //Category Scores
    var order = [Any]()
    var max = Int()
    
    //Database
   // var db = Firestore.firestore()
    
    
    //detecting launch
    let counting = UserDefaults.standard
    let currentCount = UserDefaults.standard.integer(forKey: "launchCount")
    
    //diffrentiating launch after login colletion
    var quizfinished = "true"
    
    //timer
    var timer:Timer = Timer()
    var count:Int = 0
    var timePerProblem = [String]()
  
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       // let db = Firestore.firestore()
       // if globals.rank.nums.count > 0
       // {
            
        let quizFinished = UserDefaults.standard.string(forKey: "quizFinished")
        globals.rank.collectionName = UserDefaults.standard.string(forKey: "UserName")!
        print("\(globals.rank.collectionName)")
        
        if quizFinished == "true"
          {
            let PermMRScore = UserDefaults.standard.integer(forKey: "MentalRotationQScore")
            let PermSVQScore = UserDefaults.standard.integer(forKey: "SpatialVisualizationQScore")
            let PermSPQScore = UserDefaults.standard.integer(forKey: "SpatialPerceptionQScore")
            let PermQuizPriorities = UserDefaults.standard.array(forKey: "QuizPriorities")
            print("PERMMRSCORE", PermMRScore)
            print("PERMSVQSCORE", PermSVQScore)
            print("PERMSPQSCORE", PermSPQScore)
            print("Quiz Priorities Saved:", PermQuizPriorities ?? Int.self)
            print("Second+")
         
            //Run code after first launch
            UserDefaults.standard.set(currentCount+1, forKey: "launchCount")
            print("Current count\(currentCount)")
           
            
            globals.rank.MRScore = PermMRScore
            globals.rank.SVQScore = PermSVQScore
            globals.rank.SPQScore = PermSPQScore
            globals.rank.nums = PermQuizPriorities as! [Int]
            
          
            
            //Switching Views
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "practice_vc") as UIViewController
            UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //show window
            appDelegate.window?.rootViewController = vc
            
           }
      
            
            
        else
        {
            
            print("First")
            

            
            counting.set(true, forKey: "First Launch")
            updateQuestion()
            updateUI()
        }
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        
       // TimerLabel.isEnabled = false

        
    }
    

    @IBAction func answerPressed(_ sender: UIButton) {
        print(self.count)
        timePerProblem.append("\(TimerLabel.text)")
        self.count = 0
        self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
       // timer.invalidate()
        
        //myTime = 0
    
        
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            
        }
        //INDIVIDUAL CATEGORY SCORES
        else if questionNumber == 0 || questionNumber == 8 || questionNumber == 9 || questionNumber == 10
        {
            globals.rank.MRScore = globals.rank.MRScore + 1
            print("MRSCORE\(globals.rank.MRScore)")
            
        }
        
        else if questionNumber == 1 || questionNumber == 2 || questionNumber == 3 || questionNumber == 6
        {
            globals.rank.SVQScore += 1
            print("SVQSCORE\(globals.rank.SVQScore)")
            
        }
        
        else
        {
            globals.rank.SPQScore += 1
            print("SPQSCORE\(globals.rank.SPQScore)")
            
        }
        
        
        
        questionNumber += 1
        updateQuestion()
       
        
    }
    
    @objc func timerCounter() -> Void
    {
        count = count + 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        TimerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int)
    {
        return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
    {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
    
    func updateQuestion()
    {

        if questionNumber <= allQuestions.list.count - 1
        {
            questionView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }
        
        else
        {
            Prioritize()
            let alert = UIAlertController(title: "Move on to practice!", message: "\(globals.rank.results)", preferredStyle: .alert)
            let ending = UIAlertAction(title: "Practice Page", style: .default, handler: {action in self.endQuiz()})
            alert.addAction(ending)
        
            present(alert, animated: true, completion: nil)
            
        }
        updateUI()

    }
    
   
    
    func updateUI()
    {
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
       // timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)

        
    }
    
  

    func endQuiz()
    {
        
        UserDefaults.standard.set(globals.rank.MRScore, forKey: "MentalRotationQScore")
        UserDefaults.standard.set(globals.rank.SVQScore, forKey: "SpatialVisualizationQScore")
        UserDefaults.standard.set(globals.rank.SPQScore, forKey: "SpatialPerceptionQScore")
        UserDefaults.standard.set(globals.rank.nums, forKey: "QuizPriorities")
        
        UserDefaults.standard.set(quizfinished, forKey: "quizFinished")
        
  //      globals.rank.db.collection("User").document("QuizScore).setData(["Quiz Score" : score, "MRSCORE" : globals.rank.MRScore, "SVQScore" : globals.rank.SVQScore, "SPQScore" : globals.rank.SPQScore, "Priorities" : globals.rank.results])
        globals.rank.db.collection("\(globals.rank.collectionName)").document("QuizScore").setData(["Quiz Score" : score, "MRSCORE" : globals.rank.MRScore, "SVQScore" : globals.rank.SVQScore, "SPQScore" : globals.rank.SPQScore, "Priorities" : globals.rank.results, "Quiz Time Per Problem" : timePerProblem])
        
        timer.invalidate()
       let vc = storyboard?.instantiateViewController(withIdentifier: "practice_vc") as! PracticeController
       present(vc, animated: true)
        //let storyboard = UIStoryboard(name: "Practice Controller", bundle: nil)
      
    }
   
    func Prioritize()
    {
        globals.rank.nums = [(globals.rank.MRScore), (globals.rank.SPQScore), (globals.rank.SVQScore)]
        globals.rank.nums.sort()
        print("\(globals.rank.nums)")
        
        //All correct or all not correct
        if globals.rank.SPQScore == 0 && globals.rank.SVQScore == 0 && globals.rank.MRScore == 0
        {
            globals.rank.results = ("Your score was a \(score)/\(questionNumber)! You got all problems correct, but still go on to practice")
            globals.rank.nums.append(0)
        }
        
        if globals.rank.SPQScore == questionNumber && globals.rank.SVQScore == questionNumber && globals.rank.MRScore == questionNumber
        {
            globals.rank.results = ("Your score was a \(score)/\(questionNumber)! You got all the questions wrong! We will prioritize all three categories for your training!")
            globals.rank.nums.append(1)
        }
        
        //Two scores are equal
        else if globals.rank.nums[0] == globals.rank.nums[1]
        {
            if globals.rank.MRScore > globals.rank.SVQScore && globals.rank.MRScore > globals.rank.SPQScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Mental Rotation skills, followed by Spatial Visualization/Spatial Perception!"
            }
            if globals.rank.SVQScore > globals.rank.SPQScore && globals.rank.SVQScore > globals.rank.MRScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Spatial Visualization skills, followed by Mental Rotation/Spatial Perception!"
            }
            if globals.rank.SPQScore > globals.rank.SVQScore && globals.rank.SPQScore > globals.rank.MRScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Spatial Perception skills, followed by Mental Rotation/Spatial Visualization!"
            }
        }
            //first priorities are same
        else if globals.rank.nums[1] == globals.rank.nums[2]
        {
            if globals.rank.MRScore == globals.rank.SVQScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Mental Rotation/Spatial Perception skills, followed by your Spatial Visualization!"
            }
            if globals.rank.MRScore == globals.rank.SPQScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Mental Rotation/Spatial Visualization skills, followed by your Spatial Perception!"
            }
            
            if globals.rank.SVQScore == globals.rank.MRScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Spatial Visualization/Mental Rotation skills, followed by Spatial Perception!"
            }
            if globals.rank.SVQScore == globals.rank.SPQScore
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Spatial Perception/Spatial Visualization skills, followed by your Mental Rotation!"
            }
            
        }
        
        
        else if globals.rank.MRScore == globals.rank.nums[2]
        {
            print("MR is the priority")
            
            if globals.rank.SPQScore == globals.rank.nums[1]
            {
                print("SPQ is the second priority")
                print("SVQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Mental Rotation, Spatial Perception, and Spatial Visualization!")
            }
            
            else if globals.rank.SVQScore == globals.rank.nums[1]
            {
                print("SVQ is the second priority")
                print("SPQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Mental Rotation, Spatial Visualazation, and Spatial Perception!")
            }
        }
        
        else if globals.rank.SVQScore == globals.rank.nums[2]
        {
            print("SVQ is the priority")
            
            
            if globals.rank.SPQScore == globals.rank.nums[1]
            {
                print("SPQ is the second priority")
                print("MR is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Visualazation, Spatial Perception, and Mental Roatation!")
            }
            
            else if globals.rank.MRScore == globals.rank.nums[1]
            {
                print("MR is the second priority")
                print("SPQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Visualazation, Mental Rotation, and Spatial Perception!")
       
            }
        }
        
        else if globals.rank.SPQScore == globals.rank.nums[2]
        {
            print("SPQ is the priority")
            
            if globals.rank.SVQScore == globals.rank.nums[1]
            {
                print("SVQ is the second priority")
                print("MR is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Perception, Spatial Visualazation, and Mental Roatation!")
            }
            
            else if globals.rank.MRScore == globals.rank.nums[1]
            {
                print("MR is the second priority")
                print("SVQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Perception, Mental Roatation, and Spatial Visualazation!")
         
            }
        }
        
    
    }
    
        
    
}

