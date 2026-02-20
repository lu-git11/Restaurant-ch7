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
    @State private var outdoorSeating = false
    @State private var occasion = ""
    @State private var estimate = ""
    
    // labels for guests
    func guestLabel(_ count:Int) -> String{
        count == 1 ? "Guest" : "Guests"
    }
    
    func estimateTotal(adults: Int, children: Int) -> Double{
        let adultPrice = 15.0
        let childrenPrice = 9.0
        
        return Double(adults) * adultPrice + Double(children) * childrenPrice
    }
    
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
                
                Toggle(isOn:$outdoorSeating) {
                    HStack {
                        Text("Outdoor Seating")
                        
                        if outdoorSeating {
                            Text("Rain or Shine")
                                .font(.callout)
                                .foregroundColor(.orange)
                        }
                    }
                }
                
                TextField("Occasion (Birthday, Anniversary, etc.)",text:$occasion)
            }
            
            Button("Preview reservation"){
                previewText =
                    """
                    Name: \(userName)
                    \(guestLabel(guestCount)): \(guestCount)
                    Phone: \(phoneNumber)
                    Children: \(childrenCount)
                    Outdoor Seating: \(outdoorSeating ? "Yes" : "No")
                    Occasion: \(occasion)
                    """
            }
            .disabled(userName.isEmpty)
            
            Section("Preview"){
                VStack(spacing: 1){
                    Text(previewText)
                        .font(.footnote)
                }
            }
            
            Section("Summary"){
                VStack(spacing: 3){
                    HStack{
                            Text("Reservation Summary")
                            Spacer()
                            Image(systemName: "doc.text.magnifyingglass")
                        }
                    HStack{
                            Text("Name")
                            Spacer()
                            Text(userName)
                        }
                    HStack{
                            Text("Adults:")
                            Spacer()
                            Text("\(guestCount)")
                        }
                    HStack{
                            Text("Children:")
                            Spacer()
                            Text("\(childrenCount)")
                        }
                    HStack{
                            Text("Estimated Total:")
                            Spacer()
                            Text("$\(estimateTotal(adults:guestCount, children:childrenCount),specifier:"%.2f")")
                        }
                    
                }
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.15))
                )
                .padding(.vertical, 4)
            }
        }
    }
}
    


#Preview {
    ReservationForm()
}
