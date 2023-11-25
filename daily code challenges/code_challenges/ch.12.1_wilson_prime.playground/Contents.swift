import UIKit

// Wilson primes satisfy the following condition. Let P represent a prime number.

// Then,

// ((P-1)! + 1) / (P * P)
// should give a whole number.

// Your task is to create a function that returns true if the given number is a Wilson prime.

func wilsonPrimes(_ P: Double) -> Bool {
    let wilsonsEquation = ( (P - 1.0)! + 1.0) / (P * P)
    return wilsonsEquation.isWholeNumber
}

wilsonPrimes(7)
