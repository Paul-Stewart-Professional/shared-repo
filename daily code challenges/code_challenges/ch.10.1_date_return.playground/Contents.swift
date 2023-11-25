import Foundation

// -MARK: Fix this function to return a date from a given string. The date will always be in the format "yyyy-mm-dd".

func convertToDate(_ dateString: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let dateObject = dateFormatter.date(from: dateString)
    print(dateObject!)
    return dateObject
}

convertToDate("2006-06-25")
