//
//  ViewController.swift
//  Plain Ol' Pasteboard
//
//  Created by Ivaylo on 1/26/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    let DATA_KEY = "data_key"
    
    var pastedStrings: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let loadedStrings = UserDefaults.standard.stringArray(forKey: DATA_KEY) {
            pastedStrings.append(contentsOf: loadedStrings)
        }
        showText()
    }

    func addText() {
        guard let text = UIPasteboard.general.string, !pastedStrings.contains(text) else {
            return
        }
        pastedStrings.append(text)
        UserDefaults.standard.set(pastedStrings, forKey: DATA_KEY)
        showText()
    }
    
    func showText() {
        textView.text = ""
        for str in pastedStrings {
            textView.text.append("\(str)\n\n")
        }
    }
    
    @IBAction func trashWasPressed(_ sender: Any) {
        pastedStrings.removeAll()
        textView.text = ""
        UserDefaults.standard.removeObject(forKey: DATA_KEY)
    }
    
}

