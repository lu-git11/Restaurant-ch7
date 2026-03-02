//
//  HomeMenuView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 3/1/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack{
            
            VStack{
                Image(systemName:"fork.knife.circle.fill")
                    .font(.system(size:50))
                    .foregroundColor(.yellow)
                Text("Little Lemon")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Welcome Home")
                    .font(.subheadline)
            }
            List{
                NavigationLink{
                    MenuView()
                }label: {
                    Label("Menu", systemImage:"fork.knife").font(.headline)
                }
                
                NavigationLink{
                    CustomerListView()
                }label: {
                    Label("Customers", systemImage:"person.2").font(.headline)
                }
                
                NavigationLink{
                    ReservationForm()
                }label: {
                    Label("Reservation Form", systemImage:"calendar").font(.headline)
                }
            }
        }
    }
}

#Preview {
    HomeMenuView()
}
