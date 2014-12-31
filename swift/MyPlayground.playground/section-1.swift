// Playground - noun: a place where people can play

import Cocoa

println("Hello, World")
var myVariable = 42
myVariable = 50
let myConstant = 42


let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4


let label = "The width is "
let width = 94
let widthLabel = label + String(width)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let ver = 2.0
//let greeting = "Hello, site version \(ver)"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"


var occupations = [
    "Malcom": "Captiain",
    "Kaylee": "Mechanic"
]


// The create an empty array or dictionary, use the initializer syntax
occupations["jayne"] = "Public Relations"

let emptyArray = String[]()
let emptyDictonary = Dictionary<String, Float>()

shoppingList = []


var optionalString: String? = "Hello"
optionalString = nil

var optionalName: String? = "John Appleseed"
optionalName = nil

var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}


let vegatable = "red pepper"

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1,1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    
}


