//: # Strings
import UIKit
import Foundation
//: ## Introduction
// You've seen strings passed in to print statements


print("Hello, world!")

// You've seen strings defined as variables and as constants
var myFavoriteAnimal = "nudibranch"
let encouragement = "You can do it!"

// Loop through all the characters in a string
var animal = "octopus"
for character in animal.characters {
    print ("\(character)")
}

//count string length
let theTruth = "Money can't buy me love."
print (theTruth.characters.count)

//reverse the string
var forwardString = "spoons"
var charactersReversed = forwardString.characters.reversed()

for character in charactersReversed {
    print ("\(character)")
}

//Unicode is a universal system for representing text so that any character from any language can be used in a standardized way. Unicode scalars are numbers that represent characters
theTruth.unicodeScalars

//The syntax for string interpolation is: backslash, open parenthesis, variable name, closed parenthesis.
//\(variableName)
var name = "Kate"
var customizedBirthdayCheer = "Happy Birthday, \(name)!"


// We can also use string interpolation with expressions
var kilosInALb = 0.45
var dogName = "Zebedee"
var lbsPerMonth: Double = 25
var metricDoggyDiet =  "\(dogName) eats \(kilosInALb * lbsPerMonth)kilos of dog food per month"




