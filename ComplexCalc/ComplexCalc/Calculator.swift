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
        for index in 0..<args.count - 1 {
            sum += args[index]
        }
        return sum
    }
    
    func multiply (_ args: [Int]) -> Int {
        var mult = 0
        for index in 0..<args.count - 1 {
            mult *= args[index]
        }
        return mult
    }
    
    func count (_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg (_ args: [Int]) -> Int {
        var sum = 0
        for index in 0..<args.count - 1 {
            sum += args[index]
        }
        return sum / (args.count)
    }

}
