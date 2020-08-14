//
//  Book.swift
//  FlowUnitTest
//
//  Created by Ivaylo on 8/14/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import UIKit

class Book: NSObject {
    
    static let default_title = "Name"
    
    var title: String = default_title
    var pageCount: Int = 0
    
    override init() {
        
    }
    
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
    }

}

