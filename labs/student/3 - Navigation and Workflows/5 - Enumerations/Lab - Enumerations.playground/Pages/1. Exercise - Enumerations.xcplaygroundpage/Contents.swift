/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit{
    case clubs, spades, diamonds, hearts
}

//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
var cardInHand = Suit.hearts

//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
cardInHand = Suit.spades

//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
func getMisfortune(cardSuit: Suit) {
    switch cardSuit {
    case Suit.hearts:
        print("You will get hit by a bus in the upcoming months")
    case Suit.spades:
        print("You will wet your pants the next time you nap in class")
    case Suit.diamonds:
        print("Your dog will eat all of your beef jerky next time you buy jerky")
    case Suit.clubs:
        print("Your phone will explode, there is no exception")
    }
}
    getMisfortune(cardSuit: Suit.spades)
getMisfortune(cardSuit: Suit.clubs)
//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
struct Card {
    var suit: Suit
    var value: Value
}

//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
enum Value {
    case ace
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king
}
let myCard = Card(suit: Suit.hearts, value: Value.ace)
let mySecondCard = Card(suit: Suit.clubs, value: Value.queen)
/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
