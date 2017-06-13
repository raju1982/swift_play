//: Playground - noun: a place where people can play

import UIKit
import XCTest

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




//class, type property, computed property
class Ops {
    
    func sum(_ valA: Int , _ valB: Int) -> Int{
        return valA + valB
    }
    
}

Ops().sum(4,10)

class Car {
    let topSpeed: Int
    let price: Float
    var duct: Int = 10
    
    init(topSpeed: Int, price: Float){
        self.topSpeed = topSpeed
        self.price = price
    }
    //computed property (type) [computed property always var , never let]
    var duty: Int {
        get {
            return duct * Int(price)
        }
        set(door){
            self.duct = door
        }
    }
    // instance method
    func getTopSpeed() -> Int {
        return topSpeed
    }
    
    //typed method , method defined with class keyword can be overrirden
    class func getFuelType() -> String{
        return "gas"
    }
    
    //typed method , method defined with static keyword cannot be overrirden
    static func getManufactionCity() -> String{
        return "detroit"
    }
}

Car(topSpeed:100, price:25000).getTopSpeed()
Car.getFuelType()
print (Car(topSpeed:10, price:25).duty)
var honda = Car(topSpeed:10, price:25)
print(honda.duty)
honda.duty = 90
print(honda.duty)

class SUV: Car {
    let groundClearence: Float
    //type property
    static let additionalStateTax: Int = 400
    //computed property (type)   [computed property always var , never let]
    static var code : Int {
        get {
            return additionalStateTax/2
        }
    }
    //computed property     [computed property always var , never let]
    var tax : Int {
        get {
            return topSpeed * Int(price)
        }
    }
    //call super class init after assigning value to class property
    init(groundClearence: Float, topSpeed: Int, price: Float){
        self.groundClearence = groundClearence
        super.init(topSpeed: topSpeed, price: price)
    }
    
    //overriden typed method
    override class func getFuelType() -> String{
        return "SUV gas"
    }

}

SUV(groundClearence: 10, topSpeed:100, price:25000).getTopSpeed()
SUV.additionalStateTax
SUV.code
SUV(groundClearence: 10, topSpeed:100, price:25000).tax
SUV.getFuelType()


//Enum
enum country{
    case india, usa, canada
}

var trip = country.india

if(trip == country.india){
    print("India")
}

enum Country: String {
    case usa = "United States"
    case canada = "Canada"
    case uk = "United Kingdom"
    case australia = "Australia"
    case brazil = "Brazil"
}

var desti =  Country.uk

if(desti == Country.uk){
    print(desti.rawValue)
}


enum CaliforniaPark {
    case yosemite, deathValley, lasson, sequoia
}

var warning = ""
var destination = CaliforniaPark.yosemite

switch destination {
case .yosemite:
    warning = "Beware of aggressive bears!"
case .deathValley:
    warning = "Beware of dehydration!"
case .lasson:
    warning = "Watch out for boiling pools!"
case .sequoia:
    warning = "Watch out for falling trees!"
}



//Structs does not need init , Structs get memberwise initializers automatically
struct PictureFrame {
    var width = 5
    var height = 7
    var thickness: Double = 1.5
    
    var area: Int {
        get {
            return (width * height)/2
        }
    }
}

var familyReunionFrame = PictureFrame(width: 10, height: 8, thickness: 1.5)
familyReunionFrame.area



//Structs can have methods (typed, non-typed)
struct Beer {
    var style = "Pale Ale"
    var percentAlcohol = 5.0
    static var cheersDict = ["English": "Cheers!","German": "Prost!", "Japanese": "乾杯", "Mandarin": "干杯!","Russian":"На здоровье!", "Spanish":"Salud!", "Italian": "Cin cin!"]
    var suggestedVolumePerServing:String {
        get {
            let volume: Int = Int(12.0/(percentAlcohol/5.0))
            return "\(volume) ounces"
        }
    }
    
    static func cheers(_ language: String) {
        if let cheers = cheersDict[language] {
            print("\(cheers)")
        }
    }
}

var happyHourBeer = Beer(style:"Lager", percentAlcohol: 6.0)
happyHourBeer.suggestedVolumePerServing
Beer.cheers("Japanese")

// Enum and struct are value type
// Value types are copied with every assignment
var frame = PictureFrame(width: 3, height: 5, thickness: 0.5)
var frameForMom = frame
frameForMom.width = 5
frameForMom.height = 7
print (frame.width)


class PicFrame {
    var width = 5
    var height = 7
    var thickness: Double = 1.5
    
    init (width: Int, height: Int, thickness: Double){
        self.width = width
        self.height = height
        self.thickness = thickness
    }
    
    var area: Int {
        get {
            return (width * height)/2
        }
    }
}

