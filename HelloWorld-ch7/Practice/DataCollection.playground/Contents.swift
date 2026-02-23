import UIKit

var greeting = "Hello, playground"
print(greeting)
// Arrays
let dishes = ["Pizza","Pasta","Gnocchi"] // create array

print(dishes[0]) // access data
print(dishes[1])

// creating mutable array
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders)

//dictionaries
let menuPrices = [
    //key:value
    "Pizza":12.99,
    "Salad":13.00,
    "Pasta":9.00
]

print(menuPrices["Salad"]!)

// challenge 1 - create dictionary for drinks

let drinks = [
    "Water":1.50,
    "Soda":4.55,
    "Tea":6.25
]

drinks.forEach{ drink,price in
    print("\(drink): $\(price)")
    
}
print(drinks["Water"]!)
      //,specifier:"%.2f")



// foreach
let fruits = [
    "Apple":1.50,
    "Banana":0.58,
    "Mamgo":2.30
]

fruits.forEach{ fruit,price in
    if price < 2 {
        print("\(fruit): $\(price)")
    }
}



