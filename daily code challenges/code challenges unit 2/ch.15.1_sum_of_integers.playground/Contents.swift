import UIKit

//Code Challenge for today:
// Your task is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

func sumOfIntegersInString(_ string: String) -> Int {
    let number = string.components(separatedBy: CharacterSet.decimalDigits.inverted)
    var numSum = 0
    for item in number {
        if let num = Int(item) {
            numSum += num
        }
    }
    return numSum
}

sumOfIntegersInString("this20is12crazy6")
