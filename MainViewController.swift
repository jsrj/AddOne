//
//  MainViewController.swift
//  AddOne
//
//  Created by Arjay Jones on 12/26/17.
//  Copyright © 2017 ArjayCodes. All rights reserved.
//

// Use functionality from UIKit
import UIKit



// Inherit code from the UIViewController superclass
class MainViewController: UIViewController {
    var numberValue:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Connects code to elements of the xib Interface Builder file.
    @IBOutlet weak var numberLabel: UILabel? // Number display
    @IBOutlet weak var tickButton: UIButton? // Button to increment number
    
    func setNumber()
    {
        numberLabel?.text = "\(numberValue)"
    }
    
    // Custom function that simply increments the current number when button is pressed.
    // Takes one integer parameter, and returns a value of type integer.
    func addOneTo(currentNumber: Int) -> String
    {
        return String(currentNumber + 1)
    }
    
    
    @IBAction func CountUp( sender: UIButton){
        numberValue += 1
        setNumber()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
