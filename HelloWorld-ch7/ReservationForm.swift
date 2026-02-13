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
            
            Section(header: Text("Reservation Details")){
                //$ means cab write and read
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                Stepper("Guests: \(guestCount)",value:$guestCount, in: 1...maxGuest)
            }
            
            Section(header: Text("Contact")){
                TextField("Phone", text:$phoneNumber)
                    .keyboardType(.numberPad)
            }
            
            Section(header: Text("Optional")){
                Stepper("# of Children: \(childrenCount)",value:$childrenCount, in: 0...5)
                
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
