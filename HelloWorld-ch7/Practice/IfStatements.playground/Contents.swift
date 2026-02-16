import UIKit

// if - else if - else

/*
 --- syntax ---
 if condition1 {
    this block runs if condition1 is true
 } else if condition2 {
    this block runs if condition1 is false and condition2 is true
 } else {
    This block runs if none of the above conditions are true
 }
 */

// example 1
var guests:Int = 27
let capacity:Int = 20

if guests > capacity {
    print("over capacity")
} else {
    print("we can seat this party.")
}

// example 2

let rating:Double = 4.2

if rating >= 4.5 {
    print("excellent")
} else if rating >= 3.5 {
    print("good")
} else {
    print("needs improvement")
}

// example 3 boolean operators

let isOpen:Bool = true
let hasOutdoorSeating:Bool = true

if isOpen && hasOutdoorSeating {
    print("open with outdoor setting")
} else if isOpen && !hasOutdoorSeating {
    print("open indoor only")
} else {
    print ("closed")
}

// example 4

let userName:String = "pam"

if userName == "pam" {
    print("welcome Pam")
} else {
    print("you are not Pam.")
}

// Example 5 ternary
// condition ? expressionIfTrue : expressionIfFalse

let price:Double = 12.00

let label = price > 10 ? "Premium" : "Regular"
print(label)

// example 6

let children:Int = 2
let groupSize:Int = 5

if groupSize >= 8 {
    print("large group - call manager")
} else if children > 0 {
    print("offer kids menu")
} else {
    print(" standard seating")
}

//challenge

let isVip:Bool = true

if isVip {
    print("welcome, VIP")
} else {
    print("do you want to upgrade?")
}

isVip == true ? print("you are VIP") : print("you are not vip")
