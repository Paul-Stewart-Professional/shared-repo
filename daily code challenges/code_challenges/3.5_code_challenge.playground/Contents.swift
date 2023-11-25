import UIKit

// Write a method, that will get an integer array as parameter and will process every number from this array.
// Return a new array with processing every number of the input-array like this:
// If the number has an integer square root, take this, otherwise square the number.
// Example
// [4,3,9,7,2,1] -> [2,9,3,49,4,1]
// Notes
// The input array will always contain only positive numbers, and will never be empty or null.



func changingTheNumber(array: [Int]) {
    for number in array {
        let doubleNumber = Double(number)
        var newArray: [Int] = []
        if doubleNumber.squareRoot() == Double(Int(doubleNumber.squareRoot())) {
            print(Int(doubleNumber.squareRoot()))
            newArray.append(Int(doubleNumber.squareRoot()))
        } else{
            print(Int(pow(doubleNumber, 2)))
            newArray.append(Int(pow(doubleNumber, 2)))
        }
    }
}

changingTheNumber(array: [1,3,5,9,12,64])

