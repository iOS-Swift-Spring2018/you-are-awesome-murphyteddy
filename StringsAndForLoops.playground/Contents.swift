//: Playground - noun: a place where people can play

import UIKit

//var age = 22
//print("I am \(22) years old, that's /\(age*7) in dog years")
//
//var lastname = "Murphy"
//var phrase = "My last name is \(lastname) and it contains \(lastname.count) letters."
//print(phrase)
//
//let multiLineBreak = """
//
//    This is the start of a multi-line String.
//        The bottom triple-quote is the anchor for indenting.
//    Triple Quotes enclose multi-line String literals.
//    """
//print(multiLineBreak)
//
//var myString = "Teddy Murphy\nRubenstein Hall C25\nBoston College\nChestnut Hill, MA 02467"
//print(myString)

for increment in 1...5 {
    print(increment)
}

var quizzes = [85, 90, 87, 94, 100]
var sum = 0

for index in 0...quizzes.count - 1{
    sum = sum + quizzes[index]
}
print("The sum of all quizzes is: \(sum)")
print("The average of all quizzes is: \(sum/quizzes.count)")

sum = 0
for index in 0..<quizzes.count {
    sum = sum + quizzes[index]
}
print("The sum of all quizzes is: \(sum)")
print("The average of all quizzes is: \(sum/quizzes.count)")

sum = 0
for quiz in quizzes {
    sum = sum + quiz
}
print("The sum of all quizzes is: \(sum)")
print("The average of all quizzes is: \(sum/quizzes.count)")

for countByFours in stride(from: 0, through: 100, by: 4) {
    print(countByFours)
}

for countByFours in stride(from: 0, through: 100, by: 4) {
    print("To: \(countByFours)")
}

for countByFours in stride(from: 1, through: 100, by: 4) {
    print("1 start: \(countByFours)")
}

for tubmans in stride(from: 100, through: 0, by: -20) {
print("\(tubmans/20) tubmans = $\(tubmans)")
}

for countdown in (0...5).reversed() {
print(countdown)
}

var howMuchLiked = 3
var likePhrase = ""
for likes in 1...howMuchLiked {
    likePhrase += " really"
}
print("I\(likePhrase) like Swift!")
