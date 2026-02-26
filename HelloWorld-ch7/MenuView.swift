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
    @State private var showDesserts = false
    @State private var cheapMenu = false
    
    let menuItems:[String:Double] = [
        "Steak":25.99,
        "Chicken":22.99,
        "Fish":32.55,
        "Lamb":35.99,
        "Veggies":9.99,
        "Potato":7.99,
        "Rice":5.99,
        "Eggplant":15.99,
    ]
    
    
    func getTotalItems() -> Int{
        displayMenu.count
    }
    
    var sortedMenu:[(name:String, price:Double)] {
        menuItems
            .sorted { $0.key < $1.key }
            .map { (name: $0.key, price: $0.value)}
    }
    
    //computed property
    var displayMenu:[(name:String, price:Double)]{
        if cheapMenu {
            return sortedMenu.filter { $0.price < 10 }
        } else {
            return sortedMenu
        }
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
        VStack{
            VStack{
                
                HStack{
                    Image(systemName:"tree.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .padding(7)
                    
                    Text("Today's Menu")
                        .font(.title)
                        .bold()
                    
                    Image("images")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .padding(7)
                }
                Toggle("Show affordable menu",isOn:$cheapMenu)
                    .padding(8)
                    .padding(.horizontal,15)
                
                Button("View Desserts"){
                    withAnimation{
                        showDesserts = true
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
                .sheet(isPresented: $showDesserts){
                    DessertView()
                }
            }
            
            List{
                ForEach(displayMenu, id:\.name){ item in
                    MenuItemRowView(name: item.name, price: item.price )}
            }
            
            Section{
                List{
                    ForEach(displayMenu, id: \.name) { item in
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
