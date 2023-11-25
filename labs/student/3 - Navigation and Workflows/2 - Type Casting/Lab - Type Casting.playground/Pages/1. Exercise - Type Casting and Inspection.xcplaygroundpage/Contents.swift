/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let arrayOfThings: [Any] = [true, Int(24), "Blah blah blah", 3.4, "Scooby doo", false]
print(arrayOfThings)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in arrayOfThings {
    if let i = i as? Int {
        print("The integer has a value of \(i)")
    } else if let i = i as? Bool {
        print("The bool has a value of \(i)")
    } else if let i = i as? Double {
        print("The double has a value of \(i)")
    } else if let i = i as? String {
        print("The string has a value of \(i)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dict: [String: Any] = [ "scooby": 1.0 , "fred": 2 , "velma" : "glasses" , "shaggy" : true ]

for i in dict {
    print(i.key, i.value)
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
//for i in dict {
//    if let i = i as? Bool {
//        if i == true {
//            total += 2
//        } else {
//            total -= 3
//        }
//    }
//}

for (_, value) in dict {
    if let boolValue = value as? Bool {
        if boolValue {
            total += 2
        } else {
            total -= 3
        }
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let intValue = value as? Int {
        total += Double(intValue)
    } else if let stringValue = value as? String {
        total += 1
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (_, value) in dict {
    if let intValue = value as? Int {
        total2 += Double(intValue)
    } else if let doubleValue = value as? Double {
        total2 += doubleValue
    } else if let stringValue = value as? String {
        total2 += Double(stringValue.count)
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
