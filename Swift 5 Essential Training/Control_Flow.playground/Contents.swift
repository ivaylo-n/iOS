import UIKit

var currentHealth = 100
var maxHealth = 100

// if statemnt
if currentHealth >= maxHealth {
    print("HP is at maximum")
} else if currentHealth <= 50{
    print("Grab some health soon! ")
} else {
    print("HP is between 50 and 100")
}

if currentHealth > 90 || currentHealth <= maxHealth {
    print("You're doing just fine")
}

/* Unwrapping Optionals */
// Test variables
var itemGathered: String? = "Diamond Longsword"
var isShopOpen: Bool?

var blacksmithShop: [String:Int] = ["Bottle":10, "Shield":15, "Ocarina":100]
var questDirectory = [
    "Fetch Gemstones": [
        "Objective": "Retreve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
        
    ],
    "Defeat Big Boss": [
    "Objective": "Beat the ultimate boss",
    "Secret":"Win with 50% health left"
    ]
]

// Optional binding
if let item = itemGathered {
    print("You found an \(item)")
} else {
    print("Sorry no item found")
}

if let shopOpen = isShopOpen, let searchedItem = blacksmithShop["Shield"] {
    print("We're open \(shopOpen) and we have a \(searchedItem) in stock!")
} else {
    print("Sorry, either we're not open or dont' have your item")
}

if let fetchGems = questDirectory["Detch Gemstones"]?["Objective"] {
    print("Active quest object: \(fetchGems)")
} else {
    print("That quest is no longer available")
}

/* Using FOR-IN Loops */
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate", "Hunter Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Drager":25, "Mace":75]

// Strings and arrays
for stringCharacter in playerGreeting {
    print(stringCharacter)
}

for armor in armorTypes {
    print(armor)
}

// Dictionary key-value pairs
for weaponValue in weapons.values {
    print(weaponValue)
}

for (weapon, damage) in weapons {
    print("\(weapon): \(damage)")
}

// Using ranges
for indexNumber in 1...10 {
    print(indexNumber)
}

for armor in armorTypes[0...] {
    print(armor)
}

for indexNumber in 1..<10 {
    print(indexNumber)
}

for armor in armorTypes[..<armorTypes.count] {
    print(armor)
}

/* While Loops */

//While loop
var playerHealth = 5

//while playerHealth > 0 {
//    playerHealth -= 1
//    print("Still kicking!")
//}

// Repeat-while loop
repeat {
    playerHealth -= 1
    print("HP at \(playerHealth)")
} while playerHealth > 0

/* Switch Statement */

let initial = "H"
let hp = 40
let mp = 30

// Simple switch
switch initial {
case "H":
    print("I'm guessing Harold?")
case "A":
    print("Maybe Alita")
default:
    print("I've nothing")
}

// Complex variations
switch (mp, hp) {
case (15,10):
    print("Great job")
case (1...15, 20..<25):
    print("Ranger are the best")
case (let localMP, let localHP) where localMP + localHP > 20:
    print(localMP, localHP)
default:
    print("I've got nothing")
}

/* Guard statment */
var shopItems = ["Magic want": 10, "Iron Helm": 5, "Excalibur": 1000]
let currentGold = 16

// Guard statment with for-in loop
for (item, price) in shopItems {
    guard currentGold >= price else {
        print("You can't afford the \(item)")
        continue
    }
    
    print("Go ahead, the \(item) is your for \(price) gold")
}

/* Game Locig */

// 1
var lefthandWeapon: String? = "Giant's Hammer"
var righthandWeapon: String?

// 2

var playExp: [String:Int] = ["Book":1, "Car":2]
if let leftWeapon = lefthandWeapon, let rightWeapon = righthandWeapon {
    print("Looks like your \(leftWeapon) and \(rightWeapon) are an even match for me!")
} else {
    print("I didn't bring enough hardware for this")
}

// 3
var playerExp = ["Harrison": 200, "Steve": 489, "Bob the Noob": 0]

// 4
for (name, exp) in playerExp {
    // 5
    guard exp > 0 else {
        print("\(name), you need some serious help...")
        continue
    }
    
    // 6
    switch exp {
    case 32:
        print("Looking good!")
    case 201...500:
        print("Getting better every day...")
    case (let localExp) where localExp > 500:
        print("Time to level up!")
    default:
        print("Corrupted data found")
    }
}


