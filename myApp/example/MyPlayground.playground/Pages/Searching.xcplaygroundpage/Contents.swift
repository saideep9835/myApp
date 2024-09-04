//: [Previous](@previous)

import Foundation

func linearSearch(_ array:[Int], _ num:Int) -> String{
    for i in 0..<array.count{
        if array[i] == num{
            return "Element is presnt at index \(i)"
        }
    }
    return "Element is not present"
}
print(linearSearch([1,2,3,4,5], 5))
