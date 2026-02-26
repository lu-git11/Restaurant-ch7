//
//  MenuItemRowView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/26/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name:String
    let price:Double
    
    var body: some View{
        HStack{
            Text(name)
                .font(.headline)
            Spacer()
            
            HStack{
                if price > 15{
                    PremiumBadge()
                }else{
                    RegularBadge()
                }
                Text("$\(price,specifier:"%.2f")")
            }
            .padding(5)
        }
    }
}

#Preview {
    MenuItemRowView(name:"Pizza",price:21.99)
}
