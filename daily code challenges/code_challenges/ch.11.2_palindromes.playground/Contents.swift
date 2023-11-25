import UIKit

// You may remember that a palindrome is a word that's spelled the same backward and forwards — like "mom" or "racecar." Create a function that accepts a string as input and returns TRUE if the string is a palindrome.

// For an extra challenge, find a way to check whether a phrase or sentence is a palindrome — for example, "Taco Cat" or, "Too bad I hid a boot." You'll have to find a way to remove spaces in your phrases to get the function to work.
extension String {
    func palindrome() -> Bool {
        var string = self.lowercased()
        string.unicodeScalars.removeAll(where: { CharacterSet.alphanumerics.inverted.contains($0) })
        return String(string.reversed()) == string
    }
}
"mom".palindrome()
