//
//  PracticeController.swift
//  ImageQuiz
//cc
//  Created by Sania Bidurukontam on 2/27/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import UIKit

class PracticeController: UIViewController {
    //References
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var questionView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    //Banks
    
    //Timer
    @IBOutlet weak var TimerLabel: UILabel!
    
    //Keeping score
    var questionNumber: Int = 0
    var selectedAnswer: Int = 0
    var score: Int = 0
    
    var practiceMRScore = 0
    var practiceSVQScore = 0
    var practiceSPQScore = 0
    var practiceScoreArray = [Float]()
    
    
    //Priorities
   // var currentCount = UserDefaults.standard.integer(forKey: "launchCount")

    //if UserDefaults.standard.integer(forKey: "launchCount")
    //var keepingCount = UserDefaults.standard.integer(forKey: "launchCount")
    
    //currentCount = keepingCount
    
    //var sessionFinished = Bool()
    
    //var practiceSessionCount = Int()
    var practiceSessionCount = Int()
    
   // var usersCollectionRef = globals.rank.db.collection("\(globals.rank.collectionName)")
    
    
    //timer
    var timer:Timer = Timer()
    var count:Int = 0
    var timePerProblem = [String]()
    var MRTimePerProblem = [String]()
    var SPTimePerProblem = [String]()
    var SVTimePerProblem = [String]()

    //checking if session is all the way completed
   // var sessionfinished = Bool()
    
//AVOID ERROR OF NIL PRIORITIES
    //quiz priorities
    
