import Foundation

/* Mobile Computing - iOS Spring 2023 Assignment 01 */

/* When you open this file in Xcode, it is normal that you see errors in the source code. */

//**************** QUESTION 1 ****************

// 1.a) Declare a variable called name, age, & gpa of type String, Int, Double respectively, using type annotation.

var name: String
var age: Int
var gpa: Double



// 1.b) Declare a constant called maxHeight of type Double, with a value of 180.93, using type annotation.


 let maxHeight: Double = 180.93




 
// 1.c) Print "Your max height is xxx.xx cm.", replacing the xxx.xx with the value of maxHeight. Use String interpolation.

         print("Your max height is \(maxHeight) cm.")

// print("-----------------------------------")
 
// 1.d) Assign 8,400,428,917 to a variable largeInt and print it. Use the Swift's ability to write large numbers so that they are easy to be read. Refer to Tuples worksheet (problem 4).
 
  var largeInt: Int = 8_400_428_917
  print(largeInt)


// print("-----------------------------------")
 
// 1.e) Write Swift code to print the below text in one single print statement.
            /*
                Hello, All
                Welcome to Mobile Computing - iOS Spring23..!
            */

    print("""
    Hello, All
    Welcome to Mobile Computing - iOS Spring23..!
    """)

// print("-----------------------------------")
 
//**************** END OF QUESTION 1 ****************
 
//**************** QUESTION 2 ****************

// 2.a) Predict what will happen when you try and execute below three statements? Make sure to uncomment the third line.
 

//y = x
//this will throw an error because here we are trying to assign a value of type Double to a variable declared as type Int.
//In Swift, variables must be declared with a specific data type and values can only be assigned if they match the declared type.

// 2.b) Fix the error in the question 2.a

var x = 53.5
var y = 40
y = Int(x)

//**************** END OF QUESTION 2 ****************
 
//**************** QUESTION 3 ****************

// 3 Consider a point (x1,y1), find whether the point is inside or outside the right-angled triangle.

/*
(highX,highY)
|*
| *
|  *
|   *
|    *
|-----*(lowX,lowY)
 */

// with lower right corner (lowX,lowY) and top (highX, highY).
// depending upon the cases print "inside" or "outside"
// use the same test cordinates to test your code
// use this equation of hypotenuse y = -(4/3)x + 4 to solve
// sample test cases(1,-3),(0,0),(5,9),(1,2)


import Foundation
var x1: Double = 1
var y1: Double = 2
var lowX = 3
var lowY = 0
var highX = 0
var highY = 4

let equation: Double  = Double(y1 + (4.0/3.0)*x1)

if Int(x1) > lowX || Int(x1) < highX || Int(y1) < lowY || Int(equation) > highY {
    print("outside")
} else {
    print("inside")
}
// print("-----------------------------------")
 
//**************** END OF QUESTION 3 ****************
 
//**************** QUESTION 4 ****************

// Using loops
// 4.a) Calculate the minimim value of x for which 8ˣ>4000000000 and print with a message.

import Foundation
let yl = 4000000000.0
let xl = log2(yl) / log2(8.0)
print("The minimum value of x for which 8^x > 4000000000 is \(xl)")



// print("-----------------------------------")

// 4.b) Let's say there is an n x n grid. We want to connect the diagonals of the grid
// such that when we print the grid it prints a cross pattern like the format shown below.
// To get the required output, pick special symbols by going to Edit > Emoji & Symbols in Xcode.
// Search for snow to get the both emojis
// Note : Your code should work for any odd value of n, for example, 1, 9, and 147.
// Hint : Use terminator in print statements and loops.
// Sample output for n = 17

//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️

let n = 17
Pattern(n: n)
func Pattern(n: Int) {
    for i in 0..<n {
        for j in 0..<n {
            if i == j || i + j == n - 1 || j == 0 || j == n-1 || i == 0 || i == n-1{
                print("❄️", terminator: "")
            } else {
                print("🎅", terminator: "")
            }
        }
        print(" ")
    }
}

// print("-----------------------------------")

//**************** END OF QUESTION 4 ****************
 
//**************** QUESTION 5 ****************

// Using Strings
// 5.a) Replace the character "a" in original string with "@" and print the new string.
// var original = "This string contains a very few a's."

var original = "This string contains a very few a's."
var newString = original.replacingOccurrences(of: "a", with: "@")
print("New string: \(newString)")

// print("-----------------------------------")

// 5.b) Declare 2 strings str1 and str2 as "go, bearcats!" and "GO, BEARCATS!", respectively and compare them.
// If the 2 strings are equal, print str1 and str2 are equal, else str1 and str2 are not equal.

let str1 = "go, bearcats!"
let str2 = "GO, BEARCATS!"

if str1.lowercased() == str2.lowercased() {
    print("str1 and str2 are equal")
} else {
    print("str1 and str2 are not equal")
}

// print("-----------------------------------")



// 5.c) Given a pair of non empty strings. Count the number of matching characters in those strings (consider the single count for the character which have duplicates in the strings).
// Input : s1 = "philadelphia"
//         s2 = "phillies"
// Output : 5
// (i.e. matching characters :- p,h,i,l,e)
// Hint : You may use Set() to get the unique characters in a string.


let s1 = "philadelphia"
let s2 = "phillies"

let set1 = Set(s1)
let set2 = Set(s2)

let commonElements = set1.intersection(set2)
print("Number of matching characters: \(commonElements.count)")

// print("-----------------------------------")



// 5.d) Write Swift code to trim leading and trailing emoji 🔥 character in a given string.
// var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"
// expected output is "Bearcats"

var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"

let emoji = "🔥"

while myString1.hasPrefix(emoji) {
    myString1.removeFirst()
}

while myString1.hasSuffix(emoji) {
    myString1.removeLast()
}

print(myString1)

//**************** END OF QUESTION 5 ****************
