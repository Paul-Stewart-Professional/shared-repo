import UIKit

// Write a function that takes in two arrays of Strings.
// - This function should keep track of which elements in either array do not also appear in the other array.
// - Return a new array of those unique elements

func returnUnique(arr1: [String], arr2: [String]) -> [String]{
    var finalArr: [String] = []
    for item in arr1 {
        if !arr2.contains(item) {
            finalArr.append(item)
        }
    }
    for item in arr2 {
        if !arr1.contains(item) {
            finalArr.append(item)
        }
    }
    return finalArr
}

let results = returnUnique(arr1: ["one", "two", "three", "four"], arr2: ["three", "four", "five"])
print(results)
