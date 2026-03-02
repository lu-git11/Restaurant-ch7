import UIKit

/*
 Class is used too define a custom type(blueprint)
 With the class, we create objects
 There are properties and methods
 
 class ClassName{
    var property1: DataType
    var property2: DataType
 
    init(property1:DataType, property2:DataType){
        self.propertyName1 = propertyName1
        self.propertyName2 = propertyName2
    }
    func functionName() -> ReturnType {
        return
    }
 }
 */

class Dog{
    var name: String
    var age: Int
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    func bark(){
        print("\(name) says woof!")
    }
}

let dog1 = Dog(name:"Doggy",age:1)
let dog2 = Dog(name:"Moka",age:2)


dog1.bark();
dog2.bark();

// example 2

class Customer{
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
    
    func greetings() -> String{
        return "Welcome back \(name)"
    }
    func contactCard() -> String{
        return """
            Name: \(name)
            email: \(email)
            visits: \(visits)
            Phone Number: \(phoneNumber)
            """
    }
}
// mini challenge

let customer1 = Customer(
    name: "Jeff",
    email: "jeff@gmail",
    visits: 3,
    phoneNumber: "2345"
)
print(customer1.contactCard())
print(customer1.greetings())

let customer2 = Customer(
    name: "John",
    email: "john@gmail.com",
    visits: 3,
    phoneNumber: "44444"
)

print("-----Customer 2 ----")
print(customer2.contactCard())


