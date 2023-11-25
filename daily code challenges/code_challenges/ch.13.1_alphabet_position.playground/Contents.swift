import UIKit

// When provided with a letter, return its position in the alphabet.

// Input :: "a"

// Ouput :: "Position of alphabet: 1"

func placeInAlphabet(letter: Character) {
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let array = Array(alphabet)
    var place = 1
    for char in array {
        if letter.lowercased() == char.lowercased() {
            print("\(letter) is the \(place) letter of the alphabet")
            place = 1
        } else {
            place += 1
        }
    }
}

placeInAlphabet(letter: "H")
