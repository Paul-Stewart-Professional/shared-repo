import UIKit

// You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

// The type of a and x can be String OR Int.

// Return true if the array contains the value, false if not.

//Take note of the wording of this problem. I should be able to pass in either an array of strings or an array of Ints and it will work the same.

func containsValue<T: Equatable>(_ array: [T], _ value: T) -> Bool {
    return array.contains(value)
}


let intArray = [1, 2, 3, 4, 5]
let stringValue = "whats"
let intValue = 3

let containsStringValue = containsValue([stringValue, "poppin"], stringValue)
let containsIntValue = containsValue(intArray, intValue)
let containsNonExistentValue = containsValue(intArray, 10)

