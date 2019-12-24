import Foundation

// Variables
var str_variable = "Code For Girls"

// Constants
let str_constant = "Code For Girls"

// Data Types
var number: Int = 5 // integer
var lessPrecisePI: Float = 3.14 // float
var morePrecisePI: Double = 3.1415926536 // double
var isVisible: Bool = true // boolean

// String
var firstName = "Noura"
var secondName = "Abdulaziz"
var fullName = firstName + " " + secondName // Noura Abdulaziz

// Naming
let π = 3.14159
let مرحبا = "Welcome"
let 🐶🐮 = "dogcow"
let `class` = "class"

// Printint Output
var name = "Sara"
var friendsCount = 2
var friend1 = "Nora"
var friend2 = "Ghada"
print("\(name) has \(friendsCount) friends, \(friend1) and \(friend2).")


// Type Casting
var string_number = "1" // String
var int_number = Int(number) // Int

var number_int = 1 // Int
var number_string = "\(number_int)" // String


//Comments

//Single line comment
// This variable sotres 3.14
let pi = 3.14
print(pi)

//Multilines comment
/*
Hardcoded pi value may less accurate.
So, you can calculate using in built data types
 for more accurate value
*/
let pi_value = 3.14
print(pi_value)


// Arithmetic Operators
var number1: Int = 4
var number2: Int = 5
var result = number1 + number2
print("\(number1) + \(number2) = \(result)")

//Compression Operators
let a = 10
let b = 10
print(a == b)
print(a < b)

//Conditional Statements

var grade = 60

// if-else
if grade >= 60 {
    print("Pass")
}
else {
    print("Fail")
}
// if-else if-else
if grade >= 90  {
    print("Excellent")
}
else if grade >= 85 && grade < 90 {
    print("Very Good")
}
else if grade >= 75 && grade < 85 {
    print("Good")
}
else if grade >= 65 && grade < 75 {
    print("Average")
}
else if grade >= 60 && grade < 65 {
    print("Acceptable Pass")
}
else {
    print("Fail")
}

// if-else with compression operators
var your_name = "John"
var age = 20
if your_name == "John" && age == 20 {
    print("Your name is John, and you are also 20 years old.")
}

if your_name == "John" || your_name == "Rick" {
    print("Your name is John or Rick.")
}

//Demo
// Quarter of the year
let month = "January"
if month == "January" || month == "February" || month == "March" {
    print("First Quarter")
}
else if month == "April" || month == "May" || month == "June" {
    print("Second Quarter")
}
else if month == "July" || month == "August" || month == "September"{
    print("Third Quarter")
}
else if month == "October" || month == "November" || month == "December" {
    print("Fourth Quarter")
}

//Activity
// Tempretur
let temperature: Float = 18.0
if temperature < 20 {
    print("It’s very cold, wear a jacket.")
}
else {
    print("It’s not that cold, wear a t-shirt.")
}


