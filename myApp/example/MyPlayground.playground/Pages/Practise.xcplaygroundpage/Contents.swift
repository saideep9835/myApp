import Foundation
//
//var greeting = "Hello, playground"
////print(greeting)
////var a = 0
////var b = [1,2,3,4,5]
////for count in b{
////    a = a+count
////}
////print(a)
//
//func myFirst(c:[Int]) {
//    var c = c
//    for i in 0..<c.count{
//        for j in 0..<c.count-i-1{
//            if c[j] > c[j+1]{
//                let temp = c[j]
//                c[j] = c[j+1]
//                c[j+1] = temp
//            }
//        }
//        
//    }
//    print(c)
//}
//var c:[Int] = [5,3,7,2,6,4]
////myFirst(c: c)
//
//
////let score = Int.random(in: 0...3)
////print(score)
//
//var a:[Int] = []
//a.append(2)
//a.append(4)
//a.append(5)
//a.append(1)
//a.append(7)
//a.append(9)
//a.append(7)
//a.append(8)
//print(a)
//
//var result = a.contains(2)
//print(result)
//
////---------------dropfirst----
//
//var dropF = a.dropFirst()
//print(dropF)
//
////------------dropLast
//
//var dropL = a.dropLast()
//print(dropL)
//
//// If you want to drop multiple elements then include a number in dropFirst(2) 2-- indicates how many items to be dropped
//
////------insert--- it takes two parameters first it takes an item and then index number at which place it should be inserted
//a.insert(11, at:3)
//print(a)
//
////Using insert() With startIndex and endIndex
//
//a.insert(20, at:a.endIndex)
//print(a)
//
//// joined in swift arrays
//
//var message = ["Swift", "is","fun"]
//
//// join all elements of array with space between them
//var newString = message.joined(separator:" ")
//
//print(newString)
//
////--------min()
//// create an array of integers
//var integers = [2, 4, 6, 8, 10]
//
//// create an array of floating-point number
//var decimals = [1.2, 3.4, 7.5, 9.6]
//
//// find the smallest element in integers array
//print(integers.min())
//
//// find the smallest element in decimals array
//print(decimals.min()!)
//
////------------------remove()
//
//// languages array
//var languages = ["Swift", "C", "Objective-C"]
//
//print("Before Removing:", languages)
//
//// "Objective-C" (at index 2) is removed
//var removed = languages.remove(at: 2)
//
//print("After Removing:", languages)
//
//print("Removed Element:", removed)
//
////--------------------Dictionaries---------
//
////Creating a dictionary
//var studentGrades = ["Alice": 90, "Bob": 85, "Charlie": 92]
//
//// Accessing values
//let aliceGrade = studentGrades["Alice"]
//
//// Modifying values
//studentGrades["David"] = 88
//studentGrades["Sai"] = 99
//// Iterating through a dictionary
//for (name, grade) in studentGrades {
//    print("\(name): \(grade)")
//}
//
////----------------------Sets----------------
//
//var a: Set<Int> = [1,2,3,3,4,5]
//print(a)
//// Creating a set of integers
//var uniqueNumbers: Set<Int> = []
//
//// Adding and removing elements
//uniqueNumbers.insert(6)
//uniqueNumbers.remove(3)
//print(uniqueNumbers)
//// Checking membership
//let containsFive = uniqueNumbers.contains(5)
//
////------------Stack LIFO-------------------------
//
//var stack: [Int] = []
//
//stack.append(2)
//stack.append(3)
//stack.append(4)
//
//print(stack)
//
//let poping = stack.popLast()
//print(poping ?? "There is no value")
//print(stack)
//
////---------------Queue FIFO --------------------
//
//var queue:[Int] = []
//
//queue.append(1)
//queue.append(2)
//
//let dequeing = queue.removeFirst()
//print(dequeing)

//-----------------------------------------------------------------------------------
//
//class carName{
//    var model: String
//    var name: String
//    
//    init(model: String, name: String){
//        self.model = model
//        self.name = name
//    }
//    func carModel(_ name: String) -> String{
//        return name+"Hello"
//    }
//    
//}
//var nameOfCar = carName(model: "Toyota", name: "Benz")
//print(nameOfCar.carModel())

//struct carDetails{
//    var model: String
//    var name: String
//    
//    func carModel() -> String{
//           return name+"Hello"
//    }
//    
//}
//var nameOfCar = carDetails(model: "Toyota", name: "Benz")
//print(nameOfCar.carModel())

//func myFirst(_ c: [Int]) -> [Int] {
//    var c = c
//    for i in 0..<c.count {
//        for j in 0..<c.count - i - 1 {
//            if c[j] > c[j + 1] {
//                let temp = c[j]
//                c[j] = c[j + 1]
//                c[j + 1] = temp
//            }
//        }
//    }
//    return c // Return the sorted array
//}
//
//var c: [Int] = [5, 3, 7, 2, 6, 4]
//let sortedArray = myFirst(c) // Call the function and store the returned sorted array
//print(sortedArray) // Print the sorted array outside the function
//-------------------------------------------------------------------------------------------------------
//
//class Node{
//    var value: Any
//    var next: Node?
//    
//    init(_ value: Any){
//        self.value = value
//    }
//    
//    
//}
//let node1 = Node(1)
//let node2 = Node("A")
//let node3 = Node(3)
//
//node1.next = node2
//node2.next = node3
//node3.next = nil
//// Function to traverse and print the linked list
//func printLinkedList(head: Node?) {
//    var currentNode = head
//    while currentNode != nil {
//        if let value = currentNode?.value {
//            print(value)
//        }
//        currentNode = currentNode?.next
//    }
//}
//
//// Run the linked list
//printLinkedList(head: node1)
//
//var a = 3
//var b = -a
//var c = -b
//print(c)
//
//var string1 = "Hello"
//var string2 = " world"
//print(string1+string2)
//let s: Character = "!"
//string1.append(s)
//print(string1)
//
//print("multiplication of 6 and 7 is \(6*7)")
//
//let g = "hello world"
//print(g[g.startIndex])
//
//var arr:[Int] = [1,4,3,6,7]
//var count = 0
//for i in 0..<arr.count{
//    count += arr[i]
//}
//print(count)

