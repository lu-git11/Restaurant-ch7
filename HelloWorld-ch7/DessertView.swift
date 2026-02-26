//
//  DessertView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/24/26.
//

import SwiftUI

struct DessertView: View {
    
    @State private var showDesserts:Bool = false
    
    let dessertItems:[String:Double] = [
        "Cake 🍰":9.99,
        "Ice Cream 🍦":4.99,
        "Pie 🥧":7.99,
    ]
    
    var sortedMenu:[(name:String, price:Double)] {
        dessertItems
            .sorted { $0.value < $1.value }
            .map { (name: $0.key, price: $0.value)}
    }
    
    func getTotalDessert() -> Int{
        dessertItems.count
    }
    
    
    var body: some View{
        let sortedDessert = dessertItems.sorted { $0.value < $1.value }
        
        NavigationStack{
                List{
                    ForEach(sortedDessert, id:\.key){ name,price in
                        HStack{
                            Text(name)
                            Spacer()
                            HStack{
                                if price > 5{
                                    PremiumBadge()
                                }else{
                                    RegularBadge()
                                }
                            }
                            Text("\(price,specifier:"%.2f")")
                        }
                    }
                }
                .navigationTitle("Dessert Menu")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    DessertView()
}
