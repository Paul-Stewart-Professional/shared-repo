import UIKit

func findAverage(arr: [Int]) -> Int {
    var total = 0
    var myArr = arr
    for _ in arr {
        total += myArr.last!
        myArr.removeLast()
    }
    return Int(total / arr.count)
}

findAverage(arr: [1, 2, 3, 4])
findAverage(arr: [5, 5, 5, 5, 5])
findAverage(arr: [2, 5, 3, 2])
