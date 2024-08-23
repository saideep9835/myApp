//: [Previous](@previous)

import Foundation


//Count the number of occurrences of each char in the input string.

func charOccurrence(_ stringInput: String) -> [Character:Int]{
    var charDict:[Character:Int] = [:]
    for i in stringInput{
        if let count = charDict[i]{   //we cannot directly check the dictonary to instead we need to unwrap it and check                                  //the condition
            charDict[i] = count + 1
        }else{
            charDict[i] = 1
        }
    }
    return charDict
}
var strInput = "statisics"
//print(charOccurrence(strInput))

//Find the most recurring char in the input string.

// 1. we need a string = statistics
// 2. we will get the count for each and every letter in a dictionary
// 3. we will loop the dictionary and the max count.
func rec(_ str: String) -> Character{
    var char: Character = "!"
    var maxValue=0
    for (key,value) in charOccurrence(str){
        if value > maxValue{
            maxValue=value
            char = key
            
        }
    }
    return char
}
var str = "statisics"
//print(rec(str))

// finding a character is present or not in a string
//var st = "Hello"
//print(st[st.startIndex])

for i in "Hello World"{
    if "a" == i{
        print(true)
    }
    print("")
    break
}

// Remove duplicate chars from the input string.

func removeDuplicate(_ string: String) -> String{
    var s: String = ""
   
    for i in string{
        var isDuplicate = false
        for j in s{
            if j == i{
                isDuplicate = true
                break
            }
        }
        if !isDuplicate{
            s.append(i)
        }
    }
    return s
}
var string = "Hello"
//print(removeDuplicate(string))

// Remove duplicate chars from the input string.

func addDuplicate(_ strin: String) -> String{
    var s: String = ""
    var dup = ""
    for i in strin{
        var flag = false
        for j in s{
            if j == i{
                flag = true
                dup.append(i)
            }
        }
        if !flag{
            s.append(i)
        }
    }
    return dup
}
var strin = "Helllo"
print(addDuplicate(strin))
