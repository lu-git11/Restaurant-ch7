//
//  CustomerListView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 3/1/26.
//

import SwiftUI

struct CustomerListView: View {
    @State private var customers:[Customer] = [
        Customer(
            name: "Jeff",
            email: "jeff@gmail",
            visits: 3,
            phoneNumber: "2345"),
        
        Customer(
            name: "Fred",
            email: "fred@gmail",
            visits: 1,
            phoneNumber: "1111"),
        
        Customer(
            name: "Jon",
            email: "jon@gmail",
            visits: 2,
            phoneNumber: "5555")
    ]
    
    let visits: Int
    init(visits: Int = 0){
        self.visits = visits
    }
    
    var body: some View {
        VStack{
            Image(systemName:"person.2.fill")
                .font(.system(size:50))
                .foregroundColor(.yellow)
            Text("Little Lemon")
                .font(.title)
                .fontWeight(.bold)
            Text("Welcome Home")
                .font(.subheadline)
        }
        List(customers){ c in
            HStack{
                VStack(alignment:.leading){
                    Text(c.name)
                        .font(.headline)
                    Text(c.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                HStack{
                    if c.visits >= 3{
                        LoyaltyBadge()
                    }
                    Text("\(c.visits)")
                        .font(.callout.bold())
                        .frame(width: 40, height:40)
                        .background(Color.blue
                            .opacity(0.2))
                        .clipShape(Circle())
                }
            }
            .navigationTitle("Customers")
        }
    }
}
#Preview {
    CustomerListView()
}
