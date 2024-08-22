//: [Previous](@previous)

import Foundation


//Count the number of occurrences of each char in the input string.

// 1. we take input as a string Hello
// 2. create a count variable to count it.
// 3. we create a dictionary and for every iteration store the value with character and count
// 4. If there is no letter in dictonary append it with the count.
// 5. If already smae character exists then increase the count.

func charOccurrence(_ stringInput: String) -> [Character:Int]{
    var charDict:[Character:Int] = [:]
    for i in stringInput{
        if let count = charDict[i]{
            charDict[i] = count + 1
        }else{
            charDict[i] = 1
        }
    }
    return charDict
}
var strInput = "Hello"
print(charOccurrence(strInput))


