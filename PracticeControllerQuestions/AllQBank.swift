//
//  AllQ.swift
//  ImageQuiz
//
//  Created by Sania Bidurukontam on 3/2/21.
//  Copyright © 2021 Sania Bidurukontam. All rights reserved.
//

import Foundation

public class AllQBank
{
    //Do this for all questions
    let testVC = ViewController()
    var list = [AllQ]()
    var SPlist = [AllQ]()
    var SVlist = [AllQ]()
    var MRlist = [AllQ]()

    //data collection
    let MRQs = UserDefaults.standard.integer(forKey: "numberOfMRQs")
    let SPQs = UserDefaults.standard.integer(forKey: "numberOfSPQs")
    let SVQs = UserDefaults.standard.integer(forKey: "numberOfSVQs")
    
    let SessionCount = UserDefaults.standard.integer(forKey: "practiceSessionCount")
    //let percentages =  UserDefaults.standard.float( forKey: "PracticePriorities")
    var practiceScoreArray = [Float]()
   // var percentPs = [Float]()
   

    init(){
        //Mental Rotations Tags = 0
       // print(percentages)

        //Spatial Perception Tags = 2
       // list.append(AllQ(image: "P4", questionText: "Which answer best follows the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
     //                    choiceD: "D", Answer: 4, Tag: 2))
        
        //list.append(AllQ(image: "P1", questionText: "Which, of the Answer Figures is a rotation of the Question Figure?", choiceA: "A", choiceB: "B", choiceC: "C",
          //               choiceD: "D", Answer: 3, Tag: 0))
        
        //Spatial Visualization Tags = 1
        //list.append(AllQ(image: "P3", questionText: "Which of the complete shapes can be made from the components shown?", choiceA: "A", choiceB: "B", choiceC: "C",
          //               choiceD: "D", Answer: 2, Tag: 1))
        //Testing random order
        //list.append(AllQ(image: "P2", questionText: "Which answer shows a mirror image of the image above?", choiceA: "A", choiceB: "B", choiceC: "C",
          //               choiceD: "D", Answer: 2, Tag: 0))
        
        //list.append(AllQ(image: "P5", questionText: "Which figure is a rotation of the object?", choiceA: "A", choiceB: "B", choiceC: "C",
           //              choiceD: "D", Answer: 4, Tag: 0))
        
        //list.append(AllQ(image: "P6", questionText: "To which object does the given top view correspond?", choiceA: "A", choiceB: "B", choiceC: "C",
          //               choiceD: "D", Answer: 1, Tag: 2))
        
      //  list.append(AllQ(image: "P7", questionText: "Which top view does this object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C",
                //         choiceD: "D", Answer: 2, Tag: 2))
        
      //  list.append(AllQ(image: "P8", questionText: "Which pattern can be folded to make the cube shown?", choiceA: "A", choiceB: "B", choiceC: "C",
          //               choiceD: "D", Answer: 2, Tag: 1))
       // list.append(AllQ(image: "P9", questionText: "Which group of shapes can be assembled to make the shape shown?", choiceA: "A", choiceB: "B", choiceC: "C",
                    //     choiceD: "D", Answer: 2, Tag: 1))
        
        
        //MR PROBLEMS
        MRlist.append(AllQ(image: "8_50_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "8_50", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "8_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "8_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "9_50_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "9_50", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "9_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "9_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "10_50_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "10_50", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "10_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "10_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "11_50_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "11_50", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "11_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "11_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "12_50_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "12_50", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
         MRlist.append(AllQ(image: "12_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
         MRlist.append(AllQ(image: "12_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        
        MRlist.append(AllQ(image: "14_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "14_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "15_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "15_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "16_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "16_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "17_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "17_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        MRlist.append(AllQ(image: "18_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "18_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "19_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "19_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        MRlist.append(AllQ(image: "20_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "20_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "21_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "21_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        
        MRlist.append(AllQ(image: "45_100_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "45_100", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "45_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "45_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        
        MRlist.append(AllQ(image: "46_0", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "46_100", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "46_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "46_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        
        MRlist.append(AllQ(image: "47_100_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "47_100", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        MRlist.append(AllQ(image: "47_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "47_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
        
        MRlist.append(AllQ(image: "48_150_R", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 2, Tag: 0))
        MRlist.append(AllQ(image: "48_150", questionText: "Are the objects shown the same or different?", choiceA: "Same", choiceB: "Different", choiceC: "C", choiceD: "D", Answer: 1, Tag: 0))
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //SV PROBLEMS
        SVlist.append(AllQ(image: "SV2DNetsOGA", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SV2DNetsVar1B", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SV2DNetsVar2C", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SV2DNetsVar3D", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 4, Tag: 1))
        SVlist.append(AllQ(image: "SV2DNetsVar4C", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SV2Dto3DA", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SV2Dto3DB", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SV2Dto3DC", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SV2Dto3DOGD", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 4, Tag: 1))
        
        SVlist.append(AllQ(image: "SV3Dto2DA", questionText: "Which of the patterns shown could be folded to make the 3D figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SV3Dto2DOGB", questionText: "Which of the patterns shown could be folded to make the 3D figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SV3Dto2DVar2C", questionText: "Which of the patterns shown could be folded to make the 3D figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SV3Dto2DVar3D", questionText: "Which of the patterns shown could be folded to make the 3D figure?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 4, Tag: 1))
        
        SVlist.append(AllQ(image: "SVMyProbsA", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SVMyProbsB", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVMyProbsC", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SVMyProbsD", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 4, Tag: 1))
        SVlist.append(AllQ(image: "SVProblemsA", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SVProbsA", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SVProbsB", questionText: "Which of the 3D objects shown could be made from the pattern?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        
        
        
        SVlist.append(AllQ(image: "SVPaperFoldB", questionText: "Which figure represents the paper after it has been cut and folded?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperFoldVar1D", questionText: "Which figure represents the paper after it has been cut and folded?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 1))
         SVlist.append(AllQ(image: "SVPaperFoldVar1D", questionText: "Which figure represents the paper after it has been cut and folded?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchOGC", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar1B", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar2D", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar3B", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar4A", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 1))
        
        SVlist.append(AllQ(image: "SVPaperPunchVar5B", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar6C", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar7A", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar8D", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 1))
        
        SVlist.append(AllQ(image: "SVPaperPunchVar9B", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar10C", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar11B", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar12C", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 1))
        SVlist.append(AllQ(image: "SVPaperPunchVar13D", questionText: "Which figure represents the paper after it has been cut and hole punched?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 1))
        
        

        
        
        
        
        
        
        
        
        
        
        
        //SP PROBLEMS
        SPlist.append(AllQ(image: "PyramidOGC", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 3, Tag: 2))
        
        SPlist.append(AllQ(image: "PyramidVar1A", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "PyramidVar2B", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "PyramidVar3DD", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SP-CubeOGD", questionText: "Choose the correct cube view.", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeVar1D", questionText: "Choose the correct cube view.", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SP-CubeVar2C", questionText: "Choose the correct cube view.", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SP-CubeVar3B", questionText: "Choose the correct cube view.", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SP-CubeVar4A", questionText: "Choose the correct cube view.", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SP-OppositeXDOG", questionText: "3 views of the same cube are shown. Which symbol is opposite to the X?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var1OppositeXD", questionText: "3 views of the same cube are shown. Which symbol is opposite to the X?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var2OppositeDotA", questionText: "3 views of the same cube are shown. Which symbol is opposite to the 2 dots?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var3OppositeDotA", questionText: "3 views of the same cube are shown. Which symbol is opposite to the 2 dots?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var4OppositeXA", questionText: "3 views of the same cube are shown. Which symbol is opposite to the X?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var5OppositeDotsB", questionText: "3 views of the same cube are shown. Which symbol is opposite to the 2 dots?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SP-Var6OppositeXC", questionText: "3 views of the same cube are shown. Which symbol is opposite to the X?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SP2Dto3DB", questionText: "Which 3D object corresponds to the top view?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SP2Dto3DC", questionText: "Which 3D object corresponds to the top view?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SP2Dto3DD", questionText: "Which 3D object corresponds to the top view?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SP2dto3dOGA", questionText: "Which 3D object corresponds to the top view?", choiceA: "A", choiceB: "B", choiceC: "C",
                         choiceD: "D", Answer: 1, Tag: 2))
        
        SPlist.append(AllQ(image: "SPBlockViewsB", questionText: "Which 2D net is  the object's top view?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPBlockViewsBackViewVar1C", questionText: "Which 2D net is  the object's back view?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPBlockViewsLeftViewVar3A", questionText: "Which 2D net is  the object's left view?", choiceA: "A", choiceB: "B", choiceC: "C",
                           choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SPBlockViewsVar2C", questionText: "Which 2D net is  the object's top view?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPBlockViewsVar4D", questionText: "Which 2D net is  the object's top view?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPPyramidVar4B", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
          SPlist.append(AllQ(image: "SPPyramidVar6A", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
          SPlist.append(AllQ(image: "SPPyramidVar7D", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
          SPlist.append(AllQ(image: "SPPyramidVar5C", questionText: "Which top view does the object correspond to?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareD", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar1B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar2C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar3C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar4D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar5D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
         SPlist.append(AllQ(image: "SPCubeCompareVar6C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar7D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar8A", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar9A", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar10C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar11D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar12B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar13C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar14B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar15D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar16A", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar17D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar18C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar19C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar20D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar21B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar22B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar23B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar24D", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 4, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar26B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar26C", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 3, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeCompareVar27B", questionText: "Which cube matches the reference cube viewed from another perspective?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeViewsBackViewVar5B", questionText: "Which 2D net is  the object's back view?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 2, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeViewsRightViewVar6A", questionText: "Which 2D net is  the object's top view?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
        SPlist.append(AllQ(image: "SPCubeViewsVar7A", questionText: "Which 2D net is  the object's top view?", choiceA: "A", choiceB: "B", choiceC: "C", choiceD: "D", Answer: 1, Tag: 2))
        
        
        
//FIRST COMPILE ARRAY OF PROBLEMS INTO LIST

      
//AFTER COMPILING ARRAY,SORT USING PRIORITIZATION ALGROITHM
        
        //if globals.rank.signal == true
        //{
        func sortProblems()
        {
            if globals.rank.nums[2] != globals.rank.nums[1]
            {//If MR IS PRIORITY
                if globals.rank.nums[2] == globals.rank.MRScore
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    
                    //Other 2 categories only have 3 Qs (They not priority)
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                    
                }
                
                if globals.rank.nums[2] == globals.rank.SVQScore
                {
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                    
                }
                if globals.rank.nums[2] == globals.rank.SPQScore
                {
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                }
            }
                
                
                //IF 2 categories are ranked as top priorities equally
                
                //checking if all not equal
            else if globals.rank.nums[2] == globals.rank.nums[1] && globals.rank.nums[1] != globals.rank.nums[0]
            {
                
                if globals.rank.MRScore == globals.rank.SVQScore
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                }
                
                if globals.rank.MRScore == globals.rank.SPQScore
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                }
                
                if globals.rank.SVQScore == globals.rank.SPQScore
                {
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                }
                
            }
                
                //highest number of wrongs is 0 (PERSON GOT ALL QS CORRECT)
                
            else if globals.rank.nums[2] == 0
            {
                MRlist.shuffle()
                list.append(MRlist[0])
                list.append(MRlist[1])
                list.append(MRlist[2])
                list.append(MRlist[3])
                list.append(MRlist[4])
                
                SPlist.shuffle()
                list.append(SPlist[0])
                list.append(SPlist[1])
                list.append(SPlist[2])
                list.append(SPlist[3])
                list.append(SPlist[4])
                
                SVlist.shuffle()
                list.append(SVlist[0])
                list.append(SVlist[1])
                list.append(SVlist[2])
                list.append(SVlist[3])
                list.append(SVlist[4])
                
                
            }
                
                //all priorities ranked same but user got at least 1 wrong on each of them
            else
            {
                SPlist.shuffle()
                list.append(SPlist[0])
                list.append(SPlist[1])
                list.append(SPlist[2])
                list.append(SPlist[3])
                list.append(SPlist[4])
                list.append(SPlist[5])
                list.append(SPlist[6])
                list.append(SPlist[7])
                
                SVlist.shuffle()
                list.append(SVlist[0])
                list.append(SVlist[1])
                list.append(SVlist[2])
                list.append(SVlist[3])
                list.append(SVlist[4])
                list.append(SVlist[5])
                list.append(SVlist[6])
                list.append(SVlist[7])
                
                MRlist.shuffle()
                list.append(MRlist[0])
                list.append(MRlist[1])
                list.append(MRlist[2])
                list.append(MRlist[3])
                list.append(MRlist[4])
                list.append(MRlist[5])
                list.append(MRlist[6])
                list.append(MRlist[7])
                
            }
            
            
            
            
            
            
            
            
            if globals.rank.nums.count == 4
            {
                list.shuffle()
            }
            
            if globals.rank.nums.count != 4 && globals.rank.nums[2] > globals.rank.nums[1] && globals.rank.nums[1] > globals.rank.nums[0]
            {
                for _ in 0...2
                {
                    
                    for i in 0...list.count - 1
                    {
                        
                        //If MR IS PRIORITY
                        if globals.rank.nums[2] == globals.rank.MRScore
                        {
                            
                            if list[i].label == 0
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If SVQ is second priority, then move SPQ's (Tag:2) to end
                            if globals.rank.nums[1] == globals.rank.SVQScore && list[i].label == 2
                            {
                                let element = list.remove(at: (i))
                                list.insert(element, at: list.count)
                            }
                            //If SPQ is second priority, then move SPQ's (Tag:2) to end
                            if globals.rank.nums[1] == globals.rank.SPQScore
                            {
                                // print("I know SPQ is second priority")
                                
                                if list[i].label == 1 //if label is a SVQ
                                {
                                    // print("I know svq is third")
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                            
                            
                            
                            //If SVQ is priority
                        else if globals.rank.nums[2] == globals.rank.SVQScore
                        {
                            //SVQ tag = 1
                            if list[i].label == 1
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If MR is second priority, then move SPQ's (Tag:2) to end
                            if globals.rank.nums[1] == globals.rank.MRScore
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                            //If SPQ is second priority, then move MR (Tag:0) to end
                            if globals.rank.nums[1] == globals.rank.SPQScore
                            {
                                if list[i].label == 0 //if label is a MR
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                            //If SPQ is priority
                        else if globals.rank.nums[2] == globals.rank.SPQScore
                        {
                            //SPQ tag = 2
                            if list[i].label == 2
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If MR is second priority, then move SVQ's (Tag:1) to end
                            if globals.rank.MRScore == globals.rank.nums[1]
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                            //If SVQ is second priority, then move MR (Tag:0) to end
                            if globals.rank.SVQScore == globals.rank.nums[1]
                            {
                                if list[i].label == 0 //if label is a MR
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                    }
                }
            }
            if  globals.rank.nums.count != 4 && (globals.rank.nums[2] == globals.rank.nums[1] || globals.rank.nums[1] == globals.rank.nums[0])
            {
                list.shuffle()
                for _ in 0...2
                {
                    for i in 0...list.count - 1
                    {
                        //Second/third priority equal
                        if globals.rank.nums[0] == globals.rank.nums[1]
                        {
                            if globals.rank.nums[2] == globals.rank.MRScore
                            {
                                if list[i].label == 0
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                            else if globals.rank.nums[2] == globals.rank.SVQScore
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                            else if globals.rank.nums[2] == globals.rank.SPQScore
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                        }
                            //First/Second priority equal
                        else if globals.rank.nums[1] == globals.rank.nums[2]
                        {
                            if globals.rank.MRScore == globals.rank.SVQScore
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            else if globals.rank.MRScore == globals.rank.SPQScore
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            else if globals.rank.SVQScore == globals.rank.SPQScore
                            {
                                if list[i].label == 0
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            
                        }
                    }
                }
            }
            
        }
          //}
        
        
        func sortPercentageProblems()
        {
            practiceScoreArray = [Float(globals.rank.MRScore)/Float(MRQs), Float(globals.rank.SVQScore)/Float(SVQs), Float(globals.rank.SPQScore)/Float(SPQs)]
            practiceScoreArray.sort()
           
            if practiceScoreArray[2] != practiceScoreArray[1]
            {//If MR IS PRIORITY
                if practiceScoreArray[2] == Float(globals.rank.MRScore)/Float(MRQs)
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    
                    //Other 2 categories only have 3 Qs (They not priority)
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                    
                }
                
                if practiceScoreArray[2] == Float(globals.rank.SVQScore)/Float(SVQs)
                {
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                    
                }
                if practiceScoreArray[2] == Float(globals.rank.SPQScore)/Float(SPQs)
                {
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                }
            }
                
                
                //IF 2 categories are ranked as top priorities equally
                
                //checking if all not equal
            else if practiceScoreArray[2] == practiceScoreArray[1] && practiceScoreArray[1] != practiceScoreArray[0]
            {
                
                if Float(globals.rank.MRScore)/Float(MRQs) == Float(globals.rank.SVQScore)/Float(SVQs)
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    
                }
                
                if Float(globals.rank.MRScore)/Float(MRQs) == Float(globals.rank.SPQScore)/Float(SPQs)
                {
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    list.append(MRlist[5])
                    list.append(MRlist[6])
                    list.append(MRlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    
                }
                
                if Float(globals.rank.SVQScore)/Float(SVQs) == Float(globals.rank.SPQScore)/Float(SPQs)
                {
                    SVlist.shuffle()
                    list.append(SVlist[0])
                    list.append(SVlist[1])
                    list.append(SVlist[2])
                    list.append(SVlist[3])
                    list.append(SVlist[4])
                    list.append(SVlist[5])
                    list.append(SVlist[6])
                    list.append(SVlist[7])
                    
                    SPlist.shuffle()
                    list.append(SPlist[0])
                    list.append(SPlist[1])
                    list.append(SPlist[2])
                    list.append(SPlist[3])
                    list.append(SPlist[4])
                    list.append(SPlist[5])
                    list.append(SPlist[6])
                    list.append(SPlist[7])
                    
                    MRlist.shuffle()
                    list.append(MRlist[0])
                    list.append(MRlist[1])
                    list.append(MRlist[2])
                    list.append(MRlist[3])
                    list.append(MRlist[4])
                    
                }
                
            }
                
                //highest number of wrongs is 0 (PERSON GOT ALL QS CORRECT)
                
            else if practiceScoreArray[2] == 0
            {
                MRlist.shuffle()
                list.append(MRlist[0])
                list.append(MRlist[1])
                list.append(MRlist[2])
                list.append(MRlist[3])
                list.append(MRlist[4])
                
                SPlist.shuffle()
                list.append(SPlist[0])
                list.append(SPlist[1])
                list.append(SPlist[2])
                list.append(SPlist[3])
                list.append(SPlist[4])
                
                SVlist.shuffle()
                list.append(SVlist[0])
                list.append(SVlist[1])
                list.append(SVlist[2])
                list.append(SVlist[3])
                list.append(SVlist[4])
                
                
            }
                
                //all priorities ranked same but user got at least 1 wrong on each of them
            else
            {
                SPlist.shuffle()
                list.append(SPlist[0])
                list.append(SPlist[1])
                list.append(SPlist[2])
                list.append(SPlist[3])
                list.append(SPlist[4])
                list.append(SPlist[5])
                list.append(SPlist[6])
                list.append(SPlist[7])
                
                SVlist.shuffle()
                list.append(SVlist[0])
                list.append(SVlist[1])
                list.append(SVlist[2])
                list.append(SVlist[3])
                list.append(SVlist[4])
                list.append(SVlist[5])
                list.append(SVlist[6])
                list.append(SVlist[7])
                
                MRlist.shuffle()
                list.append(MRlist[0])
                list.append(MRlist[1])
                list.append(MRlist[2])
                list.append(MRlist[3])
                list.append(MRlist[4])
                list.append(MRlist[5])
                list.append(MRlist[6])
                list.append(MRlist[7])
                
            }
            
            
            
            
            
            
            
            
            
            
            if practiceScoreArray.count == 4
            {
                list.shuffle()
            }
            
            if practiceScoreArray.count != 4 && practiceScoreArray[2] > practiceScoreArray[1] && practiceScoreArray[1] > practiceScoreArray[0]
            {
                for _ in 0...2
                {
                    
                    for i in 0...list.count - 1
                    {
                        
                        //If MR IS PRIORITY
                        if practiceScoreArray[2] == Float(globals.rank.MRScore)/Float(MRQs)
                        {
                            
                            if list[i].label == 0
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If SVQ is second priority, then move SPQ's (Tag:2) to end
                            if practiceScoreArray[1] == Float(globals.rank.SVQScore)/Float(SVQs) && list[i].label == 2
                            {
                                let element = list.remove(at: (i))
                                list.insert(element, at: list.count)
                            }
                            //If SPQ is second priority, then move SPQ's (Tag:2) to end
                            if practiceScoreArray[1] == Float(globals.rank.SPQScore)/Float(SPQs)
                            {
                                // print("I know SPQ is second priority")
                                
                                if list[i].label == 1 //if label is a SVQ
                                {
                                    // print("I know svq is third")
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                            
                            
                            
                            //If SVQ is priority
                        else if practiceScoreArray[2] == Float(globals.rank.SVQScore)/Float(SVQs)
                        {
                            //SVQ tag = 1
                            if list[i].label == 1
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If MR is second priority, then move SPQ's (Tag:2) to end
                            if practiceScoreArray[1] == Float(globals.rank.MRScore)/Float(MRQs)
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                            //If SPQ is second priority, then move MR (Tag:0) to end
                            if practiceScoreArray[1] == Float(globals.rank.SPQScore)/Float(SPQs)
                            {
                                if list[i].label == 0 //if label is a MR
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                            //If SPQ is priority
                        else if practiceScoreArray[2] == Float(globals.rank.SPQScore)/Float(SPQs)
                        {
                            //SPQ tag = 2
                            if list[i].label == 2
                            {
                                //print("I came into the second if") 0  0 1 2
                                let element = list.remove(at: (i))
                                list.insert(element, at: 0)
                            }
                            //If MR is second priority, then move SVQ's (Tag:1) to end
                            if Float(globals.rank.MRScore)/Float(MRQs) == practiceScoreArray[1]
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                            //If SVQ is second priority, then move MR (Tag:0) to end
                            if Float(globals.rank.SVQScore)/Float(SVQs) == practiceScoreArray[1]
                            {
                                if list[i].label == 0 //if label is a MR
                                {
                                    let element = list.remove(at: (i))
                                    list.insert(element, at: list.count)
                                }
                            }
                        }
                    }
                }
            }
            if  practiceScoreArray.count != 4 && (practiceScoreArray[2] == practiceScoreArray[1] || practiceScoreArray[1] == practiceScoreArray[0])
            {
                list.shuffle()
                for _ in 0...2
                {
                    for i in 0...list.count - 1
                    {
                        //Second/third priority equal
                        if practiceScoreArray[0] == practiceScoreArray[1]
                        {
                            if practiceScoreArray[2] == Float(globals.rank.MRScore)/Float(MRQs)
                            {
                                if list[i].label == 0
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                            else if practiceScoreArray[2] == Float(globals.rank.SVQScore)/Float(SVQs)
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                            else if practiceScoreArray[2] == Float(globals.rank.SPQScore)/Float(SPQs)
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: 0)
                                }
                            }
                        }
                            //First/Second priority equal
                        else if practiceScoreArray[1] == practiceScoreArray[2]
                        {
                            if Float(globals.rank.MRScore)/Float(MRQs) == Float(globals.rank.SVQScore)/Float(SVQs)
                            {
                                if list[i].label == 2
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            else if Float(globals.rank.MRScore)/Float(MRQs) == Float(globals.rank.SPQScore)/Float(SPQs)
                            {
                                if list[i].label == 1
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            else if Float(globals.rank.SVQScore)/Float(SVQs) == Float(globals.rank.SPQScore)/Float(SPQs)
                            {
                                if list[i].label == 0
                                {
                                    let element = list.remove(at: i)
                                    list.insert(element, at: list.count)
                                }
                            }
                            
                        }
                    }
                }
            }
            
        }
        
        
        
        
        
        
        
        
        
        if SessionCount != 0
        {
        sortPercentageProblems()
        }
        
        else
        {
        sortProblems()
        }
            print("OG LIST")
           // var array = Array()
            for i in 0...list.count - 1
            {
            print(list[i].label)
            globals.rank.array.append(list[i].label)
            }
            globals.rank.list2 = list
        }
    
    
    
    
}
