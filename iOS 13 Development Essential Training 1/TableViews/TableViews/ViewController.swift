//
//  ViewController.swift
//  TableViews
//
//  Created by Ivaylo on 4/10/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.text = text
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.text = text
    }
}

