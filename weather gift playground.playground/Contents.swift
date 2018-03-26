//: Playground - noun: a place where people can play

import UIKit

var placeName = "Copenhagen"

placeName.count
placeName.contains("pen")

struct Person{
    var firstName: String
    var lastName: String
    
    func sayHello() {
        print("Hello, my name is \(firstName) \(lastName)")
    }
}

var professor = Person(firstName: "John", lastName: "G")
print(professor.lastName)

professor.sayHello()

