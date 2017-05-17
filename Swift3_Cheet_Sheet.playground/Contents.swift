//: Playground - noun: a place where people can play

import UIKit

/** Variable Declaration  **/
//var myNumber: Int   ===  int myNumber; (java)
//since we used double quptes this will be infered as string if not explicity decalred string
var myMiddleInitial: Character = "A"
var numberOfWheels: Int = 4
var centimetersOfRainfall: Float = 5.5
var pi: Double = 3.14159265359
var myFavoriteAnimal: String  = "nudibranch"
var rainingOutside: Bool  = true




/** String  **/
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

//Swift strings are encoded with unicode scalars.
//Unicode is a universal system for representing text so that any character from any language can be used in a standardized way. Unicode scalars are numbers that represent characters
var monkeyStringWithEmoji = "I saw a 🐒."
monkeyStringWithEmoji.unicodeScalars

//The syntax for string interpolation is: backslash, open parenthesis, variable name, closed parenthesis.
//\(variableName)
var name = "Kate"
var customizedBirthdayCheer = "Happy Birthday, \(name)!"


// We can also use string interpolation with expressions
var kilosInALb = 0.45
var dogName = "Zebedee"
var lbsPerMonth: Double = 25
var metricDoggyDiet =  "\(dogName) eats \(kilosInALb * lbsPerMonth)kilos of dog food per month"


//String concatenation
let firstName = "tony"
let lastName = "stark"

let givenName = firstName + " " + lastName

print (givenName)

//Finding a Substring within a String
givenName.contains("tony")
givenName.contains("jack")

//Replacing a Substring
var newName = givenName.replacingOccurrences(of: "tony", with: "race")

//substring
let phoneNumber = "8604590721"
let areaCode = phoneNumber.substring(to: phoneNumber.index(phoneNumber.startIndex, offsetBy: 3))
let partAEndIndex = 6
let partA = phoneNumber.substring(with: phoneNumber.index(phoneNumber.startIndex, offsetBy: 3)..<phoneNumber.index(phoneNumber.startIndex, offsetBy: partAEndIndex))
let partB = phoneNumber.substring(from: phoneNumber.index(phoneNumber.startIndex, offsetBy: partAEndIndex))





/** Operator  **/
//float and int are same
print(1.0 == 1)
//A string is “less than” another string if it comes first alphabetically
print("apple" < "orange")
//array
let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]
print(arrayOfInts.count > biggerArrayOfInts.count)




/** function  **/
/*:
func nameOfFunction(parameter1Name: parameter1Type, parameter2Name: parameter2Type) -> Return Type {
 body of the function*
}

 //when we actually call a function, the input values that are passed to the function are known as arguments.
*/

//deafault value of tipPercentage is 0.15
func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

calculatePriceForMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)
calculatePriceForMealWithTip(priceOfMeal: 65.43)
