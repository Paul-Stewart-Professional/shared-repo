import UIKit

/*
Given a string return the number of sentences found in the string.
 */
var puncArray = [". ", "! ", "? "]

func countSentences(_ sentences: String) -> Int {
    var sentenceCount = 0
    if sentences.contains(puncArray) {
            sentenceCount += 1
    }
    return sentenceCount
}

countSentences("This is my favorite time of the year. I think that fall is fun, unfortunately winter is coming too fast. It is freezin")
