//
//  main.swift
//  ArrayCalc
//
//  Created by Sarah Feldmann on 10/12/17.
//  Copyright © 2017 Sarah Feldmann. All rights reserved.
//

import Foundation

func intOps(operation:String, num1:Int, num2:Int) -> Int {
    switch operation {
    case "+" :
        return num1 + num2
    case "-" :
        return num1 - num2
    case "*" :
        return num1 * num2
    case "/" :
        return num1 / num2
    default:
        return -1
    }
}

func arrayOps(operation:String, num:[Int]) -> Int {
    switch operation {
    case "+" :
        return add(a:num)
    case "*" :
        return mult(a:num)
    case "count" :
        return count(a:num)
    case "avg" :
        return avg(a:num)
    default:
        return -1
    }
}


func add(a:[Int]) -> Int {
    var total = 0
    for i in 0...a.count-1  {
        total += a[i]
    }
    return total
}

func mult(a:[Int]) -> Int {
    var total = 0
    for i in 0...a.count-1  {
        total *= a[i]
    }
    return total
}

func count(a:[Int]) -> Int {
    return a.count
}

func avg(a:[Int]) -> Int {
    return add(a: a) / a.count
}

func addTup(a:(a:Int, b:Int), b:(a:Int, b:Int)) -> (x:Int, y:Int){
    return(x:(a.a + b.a), y:(a.b ) + b.b)
}

func subTup(a:(a:Int, b:Int), b:(a:Int, b:Int)) -> (x:Int, y:Int){
    return(x:(a.a - b.a), y:(a.b ) - b.b)
}

func addTup(a:(a:Double, b:Double), b:(a:Double, b:Double)) -> (x:Double, y:Double){
    return(x:(a.a + b.a), y:(a.b ) + b.b)
}

func subTup(a:(a:Double, b:Double), b:(a:Double, b:Double)) -> (x:Double, y:Double){
    return(x:(a.a - b.a), y:(a.b ) - b.b)
}

func addDict(a:[String:Int], b:[String:Int]) -> [String:Int]{
    if(a["x"] != nil && a["y"] != nil && b["x"] != nil && b["y"] != nil){
        return ["x" : (a["x"]! + b["x"]!), "y" : (a["y"]! + b["y"]!)]
    } else {
        return [:]
    }
}

func subDict(a:[String:Int], b:[String:Int]) -> [String:Int]{
    if(a["x"] != nil && a["y"] != nil && b["x"] != nil && b["y"] != nil){
        return ["x" : (a["x"]! - b["x"]!), "y" : (a["y"]! - b["y"]!)]
    } else {
        return [:]
    }
}

func addDict(a:[String:Double], b:[String:Double]) -> [String:Double]{
    if(a["x"] != nil && a["y"] != nil && b["x"] != nil && b["y"] != nil){
        return ["x" : (a["x"]! + b["x"]!), "y" : (a["y"]! + b["y"]!)]
    } else {
        return [:]
    }
}

func subDict(a:[String:Double], b:[String:Double]) -> [String:Double]{
    if(a["x"] != nil && a["y"] != nil && b["x"] != nil && b["y"] != nil){
        return ["x" : (a["x"]! - b["x"]!), "y" : (a["y"]! - b["y"]!)]
    } else {
        return [:]
    }
}

