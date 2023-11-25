import UIKit

func arrayOfInts(array: [Int]){
    for index in array {
        if index.isMultiple(of: 2) {
            print("\(index) is even")
        } else {
            print("\(index) is odd")
        }
    }

}


arrayOfInts(array: [1, 2, 3, 4, 5])
