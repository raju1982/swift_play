//: Playground - noun: a place where people can play

import UIKit

/** Variable Declaration  **/
//inferred type
//var myNumber: Int   ===  int myNumber; (java)
//since we used double quptes this will be infered as string if not explicity decalred string
var myMiddleInitial: Character = "A"
var numberOfWheels: Int = 4
var centimetersOfRainfall: Float = 5.5
var pi: Double = 3.14159265359
var myFavoriteAnimal: String  = "nudibranch"
var rainingOutside: Bool  = true

//constant are immutable , decalred using 'let'
//variable are mutable , decalred using 'var'
//optional are declared using question mark










/*** optional ***/
//optional is needed in swift cause Nil is disallowed in most Swift types however sometimes we need nil values.
//A method that cannot return a value
var y: Int?
y = Int("ABC")
//Properties that cannot be initialized when an object is constructed
class ViewController: UIViewController {
    var button: UIButton?
}


//The variable, director, is an optional type. Its value cannot be used until it is unwrapped. Use `if let` to carefully unwrap the value returned by `moviesDict[movie]`
var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "Point Break"
if let director = moviesDict[movie] {
    print(director)
}

//How to handle Nil value
var imageView = UIImageView()
imageView.image = UIImage(named:"puppy_in_box.jpg")
//'if let' unpack the optional value
if let image = imageView.image {
    let size = image.size
} else {
    print("This image hasn't been set.")
}
imageView.image



//Optional Chaining
var sizes = imageView.image?.size


//The class UIViewController has a property called tabBarController.  The tabBarController property is an optional of type UITabBarController?. The tabBarController itself holds a tabBar as a property. Complete the code below by filling in the appropriate use of optional chaining to access the tab bar property.
var viewController = UIViewController()
if let tabBar = viewController.tabBarController?.tabBar {
    print("Here's the tab bar.")
} else {
    print("No tab bar controller found.")
}




//Implicitly Unwrapped Optionals 
//(these optionals get automaticaally unwrapped, fatal error will be thrown if value is nil)
// Example 1
let w =  Int("12")!
w * 2

// Example 2
class BetterViewController: UIViewController {
    var myButton: UIButton!
}

//Optionals can be passed as parameters to functions
func pickUpGroceries(grocerie:String?) {
    if let grocerie = grocerie {
        print("We'll pick up the groceries in the \(grocerie)")
    } else {
        print("Let's walk to the store")
    }
}

pickUpGroceries(grocerie:"apple")
pickUpGroceries(grocerie:nil)

func pickUpGroceries2(_ grocerie:String?) {
    if let grocerie = grocerie {
        print("We'll pick up the groceries in the \(grocerie)")
    } else {
        print("Let's walk to the store")
    }
}

pickUpGroceries2("apple")
pickUpGroceries2(nil)


/*
class Animal {
    var name: String
    var species: String
    var tail: Tail?
    init(name: String, species: String, tailLength: Int?){
        self.name=name
        self.species=species
        self.tail=Tail(length: tailLength)
    }
}
struct Tail {
    var length: Int
    init(length: Int){self.length=length}
}
var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)
animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )
 if let tailLength = animal.tail?.length {
 print("\(animal.name)'s tail is \(tailLength) long")
 } else {
 print("\(animal.name) doesn't have a tail.")
 }
*/










//****: ## Downcasting with as? and as!    ****/

import UIKit

//: ### Downcasting
class Beverage {
    var category:String
    init (category: String) {
        self.category = category
    }
}

class HotDrink: Beverage {
    var pairing:String
    
    init (category: String, pairing: String) {
        self.pairing = pairing
        super.init(category: category)
    }
}

class ColdDrink: Beverage {
    var vessel:String
    
    init (category: String, vessel: String) {
        self.vessel = vessel
        super.init(category: category)
    }
}

var drinkChoices = [
    HotDrink(category: "coffee", pairing: "biscotti"),
    HotDrink(category: "tea", pairing: "crumpets"),
    ColdDrink(category: "lemonade", vessel: "glass"),
    ColdDrink(category: "beer", vessel: "frosty mug")
]

