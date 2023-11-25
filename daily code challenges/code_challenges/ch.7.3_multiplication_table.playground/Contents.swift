import UIKit

// Your goal is to return multiplication table for number that is always an integer from 1 to 10.

//For example, a multiplication table (string) for number == 5 looks like below:

// 1 * 5 = 5
// 2 * 5 = 10
// 3 * 5 = 15
// 4 * 5 = 20
// 5 * 5 = 25
// 6 * 5 = 30
// 7 * 5 = 35
// 8 * 5 = 40
// 9 * 5 = 45
// 10 * 5 = 50
// P. S. You can use \n in string to jump to the next line.

func multTable(number:Int) {
    for num in 1...10 {
        var product = num * number
        print("\(num) * \(number) = \(product)")
    }
}

multTable(number: 6)


func secondMultTable(number:Int) -> String {
    var table: String = ""
    for num in 1...10 {
        var product = num * number
        table += "\(num) * \(number) = \(product)"
        if num != 10 {
            table += "\n"
        }
    }
    return table
}

print(secondMultTable(number: 5))
