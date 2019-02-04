//
//  ViewController.swift
//  ClosureExercise
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var presentStatus: UILabel!
    @IBOutlet weak var alertStatus: UILabel!
    @IBOutlet weak var alertButton: UIButton!
    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Demo Alert", message: "Some Closure examples", preferredStyle: .alert)
        //Actions for methods like alerts often use closures to do the action
        let actionOne = UIAlertAction(title: "First Action", style: .default) { (action) in
             //This is on a seperate thread so use self to access the elclosing class' methods and properties.
            self.alertStatus.text = "First Action"
            //this is on a seperate thread so use self to access the elclosing class' methods and properties.
        }
        let actionTwo = UIAlertAction(title: "Second Action", style: .default) { (action) in
            //This is on a seperate thread so use self to access the elclosing class' methods and properties.
            self.alertStatus.text = "Second Action"
        }
        // Closures can be optional, and then you can set the value to nil if you don't plan to use it. Make sure you handle the nil in the method though.
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alert.addAction(actionOne)
        alert.addAction(actionTwo)
        alert.addAction(cancelAction)
        
        // The present function has a closure we usually leave nil,but if you have cleanup after you launch the method, this is where you do it. Here I print a status message.
        present(alert, animated: true) {
            self.presentStatus.text = "Presented Alert"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertButton.layer.cornerRadius = 20
        // Do any additional setup after loading the view, typically from a nib.
    }


}

