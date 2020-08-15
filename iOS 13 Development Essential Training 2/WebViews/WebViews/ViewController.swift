//
//  ViewController.swift
//  WebViews
//
//  Created by Ivaylo on 8/15/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didPressButton(_ sender: UIButton) {
        if let url = URL(string: "https://google.com") {
            let safariVC = SFSafariViewController(url: url)
            safariVC.delegate = self
            present(safariVC, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("finished!")
    }
}

