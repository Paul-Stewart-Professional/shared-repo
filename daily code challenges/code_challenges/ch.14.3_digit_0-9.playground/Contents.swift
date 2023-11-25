import UIKit

func checkString(str: String) -> Bool {
    guard str.count == 1 else { return false }
    return Int(str) != nil
}

checkString(str: "89fj9")
