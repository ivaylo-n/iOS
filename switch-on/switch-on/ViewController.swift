//
//  ViewController.swift
//  switch-on
//
//  Created by Ivaylo on 8/15/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb_switch: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChabged(_ sender: UISwitch) {
        lb_switch.text = sender.isOn ? "On" : "Off"
    }
    
}

