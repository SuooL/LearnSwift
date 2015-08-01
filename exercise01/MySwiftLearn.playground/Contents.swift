//: Playground - noun: a place where people can play

// 值永远不会被隐式转换为其他类型。


import UIKit

// use let to make a constant and var to make a variable

var str = "Hello, playground"
let i = 1 + 1

let m = 12.0 % 5

let b = 10
var a = b

a = 3

let (q , p) = (1, 2)

print(q)

// swift
1 + 2 // 等于 3 
5 - 3 // 等于 2 
2 * 3 // 等于 6
10.0 / 2.5 // 等于 4.0”


"Hello" + "Swift"

let dog: Character = "🐶"
let cow: Character = "牛"

"🐶" + "🐂"

let three = 3
let minusThree = -three

let defaultColorName = "red"
var userDefinedColorName:String?  //默认值为nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
//userDefinedColorName的值为空 ，所以colorNameToUse的值为`red`”

0/1

// 关于Optional类型

var strOpt: String? = "Hello World!"
strOpt     //{Some "Hello World!"}
strOpt!    //Hello World!
print(strOpt)
print(strOpt!)

var strTest: String? = "Hello World!"
if strTest != nil {
    "not nil"
} else {
    "nil"
}


// 字典和列表
var stuList = ["Hu", "SuooL", "C_s", "Dog"]

stuList[1] = "Cow"

stuList

var stuDic = [
    "Name" : "Hu",
    "Sex" : "Male",
    "Age" : "22"
]

stuDic["Name"] = "SuooL"

stuDic

let emptyArray = [String]()
let emptyDic = [String : Double]()

// for 循环

for (item, content) in stuDic {
    println("\(item) : \(stuDic[item]!)")
}


for num in 0...10 {
    println("\(num)")
}

// 函数
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Bob", "Tuesday")

// 返回多个值
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
statistics.2   // 也可以使用statistics.max
statistics.1

// 变长参数
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

// 嵌套函数
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


// 返回函数
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// 函数传参
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 12, 9]
hasAnyMatches(numbers, lessThanTen)


numbers.map({
(number: Int) -> Int in
    var result = 0
    if number%2 != 0 {
        result =  number
    }
    return result
})











