//: Playground - noun: a place where people can play

import UIKit

func averageTwoNumbers(number1: Double, number2: Double) -> Double {
    return (number1 + number2) / 2
}

averageTwoNumbers(number1: 90, number2: 80)

func sayHello(to name: String) {
    print("Hello, " + name)
}

sayHello(to: "Prince")
sayHello(to: "My Friend")

func swapNumbers(first: inout Int, second: inout Int) {
    let temp = second
    second = first
    first = temp
}

var a = 123
var b = 987
swapNumbers(first: &a, second: &b)
print(a, b)
