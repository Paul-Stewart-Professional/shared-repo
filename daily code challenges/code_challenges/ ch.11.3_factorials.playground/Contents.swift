import UIKit

// Factorial

// Create a function that takes in an Int as input and returns the factorial of that number

// 0! = 1
// 1! = 1
// 2! = 1 * 2 = 2
// 3! = 1 * 2 * 3 = 6
// 4! = 1 * 2 * 3 * 4 = 24

func factorial(_ n: Int) -> Double {
  return (1...n).map(Double.init).reduce(1.0, *)
}

factorial(4)
