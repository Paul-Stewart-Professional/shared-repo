import UIKit

//remove all spaces from a string and return the resulting string

func removeSpaces(str: String) -> String {
    return str.replacingOccurrences(of: " ", with: "")
}
let result = removeSpaces(str: "Hello there")
print(result)
