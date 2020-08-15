//
//  ViewController.swift
//  activity_indicator
//
//  Created by Ivaylo on 8/15/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activity_indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func slider(_ sender: UISlider) {
        progressView.progress = sender.value
        if progressView.progress >= 1.0 {
            activity_indicator.stopAnimating()
        } else {
            activity_indicator.startAnimating()
        }
    }
    
}

