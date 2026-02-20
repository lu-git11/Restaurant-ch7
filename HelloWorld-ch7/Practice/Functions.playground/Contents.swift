import UIKit
/*
syntax
 func functionName(parameter1: Type, parameter2: Type) -> returnType {
        logic goes here
        return value
 }
 */

// example 1
func greet(person: String) -> String {
    let greetings = "Hello " + person + "!"
    return greetings
}

let message = greet(person: "Jeff")
print(message)


// example 2 - 2 parameters
func add(number1: Int, number2: Int) -> Int{
    return number1 + number2
}

let result = add(number1: 200, number2: 600)
print("The addition between 200 + 600 = \(result)")

// Example 3 un-named parameters
func multiply(_ x: Int,_ y:Int) -> Int{
    return x * y
}

print (multiply(3,5))

// Example 4
func deliveryTime(mins: Int) -> String{
    return "Ready in \(mins) minutes."
}

let calculation = deliveryTime(mins: 30)
print(calculation)

// challenge
func welcomeStudent(name: String) -> String{
    return "Welcome \(name)! Ready to learn Swift?"
}
print(welcomeStudent(name:"Jeff"))

// challenge
func calculateTaxes(price: Double) -> Double{
    let tax = 0.08
    var  total = tax * price
    return total
}

print(calculateTaxes(price:23.5))

