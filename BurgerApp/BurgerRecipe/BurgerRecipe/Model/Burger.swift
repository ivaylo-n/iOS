//
//  Burger.swift
//  BurgerRecipe
//
//  Created by Ivaylo on 8/18/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import Foundation

struct Burger: Decodable {
    var name: String
    var ingredients: String
    var imageName: String
    var thumbnailName: String
    var type: BurgerType
}

enum BurgerType: String, Decodable {
    case vegeterian = "vegeterian"
    case meat = "meat"
}
