//
//  main.swift
//  swift1
//
//  Created by Oleg Kulikov on 1/16/21.
//

import Foundation

/*
print("Hello, World!")

var myVariable : Int32 = 42
myVariable = 50
let myConstant : Int32 = 42

let label = "The width is "
let widthLabel = label + String(myVariable)
print(widthLabel)


let apples = 3
let orange = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + orange) fruit"
print(appleSummary)
print(fruitSummary)

let quotation = """
Как живется вам с другою,-
Проще ведь?- Удар весла!-
Линией береговою
Скоро ль память отошла
"""
print(quotation)

exit(myConstant + myVariable)
*/

/*
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
shoppingList.append("blue paint")
print (shoppingList)

var occupations = [
    "Malcolm" : "captain",
    "Kaylee"  : "mechanic"
]
occupations["Jane"] = "PR"
print(occupations)

let emptyArray = [String]()
let emptyDirectory = [String:Float]()

shoppingList = []
occupations = [:]
*/

/*
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
*/

/*
var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Appleseed"
//var optionalName: String? = nil
if let name = optionalName {
    print("Hello" + ", " + name)
}

let nickname: String? = nil
let fullName: String = "John"
let greeting = "Hello, \(nickname ?? fullName)"
print(greeting)
*/

/*
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some rasins and make ants on a log")
case "cucumber", "watercress":
    print ("That wpuld make a good sandwich")
case let x where x.hasSuffix("pepper"):
    print ("It's a spicy \(x)!!!")
default:
    print("Everything tastes good in soup")
}
*/


/*
let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print ("Largest is \(largest) from \(largestKind)")
*/

/*
var n = 2
while n < 100 {
    n *= 2
}
print (n)

var m = 2
repeat {
    m *= 2
} while m < 100
print (m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
*/

/*
func greet (_ person: String, on day : String) -> String {
    return "Hello \(person), today is \(day)."
}
var greeting = greet("John", on: "Wednesday")
print(greeting)
*/

/*
func greet (person: String, day : String) -> String {
    return "Hello \(person), today is \(day)."
}

var greeting = greet(person: "John", day: "Wednesday")
print(greeting)
*/
/*
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0;
    
    for score in scores {
        if score > max {
            max = score
        }
        if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.1)
*/
 /*
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    
    return y
}

print (Int32(returnFifteen()))
*/

/*
func makeIncrement() -> ((Int)->Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrement()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int)->Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThenTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThenTen))

var mappedNumbers1 = numbers.map({(number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    }
    let result = 3 * number
    return result
})
print (mappedNumbers1)

let mappedNumbers2 = numbers.map({number in 3 * number})
print (mappedNumbers2)

let sortedNumbers = numbers.sorted {$0 > $1}
print(sortedNumbers)
*/

/*
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription() ; print(shapeDescription)
*/

/*
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape \(name) with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        self.numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square '\(name)' with sides of length \(sideLength)"
    }
}

let test = Square(length: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 33
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(length: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
// Prints "10.0"
print(triangleAndSquare.triangle.sideLength)
// Prints "10.0"
triangleAndSquare.square = Square(length: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
// Prints "50.0"

let optionalSquare: Square? = Square(length: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
*/
/*
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .queen:
            return "queen"
        case .jack:
            return "jack"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
print(ace.simpleDescription())

func compare(a: Rank, b:Rank) ->String {
    var result : String = ""
    
    if a.rawValue > b.rawValue {
        result = a.simpleDescription() + " is higher then " + b.simpleDescription()
    } else if  a.rawValue < b.rawValue {
        result = a.simpleDescription() + " is lower then " + b.simpleDescription()
    } else {
        result = a.simpleDescription() + " equals to " + b.simpleDescription()
    }
    
    return result
}

print(compare(a:Rank.jack, b:Rank.ten))
print(compare(a:Rank.jack, b:Rank.king))
print(compare(a:Rank.jack, b:Rank.jack))

enum Suit {
    case spades, hearts, diamonds, clubs

    func color() -> String {
        switch self {
        case .clubs, .spades:
            return "black"
        default:
            return "red"
        }
    }
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(heartsDescription + " are " + hearts.color())
*/
/*
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00am", "8:09pm")
let failure = ServerResponse.failure("Out of cheese")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("failure ... \(message)")
}
*/

/*
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .queen:
            return "queen"
        case .jack:
            return "jack"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs

    func color() -> String {
        switch self {
        case .clubs, .spades:
            return "black"
        default:
            return "red"
        }
    }
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

struct Card {
    var rank: Rank
    var suite: Suit
    func SimpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suite.simpleDescription())"
    }
}

let card = Card(rank: .queen, suite: .spades)
puts(card.SimpleDescription())

*/
/*
protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adjust()
}

class SimpleClass : ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    
    func adjust()  {
        simpleDescription += " Now 100% adjusted"
    }
}

var a = SimpleClass()
print(a.simpleDescription)
a.adjust()
print(a.simpleDescription)

struct SimpleStructure : ExampleProtocol {
    var simpleDescription: String = "A very simple structure"
    
    mutating func adjust()  {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
print(b.simpleDescription)
b.adjust()
print(b.simpleDescription)

extension Int : ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)
var d = 7
d.adjust()
print(d.simpleDescription)

let protocolValue : ExampleProtocol = a
print(protocolValue.simpleDescription)
//Error:
//print(protocolValue.anotherProperty)
*/

/*
enum PrinterError: Error {
  
 case outOfPaper
    case noToner
    case onFire
}

func send (job: Int, toPrinter printerName: String) throws -> String  {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return ("Job \(job) sent to \(printerName)")
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire{
    print("Printer on fire")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError)")
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch PrinterError.onFire{
    print("Printer on fire")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError)")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}

print(fridgeContains(food: "banana"))
print(fridgeIsOpen)
*/

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Array<T.Element> where T.Element: Equatable, T.Element == U.Element{
    var result = [T.Element]()
    for l in lhs {
        for r in rhs {
            if l == r {
                result.append(l)
            }
        }
    }
    return result
}

let isCommon = anyCommonElements([1, 2, 3, 4, 5], [3, 4, 5, 6, 7])
print(isCommon)
