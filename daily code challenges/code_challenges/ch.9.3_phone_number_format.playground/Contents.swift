import UIKit

//Code challenge today: the api you're using needs a specific format for phone numbers (xxx-xxx-xxxx). Write a throwing function that takes in a string and returns a formatted phone string, or throws if the string that was passed in is not a valid phone number.

enum NumberError: Error {
    case tooShort
    case tooLong
}

func phoneNumberFormat(number: String) throws -> String {
    guard number.count == 10 else {
        if number.count > 10 {
            throw NumberError.tooLong
        } else {
            throw NumberError.tooShort
        }
    }
    var firstThree = number.prefix(3)
    var lastFour = number.suffix(4)
    var middleThree = number.dropFirst(3).prefix(3)
    var formattedNumber: String = "(\(firstThree)-\(middleThree)-\(lastFour)"
    return formattedNumber
}
try phoneNumberFormat(number: "8014206969")
