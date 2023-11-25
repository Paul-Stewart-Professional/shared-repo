import UIKit

func sumOfPosNum(arr: [Int]) -> Int {
    var sum = 0
    for num in arr {
        if num > 0 {
            sum += num
        }
    }
    return sum
}


sumOfPosNum(arr: [-5, 0, 12, 4, 5, -5])
