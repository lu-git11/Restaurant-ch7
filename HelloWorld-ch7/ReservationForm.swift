//
//  ReservationForm.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/12/26.
//

import SwiftUI

struct ReservationForm: View {
    let restaurantName = "Little Lemon"
    let maxGuest = 10
    
    // state variable
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var childrenCount = 0
    @State private var childrenNames = ""
    @State private var occasion = ""
    
    var body: some View {
        Form{
            //header
            Section{
                Text(restaurantName)
                    .font(.title3)
                    .bold()
                Text("Reservation Form")
                    .foregroundStyle(.secondary)
            }
            
            Section("Reservation Details"){
                //$ means can write and read
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                if userName.isEmpty {
                    Text("Plesase insert name")
                        .font(.footnote)
                        .foregroundColor(.yellow)
                }
                
                Stepper(value:$guestCount, in: 1...maxGuest){
                    HStack {
                        Text("Guests: \(guestCount)")
                        
                        if guestCount >= 8 {
                            Text("Please call ahead")
                                .font(.callout)
                                .foregroundColor(.orange)
                                .minimumScaleFactor(0.8)
                                .lineLimit(1)
                            }
                        }
                    }
                }
            Section("Contact"){
                TextField("Phone", text:$phoneNumber)
                    .keyboardType(.numberPad)
            }
            
            Section("Optional"){
                Stepper("# of Children: \(childrenCount)",value:$childrenCount, in: 0...5)
                
                if childrenCount > 0 {
                    TextField("Please enter names of children", text:$childrenNames)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.words)
                }
                
                TextField("Occasion (Birthday, Anniversary, etc.)",text:$occasion)
            }
            
            Button("Preview reservation"){
                    previewText =
                    """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    Children: \(childrenCount)
                    Occasion: \(occasion)
                    """
                }
                .disabled(userName.isEmpty)
            
            Section(header: Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                }
            }
        }
    }
    


#Preview {
    ReservationForm()
}
