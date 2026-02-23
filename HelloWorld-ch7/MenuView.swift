//
//  MenuView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/22/26.
//

import SwiftUI

struct MenuView: View {
    
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
    
    func getTotalItems() -> Int{
        menuItems.count
    }
    
    var body: some View {
        
        let sortedMenu = menuItems.sorted {
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
                
            }
            
            List{
                ForEach(sortedMenu, id:\.key){
                    name,price in
                    
                    HStack{
                        Text(name)
                        Spacer()
                        Text("\(price,specifier:"%.2f")")
                    }
                }
            }
            Section{
                VStack{
                    Text("Total items: \(getTotalItems())")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
