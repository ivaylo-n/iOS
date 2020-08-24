import UIKit

/* Swift Array */

// Creating arrays
var levelDifficult: [String] = ["Easy", "Moderate", "Veteran", "Nightmare"]
var extraSyntax1: Array<String> = Array<String>()

// Count and isEmpty
levelDifficult.count
levelDifficult.isEmpty

//Accessing array values
var mostDifficult = levelDifficult[3]
levelDifficult[3] = "Rediculousness"

/* Core Array Methods */

// Changing & appending items
var characterClasses = ["Ranger", "Paladin", "Druid"]
characterClasses.append("Gunslinger")
characterClasses += ["Healer", "Berserker"]

// Insering and removing items
characterClasses.insert("Beat Master", at: 2)
characterClasses.remove(at: 1)


// Ordering and querying values
characterClasses.reverse()
var reversedClasses = characterClasses.reversed()
characterClasses.sort()
var sortedClasses = characterClasses.sorted()

characterClasses.contains("Gunslinger")

print(characterClasses)

// 2D arrays and subscripts
var skillTree: [[String]] = [
    ["Attack+", "Barrage", "Heavy Hitter"],
    ["Guard+", "Evasion", "Run"]
]

var attackTreeSkill = skillTree[0][2]


/* Swift Dictionaries */

// Creating dictionaries
var blacksmithShop: [String: Int] = ["Bottle": 10, "Shield":15, "Ocarina": 1000]

// Accessing and modifying values
var shieldPrice = blacksmithShop["Shield"]
blacksmithShop["Bottle"] = 11

blacksmithShop["Towel"] = 1
print(blacksmithShop)

//All keys and values
let allKyes = [String](blacksmithShop.keys)
let allValues = [Int](blacksmithShop.values)

/* Core Dictionary Methods*/

// Caching and overwriting items
var playerStats: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]
var oldValue = playerStats.updateValue(30, forKey: "Attack")

//playerStats = ["Evassion": 12, "MP":55]

// Caching and removing items

//playerStats["Gold"] = nil
var removedValue = playerStats.removeValue(forKey: "Gold")
print(playerStats)

// Nested dictionaries
var questBoard = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secrets": "Win with 50%"
    ]
]

var gemstoneObjective = questBoard["Fetch Gemstones"]?["Objective"]

/* Working with Sets*/

// Creating sets
var activeQuests: Set<String> = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewoods", "Erik"]

// Inserting and removing elements
activeQuests.insert("Only the Strong")
activeQuests.remove("Big Boss")

print(activeQuests)

// More common methods
activeQuests.contains("All-4-One")
activeQuests.sorted()

/* Core Set Methods*/

var completedQuests: Set = ["Big Boss","Erik", "All-4-One", "The Hereafter"]

// Set operations
var commonQuests = activeQuests.intersection(completedQuests)
var differentQuests = activeQuests.symmetricDifference(completedQuests)

var allQuests = activeQuests.union(completedQuests)

/* Swift Tuples*/

// Simple Tuple
var uppercutAttack: (String, Int, Bool) = ("UppercutSmash", 25, true)
uppercutAttack.0

var (attack, damage, rechargable) = uppercutAttack
attack
damage
rechargable

// Naming tuple values
var planetSmash = (name: "Planet Smash", damage: 15, rechargable: false)
planetSmash.rechargable = true

var shieldStomp: (name: String, damage: Int, rechargable: Bool)
shieldStomp.damage = 100

/* Merchant Shop */
var shopItemsArray = ["Book", "Pen", "Pencil", "Rubber"]
var shopItemsDrictionary: [String: Int] = ["Book": 12, "Pen":13,
                                           "Pencil":14, "Rubber":15]
shopItemsArray.contains("pen")
shopItemsArray.insert("Car", at: 2)
var selectedItem = shopItemsArray[0]
var selectedItemPrice = shopItemsDrictionary[selectedItem]
var fullArmor: Set = ["Red Book", "Blue Pen", "Green Pencil"]
var currentArmor: Set = ["Red Book", "Green Pencil"]

var missingPieces = fullArmor.subtracting(currentArmor)

var armorPiece = (name: "Red Book", cost: 55, canEqip: true)
armorPiece.canEqip
armorPiece.cost

