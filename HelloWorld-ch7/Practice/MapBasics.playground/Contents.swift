import UIKit

/*
 SYNTAX
 
 let newArray = originalArray.map { element in
    return modified element
 }
 
 .map()
 Method used to transform each element of a collection into a new value,
 creating a new array with results.
 
 .map is non-mutating, meaning
 the original array stays exactly as it was
 */

let prices = [8.50, 12.00, 14.25]

let pricesWithTax = prices.map { price in
    return {String(format: ".2f", price * 1.16)
    }
}
    
print(pricesWithTax)

// let formattedPrices = pricesWithTax.map { String(format: "%.2f", $0)}

//print(formattedPrices)

let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map { "🍰 \($0)" }
print(emojiMenu)

let emojiMenu2 = desserts.map{ dessert in
    return "🍨 \(dessert)"
}

print(emojiMenu2)
