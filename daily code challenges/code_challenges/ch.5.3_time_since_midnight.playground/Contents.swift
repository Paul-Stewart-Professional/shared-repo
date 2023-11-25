import UIKit

// Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:
// h = 0
// m = 1
// s = 1

// result = 61000

func timeSinceMidnight(h: Int, m: Int, s: Int) -> Int {
    var time: Int = 0
    time += (h * 3600000) + (m * 60000) + (s * 1000)
    return time
}

timeSinceMidnight(h: 0, m: 1, s: 1)


let calendar = Calendar.current
let now = Date()

func getMinutesSinceMidnight() -> Int {
        return ((calendar.component(.hour, from: now) * 60 + calendar.component(.minute, from: now) + calendar.component(.second, from: now) / 60)) * 60000
}

print(getMinutesSinceMidnight())

print("change")
