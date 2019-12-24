import UIKit



// Optionals

// Declaration
let shortForm: Int? = 40
let longForm: Optional<Int> = 40

// Unwrapping optional
var name: String?
name = "Nora"

//Force Unwrapping
print(name!)

//Safe unwrapping
//Use (If) to check for nil before force unwrapping
if name != nil {
    print(name!)
}
//Optional binding, a very common way
if let unwrapped = name {
    print(unwrapped)
}
//Default value
print(name ?? "No name")