//func longestCommonPrefix(_ strs: [String]) -> String {
//    var a = ""
//    let start = strs[0]
//    
//    
//    for i in start.indices{
//        let prefix = start[i]
//        for j in strs{
//            if j[i] != prefix{
//                return a
//            }
//            
//        }
//        a += String(prefix)
//    }
//    return a
//}
//var strs = ["flower", "flow", "flying"]
//print(longestCommonPrefix(strs))


//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    var count = 0
//    var a:[Int] = []
//    for i in 0..<nums.count{
//        if !a.contains(nums[i]){
//            a.append(nums[i])
//        }
//    }
//    return a.count
//}
//var nums = [1,1,2,2,2,3,3,3,3,4,4,5,5,5]
//print(removeDuplicates(&nums))

//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    var countw:[Int] = []
//    var c = 0
//    for i in nums{
//        var duplicate = false
//        for j in countw{
//            if i == j{
//                duplicate=true
//                break
//                
//            }
//        
//        }
//        if !duplicate{
//            countw.append(i)
//            c=c+1
//        }
//        
//    }
//    return c
//}
//var nums = [1,1,2,2,2,3,3,3,3,4,4,5,5,5,6]
//print(removeDuplicates(&nums))

//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//        var a:[Int] = []
//        for i in nums{
//            var duplicat = false
//            if i == val{
//                duplicat = true
//            }
//        if !duplicat{
//            a.append(i)
//            }
//        }
//    return countNums(a)
//}
//    
//var nums = [1,2,2,3,4,5,2,5,6,4,5,6,5,2]
//var val = 2
//print(removeElement(&nums, val))
//
//func countNums(_ nums: [Int]) -> Int{
//    var c = 0
//    for i in nums{
//        c=c+1
//    }
//    return c
//}


func arrOfInt(_ arr:[String]) -> [Int]{
    var even:[Int] = []
    for i in arr{
        if let a = Int(i){
            if a%2 == 0{
                even.append(a)
            }
        }
    }
    return even
}
var arr = ["1", "2", "3", "4", "5"]
print(arrOfInt(arr))

//Json data
//"id": "0001",
//"type": "donut",
//"name": "Cake",
//"ppu": 0.55,
//"batters": {
//    "batter": [
//        {
//            "id": "1001",
//            "type": "Regular"
//        },
//        {
//            "id": "1002",
//            "type": "Chocolate"
//        },
//        {
//            "id": "1003",
//            "type": "Blueberry"
//        },
//        {
//            "id": "1004",
//            "type": "Devil's Food"
//        }
//    ]
//},
//"topping": [
//    {
//        "id": "5001",
//        "type": "None"
//    },
//    {
//        "id": "5002",
//        "type": "Glazed"
//    },
//    {
//        "id": "5005",
//        "type": "Sugar"
//    },
//    {
//        "id": "5007",
//        "type": "Powdered Sugar"
//    },
//    {
//        "id": "5006",
//        "type": "Chocolate with Sprinkles"
//    },
//    {
//        "id": "5003",
//        "type": "Chocolate"
//    },
//    {
//        "id": "5004",
//        "type": "Maple"
//    }
//]
//}

//Created a structure using the above Json
//struct Batter: Codable{
//    let id: String?
//    let type: String?
//}
//struct Batters: Codable{
//    let batter: [Batter]?
//}
//struct Topping: Codable{
//    let id: String?
//    let type: String?
//}
//struct Grocery: Codable{
//    let id: String?
//    let type: String?
//    let name: String?
//    let ppu: Int?
//    let batters: Batters?
//    let topping: [Topping]?
//}

var name: String?

if let unwrappedName = name {
    print("User name is \(unwrappedName)")
} else {
    print("User name is nil")
}

var optionalCounter: Int? = 3

// Loop until optionalCounter becomes nil
while optionalCounter != nil {
    print("Counter: \(optionalCounter!)")  // Output: Counter: 3, Counter: 2, Counter: 1
    optionalCounter! -= 1
    
    // Set to nil if it reaches 0
    if optionalCounter == 0 {
        optionalCounter = nil
    }
}

print("Loop exited as optionalCounter is now nil.")

let optionalArray: [Int]? = [1, 2, 3, 4, 5]

// Use optional binding to unwrap the optional before iterating
if let array = optionalArray {
    for number in array {
        print(number)  // Output: 1 2 3 4 5
    }
} else {
    print("The array is nil.")
}

var optionalNumber: Int? = 5

// Continue the loop while optionalNumber is not nil
while let number = optionalNumber {
    print(number)  // Output: 5
    // Set optionalNumber to nil to end the loop
    optionalNumber = nil
}

print("Loop ended because optionalNumber is now nil.")
