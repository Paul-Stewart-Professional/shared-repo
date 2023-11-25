import UIKit

// Observe the photo of the ball clock:
// https://tinyurl.com/3pacct63
// Write a function that accepts 3 ball counts (one for each row) and returns a description of the time represented by those counts
// e.g. 1, 0, 0 would return something like: "The current time is: 1:00" but
// 2, 1, 2, would return something like: "The current time is 2:07"
// :skier::black_circle: Black diamond: Do it in reverse. Build a function that has one parameter of a `Date` and returns 3 ball counts of what the clock would show at a specific time of day
// Challenge created by Parker Rushton

func timeString(from ballCounts: (hr: Int, fiveMin: Int, min: Int)) -> String {
    var hours = ballCounts.hr
    var minutes = (ballCounts.fiveMin * 5) + ballCounts.min
    return "The time is \(hours):\(minutes)"
}

let time = timeString(from: (7, 7, 7))
print(time)


func clockCount(from date: Date) -> (Int, Int, Int) {
    let hour = Calendar.current.component(.hour, from: date)
    let minute = Calendar.current.component(.minute, from: date)
    let fiveMinuteBall = minute / 5
    let remainder = minute & 5
    return (hour, fiveMinuteBall, remainder)
}
