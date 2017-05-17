
/*:
 *func nameOfFunction(parameter1Name: parameter1Type, parameter2Name: parameter2Type) -> Return Type {*
 
 *\/\/ body of the function*
 
 *}*
 */

func calculateTip(priceOfMeal: Double) -> Double {
    return priceOfMeal * 0.15
}

//when we actually call a function, the input values that are passed to the function are known as arguments.
var total = calculateTip(priceOfMeal: 10)

//deafault value of tipPercentage is 0.15
func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

calculatePriceForMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)

calculatePriceForMealWithTip(priceOfMeal: 65.43)


/*:
## Function Syntax
**To define a function in Swift, the following syntaxes can be used:**

*func nameOfFunction() {*

*\/\/ body of the function*

*}*
*/
func exampleFunctionOne() {
    // body of the function here
}

/*:
*func nameOfFunction(parameterName: parameterType) {*

*\/\/ body of the function*

*}*
*/
func exampleFunctionTwo(_ intParameter: Int) {
    // body of the function here
}

/*:
*func nameOfFunction(parameter1Name: parameter1Type, parameter2Name: parameter2Type) {*

*\/\/ body of the function*

*}*
*/
func exampleFunctionThree(_ intParameterOne: Int, intParameterTwo: Int) {
    // body of the function here
}

//: [Next](@next)

//when we actually call a function, as in sayHelloToStudent(student: jarrod) the input values that are passed to the function are known as arguments.


