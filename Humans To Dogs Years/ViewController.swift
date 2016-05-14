//
//  ViewController.swift
//  Humans To Dogs Years
//
//  Created by Fabian Vergara on 2016-04-29.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userInput: UITextField!
    @IBOutlet var age: UILabel!
    @IBOutlet var humanYearsLabel: UILabel!
    
    
    @IBAction func findAgeButton(sender: AnyObject) {
        
        var tempAge = 0
        let ageGivenByUser = Int(userInput.text!)
        var dogsAgeCounter = 0
        
        print(ageGivenByUser)
        
        if (ageGivenByUser == nil){
            setAgeLabel("Please enter a valid age", color:UIColor.redColor(), size: 14.0, modifyHumanYearsLabel: true)
            
        }else{
            
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
            setAgeLabel(String(tempAge), color:UIColor.blackColor(), size: 32.0, modifyHumanYearsLabel: false)

        }
    }
    
    func setAgeLabel(str:String, color:UIColor, size:CGFloat, modifyHumanYearsLabel:Bool){
        age.text = str
        age.font = age.font.fontWithSize(size)
        
        age.textColor = color
        age.hidden = false
        
        if (modifyHumanYearsLabel){
            humanYearsLabel.hidden = true
        }else{
            humanYearsLabel.hidden = false
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userInput.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    


}

