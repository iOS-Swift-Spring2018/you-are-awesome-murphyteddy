//: Playground - noun: a place where people can play

import UIKit

// NO PARAMETERS OR RETURN VALUES
// averageQuizzes without parameters
let quiz1 = 85
let quiz2 = 86

func avgQuizzes() {
    let avg = Double(quiz1 + quiz2)/2
    print("The average is \(avg)")
}

avgQuizzes()

//TAs without parameters
var taList = ["Caroline", "Sazan", "Nick", "Matt", "Will"]

func listAllTAs() {
    for ta in taList {
        print(ta)
    }
}

listAllTAs()

//PARAMETERS - functions with parameters
print("")
func avgTheseTwoQuizzes(quiz1: Int, quiz2: Int) {
    let avg = Double(quiz1 + quiz2)/2
    print("The average is \(avg)")
}

avgTheseTwoQuizzes(quiz1: quiz1, quiz2: quiz2)
avgTheseTwoQuizzes(quiz1: 83, quiz2: 97)

var sectionOneTAs = ["Tina", "Amy", "Lindsay"]
var sectionTwoTAs = ["Richard", "Connor", "Lenny"]

print("")

func listSectionTAs(names: [String]) {
    for name in names {
        print(name)
    }
}

listSectionTAs(names: sectionOneTAs)
print("")
listSectionTAs(names: sectionTwoTAs)
print("")
listSectionTAs(names: sectionOneTAs + sectionTwoTAs)

print("")

func returnToNumberAvg(num1: Double, num2: Double) -> Double {
    return (num1 + num2) / 2
}

let myAvg = returnToNumberAvg(num1: 80.1, num2: 72.5)
print(myAvg)
var firstQuiz = 92.0
var secondQuiz: Double = 87
let studentAvg = returnToNumberAvg(num1: firstQuiz, num2: secondQuiz)
print(studentAvg)

