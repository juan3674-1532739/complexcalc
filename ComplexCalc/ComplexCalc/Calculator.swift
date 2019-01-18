//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add (lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract (lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply (lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide (lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func add (_ args: [Int]) -> Int {
        var sum = 0
        for index in 0..<args.count {
            sum += args[index]
        }
        return sum
    }
    
    func multiply (_ args: [Int]) -> Int {
        var mult = 1
        for index in 0..<args.count {
            mult *= args[index]
        }
        return mult
    }
    
    func count (_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg (_ args: [Int]) -> Int {
        var sum = 0
        for index in 0..<args.count {
            sum += args[index]
        }
        return sum / (args.count)
    }
    
    func add (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func add (lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": (lhs["x"]! + rhs["x"]!), "y": (lhs["y"]! + rhs["y"]!) ]
    }
    
    func subtract (lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": (lhs["x"]! - rhs["x"]!), "y": (lhs["y"]! - rhs["y"]!) ]
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum: Int = beg
        for index in 0..<args.count {
            sum = op(sum, args[index])
        }
        return sum
    }
}
