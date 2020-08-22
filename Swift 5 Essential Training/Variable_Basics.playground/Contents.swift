import UIKit

var currentHealth = 90
let maxHealth = 100

currentHealth = 80

var inventoryItems = 5,  equpmentsSlots = 3, currentGold = 42

// Type inference
var currentBikes = 90

// Type annotation
var characterName: String
characterName = "13"

// Type annotation + inference
var maxBikes: Int = 100

// Myltiple variables - type annotation shorthand
var books, slots, cars: Int

/* Loggoing and Commenting*/

// I'm a single-line comment

/* I'm a multiline comment...
 
    // I'm a nested comment
 
 */

var antiHelloWorld = "We're not here.."
print(antiHelloWorld)
 
/* Swift Operators */

// Atitmetic
var usingmathIRL = 5 + 4 - 3 / 2 * 1

// Compound assigments (+=, -=, *=, /=, &=)
var currentWindows = 3
currentWindows *= 5

// Modulo (%)
var experienceOverflow = 100 % 90

/* Strings */
var activeQuest: String = "Retrieving the Cart"
print(activeQuest)

// Concatenation
var questDifficulty = "Nightmare"
var questInfo = activeQuest + " -> " + questDifficulty

questInfo += "!"

// String interpolation
let questinfo_Interpolated = "I'm not sure you're redy for \(activeQuest) yet, it's \(questDifficulty) level."

/* Working with Strings */

// Test variable
var dialogue = "the Innkeeper's Haven"

// String data
dialogue.count
dialogue.isEmpty
dialogue.contains("s")

// Append and Insert
dialogue.append(contentsOf: ", weary travelers!")

// Remove and Split
dialogue.removeLast()
dialogue.split(separator: ",")
print(dialogue)

/* Type Conversions */

// Test variables
var currentGold_Double = 5.832

// Explicit Conversions
var currentGold_Integer: Int = Int(currentGold_Double)
var currentGold_String = String(currentGold_Double)

// Inferred converion with operators
var bankDeposit = 37 + 5.892
var bankDeposit_Explicit = currentGold_Double + Double(currentGold_Integer)

/* Booleans and Logical Operators */

// Test variable
var isActive: Bool = false
var canMove = true

// Logical operators (!, &&, ||)
isActive = !isActive
var playerControl = canMove && isActive

/* Introducing Optionals */

// Creatinf optionals
var itemGathered: String? = "Pickaxe"
var isExchangeable: Bool?
print(itemGathered!)

/* Player Stats */
var characterName2 = "Tom"
var weaponClassification = "Hands"
characterName2 += " the Son "
var currentMana = 2.0
var manaPercentage = String(currentMana / 100)
var debugStats = "\(characterName2)\n\nPrefers: \(weaponClassification)\nCurrent Mana: \(manaPercentage)"
var questAccepted = true
var canQuest = false
var questStatus = questAccepted && canQuest
debugStats.append(contentsOf: "\nQuesting: \(questStatus)")
print(debugStats)

