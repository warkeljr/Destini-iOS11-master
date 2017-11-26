//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 warcom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var endOfStoryLbl: UILabel!
    @IBOutlet weak var homeBtn: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    
    var storyIndex : Int = 1
    
    let story1 = DataserviceStories().storyBank[0]
    let story2 = DataserviceStories().storyBank[1]
    let story3 = DataserviceStories().storyBank[2]
    let story4 = DataserviceStories().storyBank[3]
    let story5 = DataserviceStories().storyBank[4]
    let story6 = DataserviceStories().storyBank[5]
    
    let answer1 = DataserviceAnswers().answerBank[0]
    let answer2 = DataserviceAnswers().answerBank[1]
    let answer3 = DataserviceAnswers().answerBank[2]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        newRound()
        
        
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // TODO Step 4: Write an IF-Statement to update the views
        if sender.tag == 1 {
            
            switch storyIndex {
                
            case 1:
                story3Choice()
            case 2:
                story3Choice()
            case 3:
                story6Choice()
            default:
                newRound()
                
            }
            
        }
        else if sender.tag == 2 {
            
            switch storyIndex {
                
            case 1:
                story2Choice()
            case 2:
                story4Choice()
            case 3:
                story5Choice()
            default:
                newRound()
                
            }
            
        }
        
    }
    @IBAction func homePressed(_ sender: Any) {
        
        newRound()
    }
    
    func newRound() {
        storyTextView.text = story1.story
        topButton.isHidden = false
        topButton.setTitle(answer1.answerA, for: .normal)
        bottomButton.isHidden = false
        bottomButton.setTitle(answer1.answerB, for: .normal)
        endOfStoryLbl.isHidden = true
        homeBtn.isHidden = true
        storyIndex = 1
        print("This is story \(storyIndex)")
    }
    
    func story2Choice() {
        storyTextView.text = story2.story
        topButton.setTitle(answer2.answerA, for: .normal)
        bottomButton.setTitle(answer2.answerB, for: .normal)
        endOfStoryLbl.isHidden = true
        homeBtn.isHidden = true
        storyIndex = 2
        print("This is story \(storyIndex)")
    }
    
    func story3Choice() {
        storyTextView.text = story3.story
        topButton.setTitle(answer3.answerA, for: .normal)
        bottomButton.setTitle(answer3.answerB, for: .normal)
        endOfStoryLbl.isHidden = true
        homeBtn.isHidden = true
        storyIndex = 3
        print("This is story \(storyIndex)")
    }
    
    func story4Choice() {
        storyTextView.text = story4.story
        topButton.isHidden = true
        bottomButton.isHidden = true
        endOfStoryLbl.isHidden = false
        endOfStoryLbl.layer.opacity = 0.1
        theEndAnimation()
        homeBtn.isHidden = false
        storyIndex = 4
        print("This is story \(storyIndex)")
    }
    
    func story5Choice() {
        storyTextView.text = story5.story
        topButton.isHidden = true
        bottomButton.isHidden = true
        endOfStoryLbl.isHidden = false
        endOfStoryLbl.layer.opacity = 0.1
        theEndAnimation()
        homeBtn.isHidden = false
        storyIndex = 5
        print("This is story \(storyIndex)")
    }
    
    func story6Choice() {
        storyTextView.text = story6.story
        topButton.isHidden = true
        bottomButton.isHidden = true
        endOfStoryLbl.isHidden = false
        endOfStoryLbl.layer.opacity = 0.1
        theEndAnimation()
        homeBtn.isHidden = false
        storyIndex = 6
        print("This is story \(storyIndex)")
    }
    
    func theEndAnimation() {
        UIView.animate(withDuration: 0.8) {
            self.endOfStoryLbl.layer.opacity = 1.0
            self.endOfStoryLbl.textColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            
        }
    }
}

