//
//  SecondViewController.swift
//  Interview Flash Cards
//
//  Created by keith Nguyen on 2/16/18.
//  Copyright © 2018 CodingDojo. All rights reserved.
//

import UIKit

class BehavioralViewController: UIViewController {
    
    let behavioralquizBank = [
        ("Action-oriented / self-motivation",". Describe a situation when you did much more than it was expected from you to get the project done. Were your efforts recognized? By whom and how? How did that make you feel?"),
        ("Action-oriented / self-motivation",". Tell me about a time when you took ownership of a project. Why did you do this? What was the result of you taking the challenge? What could have happened if you did not take ownership?"),
        ("Action-oriented / self-motivation","Think about an instance in which you came up with a project idea which was implemented primarily because of your efforts. What was it about? What was its outcome? What was your role?"),
        ("Action-oriented / self-motivation"," Describe a time when you made a suggestion to improve something on the project that you were working on"),
        ("Action-oriented / self-motivation","Give me an example of the project or initiative that you started on your own. It can be a non-business one. What prompted you to get started?"),
        ("Ability to adapt"," Describe a situation in which you met a major obstacle in order to complete a project. How did you deal with it? What steps did you take?"),
        ("Ability to adapt","Tell me about a time you had to work on several projects at once. How did you handle this?"),
        ("Ability to adapt","Describe a situation on which you have experienced significant project change that you weren’t expecting. What was it? How did that impact you, and how did you adapt to this change? How did you remain productive through the project?"),
        ("Ability to adapt","Describe a situation in which you had to adjust to changes over which you had no control. How did you do this?"),
        ("Communication skills"," I’d be interested in hearing about a miscommunication you had with your supervisor. How did you solve it? What was the reason for that? How did you deal with that situation?"),
        ("Communication skills"," Tell me about an instance when you had to communicate a really bad piece of news to your supervisor or team members. How did you handle it? What was the outcome?"),
        ("Communication skills","Give an example of a time when you didn’t agree with other programmer. Did you stand up for something that you believed was right?"),
        ("Communication skills"," Tell me about a time when you had to present complex programming problem to a person that doesn’t understand technical jargon. How did you ensure that the other person understood you?"),
        ("Communication skills"," Describe a situation in which you felt you had not communicated well enough. What did you do? How did you handle it?"),
        ("Communication skills","Tell me about a situation that you had to speak up and be assertive in order to get a point across that was important for you."),
        ("Conflict management","Tell me about a time when you had a disagreement with other programmer. How did you handle the situation? Were you able to reach a mutually beneficial resolution to that conflict? If not, why were you and your co-worker unable to reach a mutually beneficial resolution? If you knew then what you know now, what would you have done differently to either prevent the conflict, or to resolve it?"),
        ("Conflict management","Tell me about a time when you had to work with a difficult person to accomplish a goal. What was the biggest challenge? How did you handle it?"),
        ("Conflict management","Has there been a time on project when you disagreed with someone? What did you do about it?"),
        ("Conflict management","Tell me about when you had to deal with conflict within your team. How was the conflict solved? How did you handle that? How would you deal with it now?"),
        ("Creativity",""),
        ("Conflict management"," Give me an example of a time you had to take a creative and unusual approach to solve coding problem. How did this idea come to your mind? Why do you think it was unusual?"),
        ("Decision making"," Give me an example of a time when you were faced with a complex project related matter and you could not decide on the best way to deal with. What did you do? How did you go about making the decision – lead me through your decision process? If you could make the decision once again, would you change anything"),
        ("Decision making","Think about an instance in which you made a decision at work that was unpopular. How did you handle it?"),
        ("Decision making","Give me an example of a project that completely failed. Why do you think it was a failure? Could there be anything done differently in order to turn it into success?"),
        ("Decision making","Describe a situation in which you worked diligently on a project and it did not produce the desired results. Why didn’t you get the desired results? What did you learn from the experience?"),
        ("Decision making","Think about a situation when you made a poor decision or did something that just didn’t turn out right. What happened?"),
        ("Goal orientation","Give an example of an important project goal you reached and how you achieved it."),
        ("Goal orientation","Think about an instance in which you worked on and achieved multiple project goals."),
        ("Goal orientation","Describe a circumstance when you were not able to achieve a project goal that was set by your supervisor. How did you handle this situation? What was the outcome?"),
        ("Goal orientation","Think about an instance in which you had to depend on others to help you achieve a project goal. How did you feel?"),
        ("Influence/persuasion"," Tell me about a recent situation at work in which you were able to get management to accept one of your ideas."),
        ("Influence/persuasion","Describe a situation in which you experienced difficulty in getting others to accept your ideas? What was your approach? How did this work? Were you able to successfully persuade someone to see things your way?"),
        ("Influence/persuasion"," Have you ever had to “sell” an idea to your project team? How did you do it? Did they “buy” it?"),
        ("Planning, priority setting, time management","Tell me about a situation when you were responsible for project planning. Did everything go according to your plan? If not, then why and what kind of counteractions did you have to take?"),
        ("Problem solving skills","Tell me about a situation when you made a mistake at work. What happened exactly and how did you deal with it? What steps did you take to improve the situation?"),
        ("Problem solving skills"," What is the biggest problem you have faced on projects so far and how did you solve it? What made the problem difficult to resolve? What was the result? Would you do anything differently now?"),
        ("Problem solving skills","Give me an example of a time when you noticed a small problem before it turned into a major one. Did you take the initiative to correct it? What kind of preventive measure did you undertake?"),
        ("Problem solving skills","Walk me through a difficult/complex problem/project you encountered. How did you decide what to do first? What information did you need? What obstacles did you face? Which ones were you able to overcome? Did you have to ask for help?"),
        ("Teamwork","Tell me about a time when you worked with someone who was not completing his or her share of the work. How did you handle the situation? Did you discuss your concern with your coworker? With your manager? If yes, how did your coworker respond to your concern? What was your manager’s response?"),
        ("Teamwork"," Describe a situation where you had to work in a team that didn’t get on very well. What happened? What did you do and what role did you take? How did the situation evolve? 40. Describe a team experience you found disappointing. What would you have done to prevent this?"),
        ("Teamwork"," Give me an example of working cooperatively as a team member to accomplish an important goal. What was the objective? To what extent did you interact with other project members?"),
        ("Teamwork"," Tell me about the most difficult situation you have had when leading a team. What happened and how did you handle it? Were you successful? What was the most important thing you did?"),
        ("Working under pressure","Describe a situation when you worked effectively under pressure. How did you feel when working under pressure? What was going on, and how did you get through it?"),
        ("Working under pressure","Tell me about a situation when you had problems working under pressure. How did you handle that situation? Did you decide to ask for support? How and when did you ask for help?"),
        ("Working under pressure"," Give me a recent example of a stressful situation on the job. What happened? How did you handle it?"),
     ]
    
    var currentquestion = 0
    
    
    @IBOutlet weak var behavorialLabel: UILabel!
    
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBAction func questionButtonPressed(_ sender: UIButton) {
        if currentquestion < behavioralquizBank.count - 1{
            currentquestion = Int(arc4random_uniform(UInt32(behavioralquizBank.count)))
        }
        else{
            currentquestion = 0
        }
        updateUI()
    }
    
    func updateUI(){
          behavorialLabel.text = behavioralquizBank[currentquestion].1
          headerLabel.text = behavioralquizBank[currentquestion].0
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

