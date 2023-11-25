import UIKit

// Create a function that checks to see if a given Int is a prime number. Return true if it is. Return false if it is not.

func isThisAPrimeNumber(num: Int) -> Bool {
    guard num >= 1 else { return false }
    let range = 2...(num - 1)
    
    for number in range {
        if num.isMultiple(of: number) {
             return false
        }
    }
    return true
}
isThisAPrimeNumber(num: 8)
