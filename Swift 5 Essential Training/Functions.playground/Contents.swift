import UIKit

// Basic function
func findNearestAlly(level: Int) -> String {
    print("Searching for aaly above level \(level)")
    return "Argus"
}

var ally = findNearestAlly(level: 5)

/* Overloading Functions */

// Base function
func attackEnemy() {
    print("Executing default attack...")
}

// Overloaded functiions
func attackEnemy(damage: Int) {
    print("Attacking for \(damage)")
}

func attackEnemy(damage: Double, weapon: String) -> Bool {
    let attackSuccess = true
    print("Attacking enemy for \(damage) with \(weapon)")
    
    return attackSuccess
}

attackEnemy()
attackEnemy(damage: 34)
var enemyDefeated = attackEnemy(damage: 22.23, weapon: "Glaive")

/* Complex functions */

// Optional return value
func setupArenaMatch() -> Bool? {
    return nil
}

if let initSuccess = setupArenaMatch() {
    print("Level initialized: \(initSuccess)")
} else {
    print("Something went terribly wrong...")
}

// Multiple return values
func setupArenaMatch(levelName: String) -> (success: Bool, secretItem: String ) {
    print("\(levelName) initialized...")
    return (true, "Minetaur's Head")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
levelDetails.secretItem
levelDetails.success

// Default values
func setupDefaultMatch(levelName: String = "Fire Marshes", opponents: Int = 3) {
    print("Arena match will take place in the \(levelName) between \(opponents) players!")
}

setupDefaultMatch()
setupDefaultMatch(levelName: "Poison Flat", opponents: 5)

/* Function Types */
// Dunction types
func computeBonusDamage(baseDamage: Int) -> Int {
    return baseDamage * 4
}

// (Int) - Int

// Functions as parameters
func dealDamage(baseDamage: Int, bonusDamage: (Int) -> Int) {
    let bonus = bonusDamage(baseDamage)
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)")
}

dealDamage(baseDamage: 55, bonusDamage: computeBonusDamage)


/* Closures */

// Defining Closures
var closure: () -> () = {}

// Initializing closures
var computeBonusDamage1 = { base in
    return base * 4
}

computeBonusDamage1(25)

/* Using closures */

var highScore = [3456, 0 , 1999 , 888]
var partyMembers = ["Tom", "Steven", "Harison"]

// Existing functions with closures
var ascentingSort = highScore.sorted { (firstValue, secondValue ) -> Bool in
    return firstValue < secondValue
}

print(ascentingSort)

// Using custom closures with functions
func activemembers(completion: ([String]) -> Void) {
    completion(partyMembers)
}
activemembers { (members) in
    for name in members {
        print("\(name) is active")
    }
}

func activeMembers(members: [String]) -> () -> Void {
    let completion: () -> Void = {
        for name in members {
            print("\(name) is present!")
        }
    }
    return completion
}

var closureReturn = activeMembers(members: partyMembers)
closureReturn()
