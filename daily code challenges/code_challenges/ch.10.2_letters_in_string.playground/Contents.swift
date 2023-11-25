import UIKit

//Write a function that prints how many of each letter is in a string

func printCountOfEachLetter(in string: String) {
    var countsByLetter = [Character : Int]()
    for character in string {
        countsByLetter[character, default: 0] += 1
    }
    for (letter, count) in countsByLetter {
        print("Found \(count) letter \(letter)")
    }
}

printCountOfEachLetter(in: "abcdefghijklmnopqrstuvwxyz")
