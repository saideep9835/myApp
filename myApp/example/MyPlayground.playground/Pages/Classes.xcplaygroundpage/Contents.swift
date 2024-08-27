//: [Previous](@previous)

/* 1) Type :-
 classes:- reference type
 struct :- value types
 
 2) memory management
 class - stored in a heap memory. Multiple references to the same class instanse point to same memory.
 struct - stored in a stack. each var or const gets a unique copy of data. modifyinf one copy doesn't affect all
 
 3) Inheritance
 
 class - support
 struct - doesn't support
 
 4) Initializers
 class - it needs
 struct - automatically provides
 
 */
//write a program to show the difference between classes and struct and use the mmutating func as well
import Foundation

class Calculation{
    var num1: Int
    var num2: Int
    
    init(num1:Int,num2:Int){
        self.num1 = num1
        self.num2 = num2
    }
    func addTwoNumbers(){
        print(num1+num2)
    }
    deinit{
        print("\(num1) and \(num2) are deallocated")
    }
}
if true{
    let addition1 = Calculation(num1:20, num2:30)
    let addition2 = addition1
    addition2.num1 = 40
    //print(addition1.num1)
    //print(addition2.num1)
}

//-------------------------------------------------------Structures---------------------------
struct Cal{
    var n1: Int
    var n2: Int
    
    func subTwoNumbers(){
        print("Difference of number1 and number2: \(n1-n2)")
    }
    mutating func additionToNumbers(n3: Int, n4: Int){
        n1 += n3
        n2 += n4
    }
    
}

var diff1 = Cal(n1:20, n2:10)
    //diff1.subTwoNumbers()
diff1.additionToNumbers(n3: 30, n4: 10)
    //diff1.subTwoNumbers()
var diff2 = diff1
//print("Before changing the value of diff1's n1: \(diff1.n1)")
diff2.n1 = 40
//print("After changing the value of n1: \(diff1.n1)")
//print("Changing diff2 instance of n1: \(diff2.n1)")


//--------------------------------------------Inheritance----------------

class Car{
    var name: String
    var model: String
    
    init(name: String, model: String){
        self.name = name
        self.model = model
    }
    func detailsOfCar() -> String{
        return "Name of the car is \(name) and model is \(model)"
    }
    deinit{
        print("\(name) and \(model) is deinitialized")
    }
}
class Engine: Car{
    var engineName: String
    init(engineName: String, name: String, model:String){
        self.engineName = engineName
        super.init(name:name, model:model)
    
    }
    func totalDetails() -> String{
        return "\(name), \(model), \(engineName) of a Car"
    }
    deinit{
        print("Details are deinitialized")
    }
}
if true{
    let details1 = Engine(engineName:"Turbo",name: "Audi", model: "A5")
    print(details1.totalDetails())
}
