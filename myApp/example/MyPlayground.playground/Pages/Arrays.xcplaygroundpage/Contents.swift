//: [Previous](@previous)

import Foundation

//Find the second largest number from the array.


//func secondLargest(_ arr:[Int]) -> Int{
//    var second = 0
//    var first = 0
//    for i in arr{
//        if i > first{
//            let temp = i
//            second = first
//            first = temp
//        }
//    }
//    return second
//}
//var arr = [23,56,334,335,757,4845,4757,8484,854,5757,8584,8485,4858,48845,4885,384,8384,8458,848,485,77,45,98,76]
//print(secondLargest(arr))

//Find the second smallest number from the array.

//func secondSmallest(_ arr:[Int]) -> Int{
//    var second = Int.max
//    var first = Int.max
//    for i in 0..<arr.count {
//            if arr[i] < first {
//                // Update second before first
//                second = first
//                first = arr[i]
//            } else if arr[i] > first && arr[i] < second {
//                // Update second if the element is greater than first but less than second
//                second = arr[i]
//            }
//        }
//    return second
//}
////var arr = [23,56,334,335,757,4845,4757,8484,854,5757,22,8584,8485,4858,48845,4885,384,8384,8458,848,485,77,45,98,76]
////print(secondSmallest(arr))
//
//// merge two arrrays
//
//func toMerge(_ arr1:[Int], _ arr2:[Int]) -> [Int]{
//    var arr3:[Int] = []
//    var count = arr1.count + arr2.count
//    var j = 0
//    var k = 0
//    if arr1.count == arr2.count {
//        for i in 0...count-1{
//            if i%2 == 0{
//                arr3.append(arr1[j])
//                j += 1
//            }else{
//                arr3.append(arr2[k])
//                k += 1
//            }
//        }
//    }else if arr1.count < arr2.count {
//        
//        for i in 0..<arr2.count{
//            if i%2 == 0{
//                arr3.append(arr1[j])
//                j += 1
//            }else if i%2 != 0{
//                arr3.append(arr2[k])
//                k += 1
//            }
//        }
//        
//    }else{
//        
//        for i in 0..<arr1.count{
//            if i%2 == 0{
//                arr3.append(arr1[j])
//                j += 1
//            }else if i%2 != 0{
//                arr3.append(arr2[k])
//                k += 1
//            }
//        }
//        
//    }
//    if arr2.count != k{
//        for l in k..<arr2.count{
//            arr3.append(arr2[l])
//        }
//        
//    }
//    if arr1.count != j{
//        for n in j..<arr1.count{
//            arr3.append(arr1[n])
//        }
//    }
//    return arr3
//}
//var arr1 = [2,4,3,5]
//var arr2 = [55,3,6,4,8,9,9]
//print(toMerge(arr1,arr2))

// Rigth rotation

//func rightRotation(_ arr1:[Int], _ num: Int) -> [Int] {
//    guard arr1.count > 0 else{ return arr1}
//    var final: [Int] = []
//    var dup: [Int] = []
//    let rotation = num % arr1.count
//    let rotationIndex = arr1.count - rotation
//    for i in rotationIndex..<arr1.count{
//        final.append(arr1[i])
//    }
//    for i in 0..<rotationIndex{
//        dup.append(arr1[i])
//    }
//    return final + dup
//}
//var arr1 = [1, 2, 3, 4, 5]
//var num = 2
//let right = rightRotation(arr1,num)
//print(right)

func leftRotation(_ arr1:[Int], _ num: Int) -> [Int] {
    guard arr1.count > 0 else{ return arr1}
    var final: [Int] = []
    var dup: [Int] = []
    let rotation = num % arr1.count
    for i in rotation..<arr1.count{
        final.append(arr1[i])
    }
    for i in 0..<rotation{
        dup.append(arr1[i])
    }
    return final + dup
}
var arr1 = [1, 2, 3, 4, 5]
var num = 2
let left = leftRotation(arr1,num)
print(left)


func subarrayEqualsZero(_ array: [Int]) -> (Int,Int){
    for i in 0..<array.count{
        for j in i+1..<array.count{
            if array[i] != 0 && array[j] != 0 && array[i]+array[j] == 0{
                return (array[i],array[j])
            }
        }
    }
    return (0,0)
}

let array6 = [6, 0, -2, 2, 0, 3, -3, 5] // The first pair with sum zero is (-2, 2)
print(subarrayEqualsZero(array6))




