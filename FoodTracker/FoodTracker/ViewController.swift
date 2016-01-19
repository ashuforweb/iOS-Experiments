//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ashutosh singh on 1/18/16.
//  Copyright © 2016 ashuvashu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
// MARK: Properties
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: UITestFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
        
    }
}

