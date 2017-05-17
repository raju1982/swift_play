//: # If Statements

import UIKit

//float and int are same
print(1.0 == 1)
//A string is “less than” another string if it comes first alphabetically
print("apple" < "orange")

//array
let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]

print(arrayOfInts.count > biggerArrayOfInts.count)


func screen(onGuestList: Bool, person: String){
    if onGuestList {
        admit(person: person)
    }
    else{
        deny(person: person)
    }
}

func admit(person: String){
    print ("\(person) is allowed.")
}

func deny(person: String){
    print ("\(person) is not allowed.")
}

screen(onGuestList: true, person: "rakesh")

screen(onGuestList: false, person: "prashant")

func screenUnder21(age: Int, onGuestList: Bool, person: String){
    
    if onGuestList && age>=21 {
        admit(person: person)
    }
    else{
        deny(person: person)
    }
    
}

screenUnder21(age:26, onGuestList: true, person: "rakesh")

screenUnder21(age:6, onGuestList: true, person: "prashant")

enum OrderType: String {
    case breakfast, lunch, dinner
}

func food(order: OrderType) {
    if order == OrderType.breakfast {
        print("Good morning!")
    } else if order == OrderType.lunch {
        print("Good afternoon!")
    } else if order == OrderType.dinner {
        print("Good evening!")
    } else {
        print("Hello!")
    }
}

food(order: OrderType.breakfast)
food(order: OrderType.dinner)


func screenVIP(age: Int, onGuestList: Bool, knowsTheOwner: Bool , person: String){
    if onGuestList && age>=21 {
        admit(person: person)
    }
    else if knowsTheOwner {
        admit(person: person)
    }
    else{
        deny(person: person)
    }
}

screenVIP(age: 21, onGuestList: true, knowsTheOwner: false, person: "rakesh80")
screenVIP(age: 20, onGuestList: false, knowsTheOwner: true, person: "mahesh80")
screenVIP(age: 20, onGuestList: false, knowsTheOwner: false, person: "prashant80")


// Some functions to execute under different conditions
func goEat() {
    print("nom nom")
}

func buyTeddy() {
    print("snuggle snuggle")
}

func watchAMovie(){
    print("Ryan Gosling! Be still my heart!")
}

// Example 1
var hungry = false

if hungry {
    goEat()
}

// Example 2
var wantTeddyBear = false
var haveMoney = true
if wantTeddyBear && haveMoney {
    buyTeddy()
}

//Example 3
var raining = false
if raining {
    watchAMovie()
}
//: [Next](@next)
