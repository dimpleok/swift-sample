//
//  main.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/7.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

// Constant
let highResolution = true
let PI: Double
if highResolution {
    PI = 3.1415926535897
} else {
    PI = 3.1416
}

let p = Point(x: 10, y: 100)
var z = Point()

println( p != z)

println("\(p.description)")
println("point p:\(p.x) \(p.y)")
println("point z:\(z.x) \(z.y)")
z.x = 1
z.y = 1
println("point z:\(z.x) \(z.y)")
z.moveBy(deltaX: 9, deltaY: 9)
println("point z:\(z.x) \(z.y)")
println("distance: \(z.distance)")

var rect = Rectangle(origin: Point(x:0, y:0), size: Size(width: 100, height: 200))

println(rect.center.x)
println(rect.center.y)
rect.center = Point(x: 100, y: 100)
println(rect.origin.x)
println(rect.origin.y)

var cuboid = Cuboid(height: 10, width: 10, depth: 10)
println("volume = \(cuboid.volume)");

// Enum
enum Color : Int
{
    case blue=0, red=1, green=2
}

func choiceColor(c: Color) -> String
{
    var choice = "you like "
    switch c
    {
    case .blue:
        choice += "blue"
    
    case .red:
        choice += "red"
    
    case .green:
        choice += "green"
        
    default:
        choice += "any color"
    }
    return choice
    
}

let c = Color.red
let myChoice = choiceColor(c)
println("based on your choice:\(myChoice)")

// Array
var weekday = ["SUNDAY", "MONDAY", "TWESDAY"]
weekday.append("WEDNESDAY")
weekday.append("THURSDAY")
for day in weekday {
    println("This is \(day)")
}
var intArr = [Int]()
intArr.append(100)
println(intArr.count)
intArr = []
println(intArr.count)
var intArr2 = [Int](count:10, repeatedValue: 10)
println(intArr2[1])
var mixArr = [1, 2, "aa", "bb"]
for e in mixArr {
    println(e)
}

// For loop
var total = 0
for i in 1...100 {
    total += i
}
println("total: \(total)")

var s = "Hello"
println("\( revertCharCase(originalStr: s) )");
revertCharCase(&s)
println("revert string: \(s)")
let newIndex = advance( s.startIndex, 2)
let subs = s[s.startIndex...newIndex]
println("subs=\(subs)")
let abc = reverseString("abcdef")
println("\(abc)")

// Reference
var a = 9
var b = 8
mySwap(&a, &b)
println("a=\(a) b=\(b)")

// Dictionary
var p1 = ["name": "wanjiushi", "age": 30]
if let address = p1["address"] {
    println("address found")
} else {
    println("address not found")
}
println(p1["name"]!)
println(p1["age"]!)
p1 = [:]

// Closure
var numbers = [3, 5, 7, 9]
let squareNumbers = numbers.map {
    $0 * $0
}
println(numbers[0])
for n in squareNumbers {
    println(n)
}

// Sort and find
let decentedNumbers = sorted(numbers, >)
println(decentedNumbers[0])

println("numbers = \(numbers)")
sort(&numbers) { $0 > $1 }
println("numbers = \(numbers)")
if let index = find(numbers, 7) {
    println("found 7 at \(index)")
} else {
    println("not found the number")
}

let (minVal, maxVal) = findMinMax(numbers)
println("min=\(minVal) max=\(maxVal)")

// String
var str = "hello, 中国"
if str.hasPrefix("hello") {
    println("found")
}
println(str.capitalizedString)

println(count(str))
if !str.isEmpty {
    println("not empty")
}
var ageStr = "16"
if let ageInt = ageStr.toInt() {
    println(ageInt)
} else {
    println("not valid")
}

var m = Matrix(rows: 2, columns: 5)
m[0,1] = 200
m[1,0] = 100
println(m.grid)

var rList = [5, 4, 1, 2, 3]
println("pivot position=\(partition(&rList, 0, 4))")
quickSort(&rList, low: 0, high: rList.count - 1)
println(rList)
rList = reverse(rList)
println(rList)
heapSort(&rList)
println(rList)

rList[2] = 0
let missNumber = findMissingElement(rList)
println("This missing number is \(missNumber)")

// Character
//var ch : Character = "a"
let ch = Character(UnicodeScalar(65))
println( ch )
//println( String(ch).utf16[0] )

// Arguments from CLI
println(Process.argc)
for i in 1..<Process.argc {
    var arg = String.fromCString(Process.unsafeArgv[Int(i)])
    println(arg!)
}

var ccc = 0;
for arg in Process.arguments {
    println("argument \(ccc) is: \(arg)")
    ccc++
}

// Date time
println(whatTime())
println(NSDate().timeIntervalSinceReferenceDate)

// File
let text = "Hello"
text.writeToFile("/tmp/aaa", atomically: false, encoding: NSUTF8StringEncoding, error: nil)
let text2 = String(contentsOfFile: "/tmp/aaa", encoding: NSUTF8StringEncoding, error: nil)
println(text2!)

dispatch_async(dispatch_get_main_queue()) {
    let text = "in queue"
    text.writeToFile("/tmp/aaa", atomically: false, encoding: NSUTF8StringEncoding, error: nil)
    println("hello")
}

let filepath = "/tmp/sample.json"
if let jsonData = NSData(contentsOfFile: filepath) {
    if let jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary! {
        if let myname: String = jsonResult["name"] as! String! {
           println(myname)
        }
    }
}
sleep(10)


