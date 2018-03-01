//
//  SecondViewController.swift
//  Interview Flash Cards
//
//  Created by keith Nguyen on 2/16/18.
//  Copyright © 2018 CodingDojo. All rights reserved.
//

import UIKit

class TechnicalViewController: UIViewController {
    
    @IBOutlet weak var technicalLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBAction func techncialButtonPressed(_ sender: UIButton) {
        if currentquestion < TechnicalquizBank.count - 1{
            currentquestion = Int(arc4random_uniform(UInt32(TechnicalquizBank.count)))
        }
        else{
            currentquestion = 0
        }
        updateUI()
    }
    
    func updateUI(){
        technicalLabel.text = TechnicalquizBank[currentquestion].1
        headerLabel.text = TechnicalquizBank[currentquestion].0
    
    }
   
    var currentquestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let TechnicalquizBank = [
        ("HTML","what is html?"),
        ("HTML","what is the function of the <fieldset> tag in html?"),
        ("HTML","give an example of 3 html block elements."),
        ("HTML","give an example of 3 html inline elements."),
        ("HTML","name 3 new input types added in html5."),
        ("Javascript","can you explain the client server model?"),
        ("Javascript","what is javascript?"),
        ("Javascript","where is javascript interpreted?"),
        ("CSS","What is a Style Sheet?"),
        ("CSS","How can I include comments in my Style Sheet?"),
        ("CSS","How do I center block­elements"),
        ("CSS","Which browsers support CSS?"),
        ("CSS","Name three ways to define a color in CSS"),
        ("CSS","Explain the difference between visibility:hidden; and display:none"),
        ("CSS","what is the difference between inline and inline­block"),
        ("CSS","what are the advantages/disadvantages of the three methods of applying style to elements?"),
        ("Javascript","Explain the DOM and how we interact with it in Javascript"),
        ("Javascript","what 3 common objects are used in our interaction with the DOM?"),
        ("CSS","name 3 new features added in css3, and steps we must take to ensure cross­browser support"),
        ("Python","What is the statement that can be used in Python if a statement is required syntactically but the program requires no action?"),
        ("Python","What is a python lambda and in what situation might I need to use one?"),
        ("Python","Name five Python modules in the stdlib, and five non­standard Python modules."),
        ("Python","Walk through the steps of installing a third­party Python package or module."),
        ("Python","What is PEP 8?"),
        ("Python","What does the 'with' statement do?"),
        ("Python","What is __init__.py?"),
        ("Python","What is scope in python?"),
        ("Python","Define a method in Python?"),
        ("Python","Define self?"),
        ("Python","Describe python usage in web programming?"),
        ("Python","Explain the rules for local and global variables in python?"),
        ("Python","How could I go about finding the methods or attributes of an object if I do not have access to the code that created it?"),
        ("Python","Define class?"),
        ("Python","Explain how python is interpreted."),
        ("Python","Explain the difference between a tuple and a list, and give at least one example of when one would want to use a tuple."),
        ("Python","Are double quotes single quotes used for String representation in Python?"),
        ("Python","Does Python strongly support regular expressions?"),
        ("Python","What is list comprehension in Python?"),
        ("MEAN","what are some benefits of client side rendering vs back end rendering?"),
        ("MEAN","does every request need to be paired with a response?"),
        ("MEAN","mongoDB stores ____?"),
        ("MEAN","what is JSON and what are some uses for it?"),
        ("MEAN","what is ES6 and how does it relate to Javascript?"),
        ("MEAN","true or false, one server only has one database? explain"),
        ("MEAN","how do we run javascript on the backend?"),
        ("MEAN","which is more secure, the client or the server?"),
        ("MEAN","in javascript, strings are immutable, what does this mean?"),
        ("MEAN","what kind of scoping does javascript use to store variables?"),
        ("MEAN","name three different kinds of javascript loops"),
        ("MEAN","what can be stored in a JSON attribute?"),
        ("MEAN","what is an IDE?"),
        ("MEAN","what’s the difference between a terminal and an IDE?"),
        ("MEAN","what happens when you try to run alert(‘hello’) on Node?"),
        ("MEAN","imagine you’re looping through an array of a hundred elements. why would that loop run slower on a browser than in node?"),
        ("MEAN","explain garbage collection in javascript"),
        ("MEAN","javascript is a true OOP language, true or false. explain"),
        ("MEAN","how do you write class methods in javascript?"),
        ("MEAN","how do you instantiate a class in javascript?"),
        ("MEAN","explain the var keyword"),
        ("MEAN","explain ‘use strict’ in javascript"),
        ("MEAN","explain when semicolons are required in javascript"),
        ("MEAN","in what places does the , character appear in javascript? (hint, there are at least three)"),
        ("Rails","what is CSRF? How does Rails protect against it?"),
        ("Rails","Explain how (almost) everything is an object in Ruby:"),
        ("Rails","What’s your favorite testing tool?"),
        ("Rails","What are Gems and which are some of your favorites?"),
        ("Rails","What is the difference between a class and a module?"),
        ("Rails","How does a symbol differ from a string?"),
        ("Rails","How would you create getter and setter methods in Ruby?"),
        ("Rails","Describe the difference between class and instance variables?"),
        ("Rails","What are the three levels of method access control for classes and what do they signify? What do they imply about the method?"),
        ("Rails","What does self mean?"),
        ("Rails","What is a Proc?"),
        ("Rails","What is your favorite api resource for ruby?"),
        ("Rails","What are open classes and does ruby allow you to do this?"),
        ("IOS","What are the benefits of swift over objective c?"),
        ("IOS","Swift is a compiled, compare this to an interpreted language."),
        ("IOS","Explain the difference between value types and reference types."),
        ("IOS","What is the difference between classes and structs?"),
        ("IOS","Explain a situation where a struct would be needed instead of a class."),
        ("IOS","Your project requires you to make http request to an outside server, what do you need to do for your app to allow this to happen?"),
        ("IOS","What is a protocol? Give a use case for one"),
        ("IOS","What the difference between let vs var and which one should you always try to use if you can?"),
        ("IOS","What is an optional?"),
        ("IOS","What is optional binding and when should you use it?"),
        ]
}

