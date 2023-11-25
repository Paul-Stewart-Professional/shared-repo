import UIKit

// You are given an array with positive numbers and a non-negative number N. You should find the N-th power of the element in the array with the index N. If N is outside of the array, then return nil. Don't forget that the first element has the index 0.

// Let's look at a few examples:

// array = [1, 2, 3, 4] and N = 2, then the result is 3^2 == 9;
// array = [1, 2, 3] and N = 3, but N is outside of the array, so the result is nil.

func powerOfNum(arr: [Double], N: Double) -> Double? {
    let index = Int(N)-1
    if arr.count < index {
        return nil
    } else {
        return pow(arr[index], N)
    }
}

powerOfNum(arr: [1,2,3,4,5], N: 4)