//Reference types create a new reference with every assignment, they are NOT copied.
var fram = PicFrame(width: 3, height: 5, thickness: 0.5)
var framForMom = fram
framForMom.width = 5
framForMom.height = 7
//value gets updated
print (fram.width)



// protocol (interface)
protocol Souschef {
    var size: Int { get }
    var softFur: Bool { get }
    func chop(vegetable: String) -> String
    func rinse(vegetable: String) -> String
}

//implement Equatable if you want to compare two instance of class
class Roommate: Souschef, Equatable {
    var hungry = true
    var name: String
    //protocol variable
    var size = 10;
    var softFur = true;
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
    
    func chop(vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}



// operators are global function thus '==' method of Equatable protocal is implemented outside class.
func ==(lhs: Roommate, rhs: Roommate) -> Bool {
    return lhs.name == rhs.name && lhs.hungry == rhs.hungry
}


/*extension offer a way to add computed property and method to an existing class, struct and enum.*/

//extension to XCUIElement element
extension XCUIElement {
    //adding new function to XCUIElement Class
    func clearAndEnterText(text: String) -> Void {
        //cast Any? (self.value) as string  [let stringValue = self.value as? String]
        //Like an if statement, guard executes statements based on a Boolean value of an expression. Unlike an if statement, guard statements only run if the conditions are not met.
        //self refers to calling object
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        //closure ***
        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }.joined(separator: "")
        self.typeText(deleteString)
        self.typeText(text)
    }
}

//Extensions can be used to adhere to protocols.
protocol Delta {
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable: String) -> String
}

class Room {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}

extension Room: Delta {
    func chop(_ vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(_ vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}


//Swift Convenience Initializers
//Swift extensions make it easy to add new initializers to types without subclassing
extension UIColor
{
    convenience init(redValue: Int, greenValue: Int, blueValue: Int)
    {
        let newRed   = CGFloat(Double(redValue) / 255.0)
        let newGreen = CGFloat(Double(greenValue) / 255.0)
        let newBlue  = CGFloat(Double(blueValue) / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }
    
    class func getColor() -> UIColor{
        return UIColor(redValue: 147, greenValue: 197, blueValue: 114)
    }
}





/*nested function*/
//You can also define functions inside the bodies of other functions, known as nested functions.

//global function
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    //nested function
    func stepForward(input: Int) -> Int { return input + 1 }
    //nested function
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}






/* Closures */

//: ### Closures include:
//: __global functions, nested functions, and closure expressions__

//: ### What is a closure expression?
//: closure expression - __an unnamed, self contained block of code that can be passed as an argument to a function__

//: ### What are closure expressions used for?
//: Closure expressions are used to __specify an action to be executed some time in the future.__

//: ## Sorted

var bids = [48.1, 75.4, 63.7, 52.4, 68.2]
var orderedBids = bids.sorted(by: { (bid1: Double, bid2:Double) -> Bool in
    return  bid2 > bid1
})
print(orderedBids)

print(bids.sorted())

//: Closures typically take the form:
//:
//: { (parameters) -> return type **in**
//:
//:     statements to execute
//:
//:}


//: ### Tricks to make your closures more concise: filter
var examGrades = [81, 99, 54, 84, 98]
var passingGrades = examGrades.filter({(grade: Int) -> Bool in
    return grade > 70
})
passingGrades

//: Inferring closure expression type
var grades = [81, 99, 54, 84, 98]
var failingGrades = examGrades.filter({grade in
    return grade < 70
})

//: Implicit returns
var moreGrades = [81, 99, 54, 84, 98]
var morePassingGrades = examGrades.filter({grade in
    grade > 70
})
morePassingGrades


//: Shorthand argument names: $0, $1, $2 ...
// Example 1
var myGrades = [81, 99, 54, 84, 98]
var myFailingGrades = examGrades.filter({
    $0 < 70
})
myFailingGrades


// Example 2
var soups = ["tomato", "hot and sour", "french onion", "vegetable"]
var alphabeticalSoups = soups.sorted(by: {(soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})
print (alphabeticalSoups)

var shorhand_alphabeticalSoups = soups.sorted(by: { $1 > $0 })
print (shorhand_alphabeticalSoups)


//map function
func timeIntervalFromString(_ timeString: String) -> Int {
    var timeArray = timeString.components(separatedBy: ":")
    let minutes = Int(String(timeArray[0]))!
    let seconds = Int(String(timeArray[1]))!
    return seconds + (minutes * 60)
}

func timeStringFromInterval(_ timeInterval: Int) -> NSString {
    let seconds = timeInterval % 60
    let minutes = (timeInterval/60) % 60
    return NSString(format: "%.1d:%.2d",minutes,seconds)
}

var oldTimes = ["5:18", "5:45", "5:56", "5:25", "5:27"]

let newTimes = oldTimes.map({timeStringFromInterval(timeIntervalFromString($0)+13)})
print(newTimes)


