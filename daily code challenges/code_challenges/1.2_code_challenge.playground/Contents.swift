import UIKit

let color = "blue"
let number = 50
let range = 1...100
let letter = "y"

if color == "blue" {
    print("That is my favorite color!")
} else {
    print("Cool!")
}
if range.contains(number) {
    print("That is a valid number!")
} else  {
    print("That is NOT a valid number")
}
switch letter {
case "a, e, i, o, u":
    print("This letter is a consonant!")
case "y":
    print("This letter can be both a consonant and a vowel!")
default:
    print("This letter is a consonant!")
}
