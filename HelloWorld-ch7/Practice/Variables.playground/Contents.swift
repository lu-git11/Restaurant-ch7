import UIKit

// variables and constants
// variables = var
// constants = let

var greeting = "Hello, playground"

var restaurantName = "Little Lemon Restaurant"
print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"
print("Welcome to the new \(restaurantName)")

//constants cannot change
let city = "Chicago"
print("Our \(restaurantName) is located in \(city)")

//String
var specialDish = "Pasta Alfredo"
//Integer
var availableTables = 5
//Double
var dishPrice = 10.55
//Boolean
var isOpen = true

print("Our \(specialDish) is the best and cost $\(dishPrice).")

//Mini Challenge 1:
// Create a variable called `numberOfTables` and a constant called `ownerName`.
// Print a sentence like:
// “Little Lemon has 10 tables, owned by Mario.”

var numberOfTables = 10
let ownerName = "Mario"
print("Little Lemon has \(numberOfTables) tables, owned by \(ownerName).")

var drink = "Lemonade"

var numberOfDrinks = 10

var drinkPrice = 9.99

var isHappyHour = true
print("Our \(isHappyHour), has \(numberOfDrinks) drinks for $\(drinkPrice) with our special \(drink).")

var pastaPrice = 10.55
var saladPrice = 9.99
var subtotal = pastaPrice + saladPrice
var taxes = subtotal * 0.08
var total = subtotal + taxes

print("Total price = $\(total)")


