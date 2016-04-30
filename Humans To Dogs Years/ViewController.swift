//
//  ViewController.swift
//  Humans To Dogs Years
//
//  Created by Fabian Vergara on 2016-04-29.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInput: UITextField!
    @IBOutlet var age: UILabel!
    @IBOutlet var humanYearsLabel: UILabel!
    
    
    @IBAction func findAgeButton(sender: AnyObject) {
        
        var tempAge = 0
        let ageGivenByUser = Int(userInput.text!)!
        var dogsAgeCounter = 0
        
        
        while (dogsAgeCounter < ageGivenByUser){
            
            if dogsAgeCounter == 0{
                tempAge = tempAge + 15
            }else if (dogsAgeCounter == 1){
                tempAge = tempAge + 9
            }else{
                tempAge = tempAge + 4
            }
            dogsAgeCounter += 1
            
        }
        
        age.text = String(tempAge)
        age.hidden = false
        humanYearsLabel.hidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