// Generic drink offer
for beverage in drinkChoices {
    print ("Can I get you a \(beverage.category)")
}
//: Type cast operators: __as?__ and __as!__
// Specific drink offer
for beverage in drinkChoices {
    if let coldDrink = beverage as? ColdDrink {
        print ("Can I offer you a \(coldDrink.vessel) of \(coldDrink.category)?")
    } else if let hotDrink = beverage as? HotDrink {
        print ("Can I get you some \(hotDrink.category) with \(hotDrink.pairing)?")
    }
}
//: ### Downcasting with as!
var coffeeArray: [Beverage] = [
    HotDrink(category: "coffee", pairing: "biscotti"),
    HotDrink(category: "coffee", pairing: "scones"),
    HotDrink(category: "coffee", pairing: "biscotti"),
]

for beverage in coffeeArray {
    let hotDrink = beverage as! HotDrink
    print ("Can I get you some \(hotDrink.category) with \(hotDrink.pairing)?")
}











//Any?

// cast Any? (phoneNumberField!.value!) as string
// phoneNumberField!.value! as! String


//Use this initializer to convert an instance of any type to its preferred representation as a String instance.
//init<Subject>(describing instance: Subject)
//String(describing: phoneNumberField!.value!)







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
var forwardString = "spoon"
var charactersReversed = forwardString.characters.reversed()

for character in charactersReversed {
    print ("\(character)")
}

//Swift strings are encoded with unicode scalars.
//Unicode is a universal system for representing text so that any character from any language can be used in a standardized way. Unicode scalars are numbers that represent characters
var monkeyStringWithEmoji = "I saw a 🐒."
var nWithTilde = "\u{006E}\u{0303}"
nWithTilde.unicodeScalars.count
nWithTilde.characters.count

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

//A String can be treated as an NSString, replacingOccurrences is a NSString method.
//Replacing a Substring
var newName = givenName.replacingOccurrences(of: "tony", with: "race")

//substring
let phoneNumber = "8604590721"
let areaCode = phoneNumber.substring(to: phoneNumber.index(phoneNumber.startIndex, offsetBy: 3))
let partAEndIndex = 6
let partA = phoneNumber.substring(with: phoneNumber.index(phoneNumber.startIndex, offsetBy: 3)..<phoneNumber.index(phoneNumber.startIndex, offsetBy: partAEndIndex))
let partB = phoneNumber.substring(from: phoneNumber.index(phoneNumber.startIndex, offsetBy: partAEndIndex))


//random number
print(arc4random())









/** Operator  **/
//float and int are same
print(1.0 == 1)
//A string is “less than” another string if it comes first alphabetically
print("apple" < "orange")
//Ternary conditional
var hungry = true
var vegetarian = false
hungry || vegetarian ? print("Let's eat!") : print("Let's wait.")






/*** collection ***/







/** array **/
//: ### Initializing Arrays
// The verbose way
var numbers = Array<Double>()

// More often you will see ...
var moreNumbers = [Double]()
moreNumbers = [85.0, 90.0, 95.0]

// Array literal syntax
let differentNumbers = [97.5, 98.5, 99.0]

// Array concatenation is super convenient in Swift.
moreNumbers = moreNumbers + differentNumbers
print(moreNumbers.count > differentNumbers.count)


//array can be compared directly [all element with index should match]
let yearsOfTheGoat = [1967, 1979, 1991, 2003, 2015]
let yearsOfTheSheep = [1967, 1979, 1991, 2003, 2015]
let yearsOfTheDog = [1979, 1967, 1991, 2003, 2015]
print(yearsOfTheGoat == yearsOfTheSheep)
print(yearsOfTheGoat == yearsOfTheDog)


// Dict
//: ### Dictionary initialization
// Initializer syntax
var groupsDict = [String:String]()

let dictionary = ["monkey": "🐒", "iPhone":"📱"]
var newestString = "A monkey stole my iPhone"
for (key, value) in dictionary {
    newestString = newestString.replacingOccurrences(of: key, with: value)
}
print(newestString)







/** function
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








/** class **/

class LightSwitch {
    var on: Bool = true
}

var livingRoomSwitch = LightSwitch()
print (livingRoomSwitch.on)


