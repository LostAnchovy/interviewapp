//
//  FirstViewController.swift
//  Interview Flash Cards
//
//  Created by keith Nguyen on 2/16/18.
//  Copyright © 2018 CodingDojo. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    let generalquizBank = [
        ("General","Give an example of an occasion when you used logic to solve a problem?"),
        ("General","Give an example of a goal you reached and tell me how you achieved it?"),
        ("General","Give an example of a goal you didn't meet and how you handled it?"),
        ("General","Describe a stressful situation at work and how you handled it?"),
        ("General","Tell me about how you worked effectively under pressure?"),
        ("General","How do you handle a challenge?"),
        ("General","Have you been in a situation where you didn't have enough work to do?"),
        ("General","Have you ever made a mistake? How did you handle it?"),
        ("General","Describe a decision you made that was unpopular and how you handled implementing it."),
        ("General","Did you ever make a risky decision? Why? How did you handle it?"),
        ("General","Did you ever postpone making a decision? Why?"),
        ("General","Have you ever dealt with company policy you weren't in agreement with? How?"),
        ("General","Have you gone above and beyond the call of duty? If so, how?"),
        ("General","When you worked on multiple projects how did you prioritize?"),
        ("General","How did you handle meeting a tight deadline?"),
        ("General","Give an example of how you set goals and achieve them."),
        ("General","Did you ever not meet your goals? Why?"),
        ("General","What do you do when your schedule is interrupted? Give an example of how you handle it"),
        ("General","Have you had to convince a team to work on a project they weren't thrilled about? How did you do it?"),
        ("General","Give an example of how you've worked on a team."),
        ("General","Have you handled a difficult situation with a co-worker? How?"),
        ("General","What do you do if you disagree with a co-worker?"),
        ("General","Share an example of how you were able to motivate employees or co-workers."),
        ("General","Do you listen? Give an example of when you did or when you didn't listen."),
        ("General","Have you handled a difficult situation with a supervisor? How?"),
        ("General","Have you handled a difficult situation with another department? How?"),
        ("General","Have you handled a difficult situation with a client or vendor? How?"),
        ("General","What do you do if you disagree with your boss?"),
    ]
    
    var currentquestion = 0
    
    
    @IBOutlet weak var generalLabel: UILabel!

    

    @IBAction func generalButtonPressed(_ sender: UIButton) {
        if currentquestion < generalquizBank.count - 1{
        currentquestion = Int(arc4random_uniform(UInt32(generalquizBank.count)))
        }
        else{
            currentquestion = 0
        }
        updateUI()
    }
    
    func updateUI(){
        generalLabel.text = generalquizBank[currentquestion].1
        headerLabel.text = generalquizBank[currentquestion].0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

