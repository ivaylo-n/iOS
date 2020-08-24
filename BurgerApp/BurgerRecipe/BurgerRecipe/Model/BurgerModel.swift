//
//  BurgerModel.swift
//  BurgerRecipe
//
//  Created by Ivaylo on 8/18/20.
//  Copyright © 2020 Ivaylo Nedelchev. All rights reserved.
//

import Foundation

class BurgerModel {
    
    private(set) var burgers: [Burger] = []
    
    init() {
        if let url = Bundle.main.url(forResource: "Supporting Files/BurgerResources/burgers", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                burgers = try JSONDecoder().decode([Burger].self, from: data)
            } catch {
                print(error)
            }
        }
    }
    
    func burgers(forType type: BurgerType?) -> [Burger] {
        guard let type = type else { return burgers }
        return burgers.filter { $0.type == type }
    }
    
    func add(burger: Burger) {
        burgers.append(burger)
    }
}
