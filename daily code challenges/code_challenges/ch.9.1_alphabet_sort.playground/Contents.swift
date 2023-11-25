import UIKit

// Alphabetically reverse sort an array of strings. So ["Bob", "Jill", "Sally"] returns ["Sally", "Jill", "Bob"] or ["Vern", "Gidget", "Zeb"] returns ["Zeb", "Vern", "Gidget"]

func alphabetSoup(words: [String]) -> [String]{
    return words.sorted(by: >)
}
alphabetSoup(words: ["a", "g", "k", "p", "z", "p"])
