//
//  ViewController.swift
//  ui_with_code
//
//  Created by Ivaylo on 8/15/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton (type: .system)
        button.frame = CGRect(x: 10, y: 100, width: 100, height: 20)
        button.setTitle("My Button", for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonWasPressed), for: .touchUpInside)
    }

    @objc func buttonWasPressed(_ sender: UIButton) {
        print("Button wad pressed")
    }
}

