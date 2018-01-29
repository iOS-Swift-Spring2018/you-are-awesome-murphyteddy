//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
str = "Hello, developer!"
print(str)

let message1 = "You Are Da Bomb!"
var message2 = "You Are Great!"
let message3 = "You Are Amazing!"
str = message2
print(str)
message2 = message3
print(message2)
// constants take up less memory

var messages = ["You Are Awesome", "You are Fantastic", "You Are Great", "Genius' call you", "You are the best", "You are the bomb"]
print(messages)
print(messages[0])
print(messages[3])
messages.count
messages[4]
messages = messages + ["You are tremendous", "You are amazing"]
messages.count
messages += ["You are very skilled"]
messages.insert("You are rad", at: 3)
messages.remove(at: 3)
print(messages)

