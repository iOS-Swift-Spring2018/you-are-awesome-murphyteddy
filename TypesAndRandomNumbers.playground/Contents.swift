//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myInt = -3

var myDouble = 3.00

var myBool = true
myBool = "John" == "john"

var myWeight: Int = 225
var myPercentGoal: Double = 0.1
var weightToLose = Double(myWeight) * myPercentGoal
print(weightToLose)

var weightMessage = "My weight is currently: " + String(myWeight)
print(weightMessage)

let messages = ["You are great", "You are excellent", "You are awesome"]

var myUint = arc4random_uniform(5)
var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
messages[randomIndex]
