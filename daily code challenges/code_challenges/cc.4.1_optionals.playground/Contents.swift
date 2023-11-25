import UIKit

//func takingFirstNumberFromArray(Array: [Int]) -> Int {
//        var arrayToWorkWith = Array
//        arrayToWorkWith.reverse()
//        return arrayToWorkWith.last!
//    }
//
//print(takingFirstNumberFromArray(Array: [2, 3, 4, 6, 7, 8]))

struct Address {
    let number: Int
    let street: String
}

struct Student {
    let firstName: String
    var middleName: String?
    let lastName: String
    var address: Address?
    
    var fullName: String {
        
        if let middleNameExists = middleName {
            return firstName + " " + middleNameExists + " " + lastName
        } else  {
            return firstName + " " + lastName
        }
//        if middleName != nil {
//            return firstName + " " + middleName! + " " + lastName
//        } else {
//           return firstName + " " + lastName
//        }
    }
}

let ryan = Student(firstName: "Andrew", middleName: "Ryan", lastName: "Plitt", address: Address(number: 123, street: "Easy St"))
let tyler =

ryan.fullName
ryan.address?.street

let text = "24"

let age = Int(text)

if let age {
    print(age)
}

//or

print(age ?? 100)
//nil coalescing, ?? 100 sets the default value.

