//: [Previous](@previous)

import Foundation

func removeDuplicates(_ arr1: [Int], _ arr2: [Int]) -> [Int]{
    var c = arr1+arr2
    var d:[Int] = []

    for i in c{
        var duplicate = false
        for j in d{
            if j == i{
                duplicate = true
                break
            }
        }
        if duplicate == false{
            d.append(i)
        }

    }
    return d
}
var arr1:[Int] = [1,2,2,3,4]
var arr2:[Int] = [5,6,6,7,8]
//print(removeDup(arr1, arr2))


func removeDuplicate(_ num1: [Int], _ num2: [Int]) -> [Int]{
    var c = num1+num2
    var d:[Int] = []
    for i in 0..<c.count{
        if i == 0 || c[i] != c[i-1]{
            d.append(c[i])
        }

    }
    return d
}
var num1:[Int] = [1,2,2,3,4]
var num2:[Int] = [5,6,6,7,8]
//print(removeDup(num1, num2))

func fST(_ a: [Int]) -> (Int, Int, Int) {

    var first = a[0]
    var second = a[1]
    var third = a[2]

    for i in 3..<a.count {
        if a[i] > first {
            third = second
            second = first
            first = a[i]
        } else if a[i] > second {
            third = second
            second = a[i]
        } else if a[i] > third {
            third = a[i]
        }
    }

    return (first, second, third)
}

var arr = [23, 56, 7, 77, 84, 92, 36, 12, 34, 43]
//print(fST(arr))






