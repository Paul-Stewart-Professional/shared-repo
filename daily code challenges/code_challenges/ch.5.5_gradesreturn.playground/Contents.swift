import UIKit

//Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

// Numerical Score    Letter Grade
// 90 <= score <= 100    'A'
// 80 <= score < 90        'B'
// 70 <= score < 80        'C'
// 60 <= score < 70        'D'
// 0 <= score < 60        'F'
//Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    var score: String = "A"
    var avg = (s1 + s2 + s3) / 3
    if 90 <= avg && avg <= 100 {
        score = "A"
    } else if 80 <= avg && avg <= 90 {
        score = "B"
    } else if 70 <= avg && avg <= 80 {
        score = "C"
    } else if 60 <= avg && avg <= 70 {
        score = "D"
    } else if 0 <= avg && avg <= 60 {
        score = "F"
    }
  return score
}

let myGrade = getGrade(90, 70, 100)
print(myGrade)