    var allQuestions = AllQBank()

    
    override func viewDidLoad() {
        print("\(globals.rank.collectionName)")
        let sessionFinished = UserDefaults.standard.bool(forKey: "sessionFinished")
        let SessionCount = UserDefaults.standard.integer(forKey: "practiceSessionCount")
        practiceSessionCount = SessionCount
        
        if sessionFinished == true //&& currentCount > 0 NOT FIRST LAUNCH
        {
            let PracticeMRScore = UserDefaults.standard.integer(forKey: "MentalRotationPScore")
            let PracticeSVQScore = UserDefaults.standard.integer(forKey: "SpatialVisualizationPScore")
            let PracticeSPQScore = UserDefaults.standard.integer(forKey: "SpatialPerceptionPScore")
            let PracticePriorities = UserDefaults.standard.array(forKey: "PracticePriorities")
            globals.rank.MRScore = PracticeMRScore
            globals.rank.SVQScore = PracticeSVQScore
            globals.rank.SPQScore = PracticeSPQScore
            globals.rank.nums = [PracticeMRScore, PracticeSVQScore, PracticeSPQScore]
            globals.rank.nums.sort()
            
            print("\(PracticeMRScore) MR \(PracticeSVQScore) SVQ \(PracticeSPQScore) SPQ \(globals.rank.MRScore) global MR \(globals.rank.SPQScore) global SPQ \(globals.rank.SVQScore) global SVQ")
            UserDefaults.standard.set(false, forKey: "sessionFinished")
    
            practiceSessionCount += 1
            UserDefaults.standard.set(practiceSessionCount, forKey: "practiceSessionCount")
            allQuestions = AllQBank()
            
            // practiceSessionCount += 1
            
        }
            
        else if sessionFinished == false && practiceSessionCount == 0
        {
            
            //sessionFinished = false
            //UserDefaults.standard.string(forKey: "sessionFinished")
            UserDefaults.standard.set(false, forKey: "sessionFinished")
            practiceSessionCount = 0
            allQuestions = AllQBank()
            
        }
            
        else if sessionFinished == false && practiceSessionCount > 0
        {
            let PracticeMRScore = UserDefaults.standard.integer(forKey: "MentalRotationPScore")
            let PracticeSVQScore = UserDefaults.standard.integer(forKey: "SpatialVisualizationPScore")
            let PracticeSPQScore = UserDefaults.standard.integer(forKey: "SpatialPerceptionPScore")
            let PracticePriorities = UserDefaults.standard.array(forKey: "PracticePriorities")
            globals.rank.MRScore = PracticeMRScore
            globals.rank.SVQScore = PracticeSVQScore
            globals.rank.SPQScore = PracticeSPQScore
            globals.rank.nums = [PracticeMRScore, PracticeSVQScore, PracticeSPQScore]
            globals.rank.nums.sort()
            print("\(PracticeMRScore) MR \(PracticeSVQScore) SVQ \(PracticeSPQScore) SPQ \(globals.rank.MRScore) global MR \(globals.rank.SPQScore) global SPQ \(globals.rank.SVQScore) global SVQ")
            UserDefaults.standard.set(false, forKey: "sessionFinished")
            
            allQuestions = AllQBank()
           
            
            
        }

    
        super.viewDidLoad()
       


        //Run code after first launch
        //currentCount = UserDefaults.standard.integer(forKey: "launchCount")
        //sessionFinished = UserDefaults.standard.string(forKey: "sessionFinished")
        
        //Transferring Priorities
       // if sessionFinished == "true"
        //{
            //currentCount += 1
            //UserDefaults.standard.set(currentCount, forKey: "launchCount")
            //print("Current count\(currentCount)")
        //}
       
 
    
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //counting sessions
        
        
        //sessionfinished = "false"
       // UserDefaults.standard.set(sessionfinished, forKey: "sessionFinished")
        
       
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        updateQuestion()
        updateUI()
        
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
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if globals.rank.list2[questionNumber].label == 0
        {
            MRTimePerProblem.append("\(String(describing: TimerLabel.text))")
            print(self.count)
            timePerProblem.append("\(TimerLabel.text)")
            self.count = 0
            self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
        }
            
        else if globals.rank.list2[questionNumber].label == 1
        {
            SVTimePerProblem.append("\(String(describing: TimerLabel.text))")
            print(self.count)
            timePerProblem.append("\(TimerLabel.text)")
            self.count = 0
            self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
        }
            
        else if globals.rank.list2[questionNumber].label == 2
        {
            SPTimePerProblem.append("\(String(describing: TimerLabel.text))")
            print(self.count)
            timePerProblem.append("\(TimerLabel.text)")
            self.count = 0
            self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
        }
        
        if sender.tag == selectedAnswer {
          //  print("correct")
            score += 1
            globals.rank.wrongAnswer.append(0)
            
        }
            
        else
        {
           // print("wrong")
            globals.rank.wrongAnswer.append(1)
            
            if globals.rank.list2[questionNumber].label == 0
            {
                practiceMRScore += 1
            }
            
            else if globals.rank.list2[questionNumber].label == 1
            {
               practiceSVQScore += 1
            }
            
            else if globals.rank.list2[questionNumber].label == 2
            {
                practiceSPQScore += 1
            }
            
            
        }
       
        questionNumber += 1
        updateQuestion()
        
        
        
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
            optionC.isHidden = false
            optionD.isHidden = false
            
            
            if globals.rank.list2[questionNumber].label == 0
            {
                optionC.isHidden = true
                optionD.isHidden = true
            }
            
            updateUI()
        }
            
