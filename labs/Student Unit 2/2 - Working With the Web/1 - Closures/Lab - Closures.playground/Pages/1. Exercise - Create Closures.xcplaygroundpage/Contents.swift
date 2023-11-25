/*:
## Exercise - Create Closures
 
 Create a closure assigned to a constant `blankClosure` that has no parameters and no return value.
 */
var blankClosure: (() -> Void)

//:   Create a closure assigned to a constant `fourClosure` that has no parameters and returns an `Int`. The body of the closure should always return the value 4. Call the closure four times.
var fourClosure = { () -> Int in
    return 4
}
fourClosure()
fourClosure()
fourClosure()
fourClosure()
//:  Create a closure assigned to a constant `greeting` that accepts a `name` string argument with no return value. Within the body of the closure, print the argument. Call the closure four times using "Gary", "Jane", "Rick", and "Beth" as arguments.
var greeting = { (name: String) in
    print(name)
}

greeting("Gary")
greeting("Jane")
greeting("Rick")
greeting("beth")
/*:
page 1 of 3  |  [Next: Exercise - Passing Closures as Arguments and Syntactic Sugar](@next)
 */
