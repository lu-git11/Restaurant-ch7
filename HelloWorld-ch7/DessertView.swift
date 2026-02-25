//
//  DessertView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/24/26.
//

import SwiftUI

struct DessertView: View {
    
    @State private var showDessertSheet:Bool = false
    
    let dessertItems = [
        "Cake 🍰":9.99,
        "Ice Cream 🍦":4.99,
        "Pie 🥧":7.99,
    ]
    
    func getTotalDessert() -> Int{
        dessertItems.count
    }
    
    
    
    
    var body: some View {
        
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
}

struct DessertSheetView: View{
    let dessertItems: [String: Double]
    
    var body: some View{
        let sortedDessert = dessertItems.sorted { $0.key < $1.key }
        
        NavigationStack{
                List{
                    ForEach(sortedDessert, id:\.key){ name,price in
                        HStack{
                            Text(name)
                            Spacer()
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
