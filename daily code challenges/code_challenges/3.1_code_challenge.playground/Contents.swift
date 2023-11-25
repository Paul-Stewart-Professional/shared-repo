import UIKit

func multiplyingAnArrayOfInts (arrayReceived: [Int]) -> [Int] {
    var newArrayToBeReturned = [Int]()
    return arrayReceived.map { $0 * 5 }
}

print(multiplyingAnArrayOfInts(arrayReceived: [1,2,3,4,5,6]))
