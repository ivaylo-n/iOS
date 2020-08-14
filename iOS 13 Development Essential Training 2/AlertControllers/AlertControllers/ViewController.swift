//
//  ViewController.swift
//  AlertControllers
//
//  Created by Ivaylo on 8/14/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Title", message: "Hello", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("all done")
        }
        alertController.addAction(alertAction)
        present(alertController,animated: true, completion: nil)
    }
    
}

