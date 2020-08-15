//
//  ViewController.swift
//  Share_data
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
        let activityView = UIActivityViewController(activityItems: ["Data from my App"], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
    
}

