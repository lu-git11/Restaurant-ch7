//
//  MenuView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/22/26.
//


/*
 Computed properties
 -Does not store a value
 - each access recomputes the value
 
 SYNTAX
  var propertyName: Type {
    return a calculated value
 }
 
 */

import SwiftUI

struct MenuView: View {
    @State private var showDessertSheet = false
    
    let menuItems = [
        "Steak":25.99,
        "Chicken":22.99,
        "Fish":32.55,
        "Lamb":35.99,
        "Veggies":9.99,
        "Potato":7.99,
        "Rice":5.99,
        "Eggplant":15.99,
    ]
    
    let dessertItems = [
        "Cake 🍰":9.99,
        "Ice Cream 🍦":4.99,
        "Pie 🥧":7.99,
    ]
    
    func getTotalItems() -> Int{
        menuItems.count
    }
    
    var sortedMenu:[(name:String, price:Double)] {
        menuItems
            .sorted { $0.key < $1.key }
            .map { (name: $0.key, price: $0.value)}
    }
    
  /*  func getHighestPrice () -> Double {
        var highest = 0.0
        for item in sortedMenu {
            if item.price > highest {
                highest = item.price
            }
        }
        return highest
    }
   */
    
    var body: some View {
        
        let sortedMenu1 = menuItems.sorted {
            $0.key < $1.key
        }
        
        VStack{
            VStack{
                Image("images")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110)
                
                Text("Today's Menu")
                    .font(.title2)
                    .bold()
                
                Button("View Desserts"){
                    withAnimation{
                        showDessertSheet = true
                    }
                }
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .padding(.horizontal,16)
                .padding(.vertical,10)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.accentColor))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.6), lineWidth: 1))
                .shadow(color: .black.opacity(0.12), radius: 8, x: 0, y: 4)
                .sheet(isPresented: $showDessertSheet){
                    DessertSheetView(dessertItems: dessertItems)
                }
                
            }
            
            List{
                ForEach(sortedMenu1, id:\.key){
                    name, price in
                    
                    HStack{
                        Text(name)
                        Spacer()
                        Text("\(price,specifier:"%.2f")")
                    }
                }
            }
            
            Section{
                List{
                    ForEach(sortedMenu, id: \.name) { item in
                        HStack{
                            Text(item.name)
                            Spacer()
                            Text(String(format: "%.2f", item.price))
                        }
                    }
                }
            }
            
        
            Section{
                VStack{
                    Text("Total items: \(getTotalItems())") //string interpolation
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
