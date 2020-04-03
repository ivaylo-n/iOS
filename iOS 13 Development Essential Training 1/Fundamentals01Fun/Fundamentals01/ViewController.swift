//
//  ViewController.swift
//  Fundamentals01
//
//  Created by Ivaylo on 1/28/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Changed with Code!"
        firstName.becomeFirstResponder()
        firstName.delegate = self
        lastName.delegate = self
    }


    @IBAction func buttonWasPressed(_ sender: Any) {
        myLabel.text = "Hello \(firstName.text!) \(lastName.text!)!"
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

