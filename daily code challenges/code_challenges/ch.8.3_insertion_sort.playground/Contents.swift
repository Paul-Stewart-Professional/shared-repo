import UIKit

// Sorting Algorithms - Insertion Sort

// Same as yesterday, you are not allowed to use the .sort() method

// Create a function that takes in an array of Ints. Sort the array using an insertion sort

// A visualization of what an insertion sort is can be seen here: https://en.wikipedia.org/wiki/Insertion_sort#/media/File:Insertion-sort-example-300px.gif

func insertionSort(arr: [Int]) {
    var numberInSequence = 0
    var newArray: [Int] = []
    newArray.append(arr.first ?? 0)
        for num in arr {
            if num < newArray[numberInSequence] {
                newArray.insert(num, at: numberInSequence)
                numberInSequence += 1
            }
        }
        print(newArray)
    }

insertionSort(arr: [3, 2, 5, 1])
