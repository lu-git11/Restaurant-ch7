//
//  CustomerModel.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 3/1/26.
//

import Foundation

class Customer: Identifiable{
    let id = UUID()
    var name: String
    var email: String
    var visits: Int
    var phoneNumber: String
    
    init(name:String, email:String, visits:Int, phoneNumber:String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phoneNumber = phoneNumber
    }
    func summary() -> String{
        return "\(name) - Visits: \(visits)"
    }
}


