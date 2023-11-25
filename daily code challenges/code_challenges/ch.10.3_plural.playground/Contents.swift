import UIKit

// Write a function that takes in an array of strings. Print all the plural strings that end in 's'

func returningPlurals(arrOfStrings: [String]) {
    for string in arrOfStrings {
        if string.suffix(1).contains("s") {
            print(string)
        }
    }
}

returningPlurals(arrOfStrings: ["Syrup", "Burgers", "Dominos", "Penguin"])
