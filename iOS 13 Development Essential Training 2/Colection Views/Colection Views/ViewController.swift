//
//  ViewController.swift
//  Colection Views
//
//  Created by Ivaylo on 8/16/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var item:Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(String(describing: item?.title))")
    }
}

