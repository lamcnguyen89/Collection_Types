//
//  main.swift
//  Collection_Types
//
//  Created by M_2022814 on 12/11/21.
//

import Foundation

// Collections are groups of data types arranged in different ways. There are 3 types:

// MARK: - Array
// Arrays are groups of ordered data in a list, arranged by index value.
// The same value can appear multiple times but at different index values.

// Initializing Empty Array
var weaponsArray: [String] = []

// Add two arrays together:
// Both Arrays have to be of compatible types
var arrayOne = [1.0, 2.0, 3.0, 4.0]
var arrayTwo = [1.3, 4.5, 5.7, 6.3]
var arrayCombined = arrayOne + arrayTwo
print("Combined Array: \(arrayCombined)")

// Accessing and modifying an Array:
// Count Array:
arrayOne.count

// Check if Array is filled (Returns a boolean):
arrayOne.isEmpty

// Retrieve a particular value of an array based on index:
var arrayItem = arrayOne[0]

// Iterating over an array

for i in arrayTwo {
    print(i)
}

// Iterating over an array and using both index value and corresponding item in the index requires the enumerated() function .
// The enumerated() function converts an array to a tuple composed of integer and item.

for (index, item) in arrayOne.enumerated() {
    print("\(index) : \(item)")
}


// MARK: - Set
// Sets are unordered collections of values of the same type that are unique

// Initializing Empty Set:
var weaponsSet = Set<String>()

var weaponsCollection: Set = ["AR-15", "AR-10", "Glock 19", "Katana", "Wakizashi"]

// Counting a set:
weaponsCollection.count

//Adding new item to set.
weaponsCollection.insert("Bow and Arrow")

// Remove item from set:
weaponsCollection.remove("AR-15")

//Check if set contains an item and returns boolean:
weaponsCollection.contains("AR-15")

// Iterating over a Set:
for weapon in weaponsCollection {
    print("\(weapon)")
}

// MARK:- Fundamental Set Operations

var candySet01: Set = ["Swedish Fish", "Almond Joy"]
var candySet02: Set = ["Milk Duds", "Swedish Fish"]

// Intersection
    // Create a new set with only values common in both sets
candySet01.intersection(candySet02)

// Symmetric Difference
    // Creates a new set with only values that are NOT found in both sets
candySet01.symmetricDifference(candySet02)

// Union
    // Combines all values in both sets
candySet01.union(candySet02)

// Subtracting
    // Creates a new set with values not in the specified set
candySet01.subtracting(candySet02)



// MARK: - Dictionary
// Dictionairies are unordered collections of key-value pairs

// Initializing Empty Dictionary:
var weaponsDictionary: [Int : String] = [:]

// Accessing and modifying a dictionary

var dreamTime = ["SB" : "Sorrow Bear", "IQ" : "IceQueen", "DM" : "Dragon Master" ]

    // Count a dictionary
    dreamTime.count
    
    // Add New Item or change existing to dictionary. The pattern is Set[Key] = Value
    dreamTime["MS"] = "Master Swordsman"

    // THe forkey method returns an optional value
    var dreamCreature = dreamTime.updateValue("Sorrow Baby", forKey: "SB")
    print(dreamCreature) // Returns optional with the value of the key

    // Remove a kay-value pair:
    dreamTime["MS"] = nil

// Iterating over a dictionary
for (key,value) in dreamTime {
        print("\(key) : \(value)")
}

// If you need to use a dictionary's keys or values with an API that takes an Array instance, initialize a new array with the keys or values property

let dreamCodes = [String](dreamTime.keys) // Returns an array of the dictionary's keys
let dreamCreatures = [String](dreamTime.values) // Returns an array of the dictionary's values


    