        else
        {
            Prioritize()
           // endQuiz()
            
            
            let alert = UIAlertController(title: "Move on to practice!", message: "\(globals.rank.results)", preferredStyle: .alert)
            let ending = UIAlertAction(title: "Come back tomorrow to practice!", style: .default, handler: {_ in
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "homevc")
                UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
                
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                //show window
                appDelegate.window?.rootViewController = vc
                
                
            })
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
        
    }
    
    func endQuiz()
    {
        UserDefaults.standard.set(practiceMRScore, forKey: "MentalRotationPScore")
        UserDefaults.standard.set(practiceSVQScore, forKey: "SpatialVisualizationPScore")
        UserDefaults.standard.set(practiceSPQScore, forKey: "SpatialPerceptionPScore")
        
        
       
        //keeping track of completed sessions
       // sessionfinished = true
       // UserDefaults.standard.set(sessionfinished, forKey: "sessionFinished")
        let sessionFinished = UserDefaults.standard.bool(forKey: "sessionFinished")
        UserDefaults.standard.set(true, forKey: "sessionFinished")
       // UserDefaults.standard.set(practiceSessionCount, forKey: "practiceSessionCount")
        
        
        let PracticeMRScore = UserDefaults.standard.integer(forKey: "MentalRotationPScore")
        let PracticeSVQScore = UserDefaults.standard.integer(forKey: "SpatialVisualizationPScore")
        let PracticeSPQScore = UserDefaults.standard.integer(forKey: "SpatialPerceptionPScore")
        
        
        
        //COUTING SESSIONS
        let SessionCount = UserDefaults.standard.integer(forKey: "practiceSessionCount")
       // practiceSessionCount += 1
        UserDefaults.standard.set(practiceSessionCount, forKey: "practiceSessionCount")
        
        globals.rank.MRScore = PracticeMRScore
        globals.rank.SVQScore = PracticeSVQScore
        globals.rank.SPQScore = PracticeSPQScore
        globals.rank.nums = [PracticeMRScore, PracticeSVQScore, PracticeSPQScore]
        globals.rank.nums.sort()
        
        
        
        globals.rank.db.collection("\(globals.rank.collectionName)").document("Practice Session\(practiceSessionCount)").setData(["Practice Score" : score, "MRScore" : globals.rank.MRScore, "SVQScore": globals.rank.SVQScore, "SPQScore" : globals.rank.SPQScore, "Priorities" : globals.rank.results, "Practice Time Per Problem": timePerProblem, "MR Time Per Problem": MRTimePerProblem, "SV Time Per Problem": SVTimePerProblem, "SP Time Per Problem": SPTimePerProblem, "Problem Array Labels" : globals.rank.array, "Percentage of Problems Wrong" : practiceScoreArray])
        
       
        
    
      
        timer.invalidate()
        let vc = storyboard?.instantiateViewController(withIdentifier: "homevc") as! HomePageViewController
        present(vc, animated: true)
    
    }
    
    func Prioritize()
    {
        var numberOfMRQs = Float()
        var numberOfSPQs = Float()
        var numberOfSVQs = Float()
        
        
        //number of qs in each category
        for i in 0...globals.rank.list2.count - 1
        {
            if globals.rank.list2[i].label == 0
            {
                numberOfMRQs += 1
            }
            
            if globals.rank.list2[i].label == 1
            {
                numberOfSVQs += 1
            }
            
            if globals.rank.list2[i].label == 2
            {
                numberOfSPQs += 1
            }
        }
        
        //globals.rank.nums = [(globals.rank.MRScore), (globals.rank.SPQScore), (globals.rank.SVQScore)]
       practiceScoreArray = [Float(practiceMRScore)/numberOfMRQs, Float(practiceSVQScore)/numberOfSVQs, Float(practiceSPQScore)/numberOfSPQs]
       practiceScoreArray.sort()
        //globals.rank.nums.sort()
        print("\(practiceScoreArray)")
        
        
        
        
        
        
        
        //All correct
        if Float(practiceSPQScore)/numberOfSPQs == 0 && Float(practiceSVQScore)/numberOfSVQs == 0 && Float(practiceMRScore)/numberOfMRQs == 0
        {
            globals.rank.results = ("Your score was a \(score)/\(questionNumber)! You got all problems correct, but still go on to practice")
            practiceScoreArray.append(0)
        }
        
        //ALLL WRONG
        if Float(practiceSPQScore)/numberOfSPQs == 1 && Float(practiceSVQScore)/numberOfSVQs == 1 && Float(practiceMRScore)/numberOfMRQs == 1
        {
            globals.rank.results = ("Your score was a \(score)/\(questionNumber)! You got all the questions wrong! We will prioritize all three categories for your training!")
            practiceScoreArray.append(1)
        }
            
            //Two scores are equal
        else if practiceScoreArray[0] == practiceScoreArray[1]
        {
            if Float(practiceMRScore)/numberOfMRQs > Float(practiceSVQScore)/numberOfSVQs && Float(practiceMRScore)/numberOfMRQs > Float(practiceSPQScore)/numberOfSPQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Mental Rotation skills, followed by Spatial Visualization/Spatial Perception!"
            }
            if Float(practiceSVQScore)/numberOfSVQs >  Float(practiceSPQScore)/numberOfSPQs && Float(practiceSVQScore)/numberOfSVQs > Float(practiceMRScore)/numberOfMRQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Spatial Visualization skills, followed by Mental Rotation/Spatial Perception!"
            }
            if Float(practiceSPQScore)/numberOfSPQs > Float(practiceSVQScore)/numberOfSVQs && Float(practiceSPQScore)/numberOfSPQs > Float(practiceMRScore)/numberOfMRQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let's work on your Spatial Perception skills, followed by Mental Rotation/Spatial Visualization!"
            }
        }
            //first priorities are same
        else if practiceScoreArray[1] == practiceScoreArray[2]
        {
            if Float(practiceMRScore)/numberOfMRQs == Float(practiceSVQScore)/numberOfSVQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Mental Rotation/Spatial Perception skills, followed by your Spatial Visualization!"
            }
            if Float(practiceMRScore)/numberOfMRQs == Float(practiceSPQScore)/numberOfSPQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Mental Rotation/Spatial Visualization skills, followed by your Spatial Perception!"
            }
            
            if Float(practiceSVQScore)/numberOfSVQs == Float(practiceMRScore)/numberOfMRQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Spatial Visualization/Mental Rotation skills, followed by Spatial Perception!"
            }
            if Float(practiceSVQScore)/numberOfSVQs == Float(practiceSPQScore)/numberOfSPQs
            {
                globals.rank.results = "Your score was a \(score)/\(questionNumber)! Let' work on your Spatial Perception/Spatial Visualization skills, followed by your Mental Rotation!"
            }
            
        }
            
            
        else if Float(practiceMRScore)/numberOfMRQs == practiceScoreArray[2]
        {
            print("MR is the priority")
            
            if Float(practiceSPQScore)/numberOfSPQs == practiceScoreArray[1]
            {
                print("SPQ is the second priority")
                print("SVQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Mental Rotation, Spatial Perception, and Spatial Visualization!")
            }
                
            else if Float(practiceSVQScore)/numberOfSVQs == practiceScoreArray[1]
            {
                print("SVQ is the second priority")
                print("SPQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Mental Rotation, Spatial Visualazation, and Spatial Perception!")
            }
        }
            
        else if Float(practiceSVQScore)/numberOfSVQs == practiceScoreArray[2]
        {
            print("SVQ is the priority")
            
            
            if Float(practiceSPQScore)/numberOfSPQs == practiceScoreArray[1]
            {
                print("SPQ is the second priority")
                print("MR is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Visualazation, Spatial Perception, and Mental Roatation!")
            }
                
            else if Float(practiceMRScore)/numberOfMRQs == practiceScoreArray[1]
            {
                print("MR is the second priority")
                print("SPQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Visualazation, Mental Rotation, and Spatial Perception!")
                
            }
        }
            
        else if Float(practiceSPQScore)/numberOfSPQs == practiceScoreArray[2]
        {
            print("SPQ is the priority")
            
            if Float(practiceSVQScore)/numberOfSVQs == practiceScoreArray[1]
            {
                print("SVQ is the second priority")
                print("MR is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Perception, Spatial Visualazation, and Mental Roatation!")
            }
                
            else if Float(practiceMRScore)/numberOfMRQs == practiceScoreArray[1]
            {
                print("MR is the second priority")
                print("SVQ is the third priority")
                globals.rank.results = ("Your score was a \(score)/\(questionNumber)! Let's work on your spatial skills in this order: Spatial Perception, Mental Roatation, and Spatial Visualazation!")
                
            }
        }
        
        print("Percentage of MR wrong\(Float(practiceMRScore)/numberOfMRQs)")
        print("Percentage of SP wrong\(Float(practiceSPQScore)/numberOfSPQs)")
        print("Percentage of SV wrong\(Float(practiceSVQScore)/numberOfSVQs)")
        
        
        
        //Saving number of category qs
         UserDefaults.standard.set(numberOfMRQs, forKey: "numberOfMRQs")
         UserDefaults.standard.set(numberOfSPQs, forKey: "numberOfSPQs")
         UserDefaults.standard.set(numberOfSVQs, forKey: "numberOfSVQs")
        UserDefaults.standard.set(practiceScoreArray, forKey: "PracticePriorities")
        
        let MRQs = UserDefaults.standard.integer(forKey: "numberOfMRQs")
        let SPQs = UserDefaults.standard.integer(forKey: "numberOfSPQs")
        let SVQs = UserDefaults.standard.integer(forKey: "numberOfSVQs")
        let percentages =  UserDefaults.standard.array(forKey: "PracticePriorities")

        
        endQuiz()
    }
    
}
