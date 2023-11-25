import UIKit

func stoppingArray(arr: [Int], n: Int) -> [Int] {
    var newArr = arr
    for num in arr {
        if num > n {
            newArr.removeLast()
        }
    }
    return newArr
}

let result = stoppingArray(arr: [1, 2, 3, 4, 5, 6, 7, 8], n: 6)

print(result)
