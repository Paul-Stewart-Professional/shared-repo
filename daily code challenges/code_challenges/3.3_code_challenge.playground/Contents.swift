import UIKit

func completeTheSquare(array: [Int]) -> Int {
    var total = 0
    for i in array {
        total += i * i
    }
    return total
}

completeTheSquare(array: [1, 2, 3])
