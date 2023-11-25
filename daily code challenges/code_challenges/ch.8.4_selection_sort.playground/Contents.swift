import UIKit

// Sorting Algorithms - Selection Sort

// Same as yesterday, you are not allowed to use the built in .sort() method.

// Create a function that takes in an array of Ints. Sort that array using a selection sort.

// See this for a visual example of a selection sort: https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

func selectionSort(arr: [Int]) {
    var sortedInts: [Int] = []
    var lowestNumKey = 0
    var numInSequence = 0
    var lowestNum = arr[lowestNumKey]
    for num in arr {
        if num < lowestNum {
            lowestNumKey = numInSequence
            numInSequence += 1
        }
    }
}





//var sortedInts: [Int] = []
//    var numInSequence = 0
//    var nextNumKey = 0
//    var nextNum = arr[nextNumKey]
//    var lowestNum = arr[numInSequence]
//    for num in arr {
//        if nextNum <= num {
//            lowestNum = nextNum
//            nextNumKey += 1
//        }
//    }
