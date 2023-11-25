import UIKit

func stringOfNumbers(size: Int) -> String {
    var resultingString = ""
    for count in 1...size {
        if count.isMultiple(of: 2) {
            resultingString += "0"
        } else {
            resultingString += "1"
        }
    }
    return resultingString
}
    
print(stringOfNumbers(size: 4))
