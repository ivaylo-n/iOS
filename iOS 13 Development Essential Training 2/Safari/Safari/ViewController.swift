//
//  ViewController.swift
//  Safari
//
//  Created by Ivaylo on 8/15/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressButton(_ sender: Any) {
        if let url = URL(string: "https://google.com") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

