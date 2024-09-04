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
//print(subarrayEqualsZero(array6))


//Find all the pairs of array elements having sum equal to given number.

func allPairs(_ arrayOfNumbers:[Int], _ givenNumber: Int) -> [(Int,Int)]{
    var pairs: [(Int,Int)] = []
    for i in 0..<arrayOfNumbers.count{
        for k in i+1..<arrayOfNumbers.count{
            if arrayOfNumbers[i] + arrayOfNumbers [k] == givenNumber{
                pairs.append((arrayOfNumbers[i],arrayOfNumbers[k]))
            }
        }
    }
    return pairs
}
let arrayOfNumbers = [2,4,3,6,4,7,8,2]
//print(allPairs(arrayOfNumbers,6))

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var position:[Int] = []
   
    var i = 0
        if nums == []{
            return [-1,-1]
        }
    for i in 0..<nums.count{
            
            if target == nums[i]{
                position.append(i)
                
            }
        }
    if position.isEmpty{
        return [-1,-1]
    }
    return [position[0],position[position.count-1]]
    }
var nums = [5,7,7,8,10,8]
//print(searchRange(nums, 8))

func maxSubArray(_ nums: [Int]) -> Int {
        var max_sum = nums[0]
        var currentSum = nums[0]
        for i in 1..<nums.count{
            if nums[i] < currentSum+nums[i]{
                currentSum = currentSum+nums[i]
            }else{
                currentSum = nums[i]
            }
            if max_sum < currentSum{
                max_sum = currentSum
            }
        }
        return max_sum
    }

/*
 Insert Interval
 Medium
 Topics
 Companies
 Hint
 You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

 Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return intervals after the insertion.

 Note that you don't need to modify intervals in-place. You can make a new array and return it.

  

 Example 1:

 Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
 Output: [[1,5],[6,9]]
 Example 2:

 Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
 Output: [[1,2],[3,10],[12,16]]
 Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
 */
func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    var new:[[Int]] = []
    //var i = 0
    var newInterval = newInterval
    var n = intervals.count
   
    
    for i in 0..<n{
        if intervals[i][1] < newInterval[0]{
            new.append(intervals[i])
        }
    }
    for i in 0..<n {
            if intervals[i][0] <= newInterval[1] && intervals[i][1] >= newInterval[0] {
                newInterval[0] = min(newInterval[0], intervals[i][0])
                newInterval[1] = max(newInterval[1], intervals[i][1])
            } else if intervals[i][0] > newInterval[1] {
                new.append(newInterval)
               newInterval = intervals[i] // reset newInterval to current non-overlapping interval
            }
        }
    new.append(newInterval)
    
    return new
    }
var intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]]
var newInterval = [4,8]
print(insert(intervals, newInterval))

func insert1(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    var newInterval = newInterval
    var n = intervals.count
    var i = 0

    // Add all intervals that end before the new interval starts (no overlap)
    while i < n && intervals[i][1] < newInterval[0] {
        result.append(intervals[i])
        i += 1
    }

    // Merge all overlapping intervals with newInterval
    while i < n && intervals[i][0] <= newInterval[1] {
        newInterval[0] = min(newInterval[0], intervals[i][0])
        newInterval[1] = max(newInterval[1], intervals[i][1])
        i += 1
    }
    result.append(newInterval)

    // Add all intervals that start after the new interval ends (no overlap)
    while i < n {
        result.append(intervals[i])
        i += 1
    }

    return result
}

var intervals = [[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]]
var newInterval = [4, 8]
print(insert1(intervals, newInterval))
