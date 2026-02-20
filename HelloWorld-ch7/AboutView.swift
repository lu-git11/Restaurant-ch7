//
//  AboutView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/11/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("About Little Lemon")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                    .padding(10)
                Text("Little Lemon is a cozy Mediterranean restaurant serving fresh and healthy dishes. Our goal is to bring people together through great food and warm hospitality.")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                HStack (spacing: 25){
                    NavigationLink {
                        ReservationForm()
                            .navigationTitle("Make a reservation")
                        } label: {
                        Image(systemName: "fork.knife")
                        }
                    
                    NavigationLink {
                        ReservationForm()
                            .navigationTitle("Make a reservation")
                        } label: {
                        Image(systemName: "leaf")
                        }
                    
                    NavigationLink {
                        ReservationForm()
                            .navigationTitle("Make a reservation")
                        } label: {
                        Image(systemName: "map")
                        }
                }
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .padding(5)
            }
            .padding(30)
        }
    }
}

#Preview {
    AboutView()
}
