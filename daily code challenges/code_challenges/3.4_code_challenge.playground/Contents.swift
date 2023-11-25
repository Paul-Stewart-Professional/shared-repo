import UIKit

// Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

func fakeBinary(str: String) -> String {
    var result = ""
    for char in str {
        if let intValue = char.wholeNumberValue {
            result += intValue < 5 ? "0" : "1"
        }
    }
    return result
}


let str = "12345678"
let result = fakeBinary(str: str)
print(result)
