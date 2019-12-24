import UIKit

// Functions

// No parameter function
func printHelloWorld() {
    print("Hello World.")
}

// Function with return value
func sayHelloWorld() -> String {
    return "Hello World"
}

// Function with parameters
func greet(person: String) {
    print("Hello, \(person).")
}


// Classes
class Person {
    var name: String?
    var gender: String?
    var age: Int?
}

// Create class object
let sara = Person()
sara.name = "Sara"
sara.gender = "Female"
sara.age = 26

if let sara_age = sara.age {
    print("Sara's Age: \(sara_age)")
}
