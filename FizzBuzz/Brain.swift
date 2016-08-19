//
//  Brain.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 11/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import Foundation

class Brain: NSObject {
  
  func isDivisibleBy(divisor: Int, number: Int) -> Bool {
    return number % divisor == 0
  }
  
  func isDivisibleByThree(number: Int) -> Bool {
    return isDivisibleBy(3, number: number)
  }
  
  func isDivisibleByFive(number: Int) -> Bool {
    return isDivisibleBy(5, number: number)
  }
  
  func isDivisibleByFifteen(number: Int) -> Bool {
    return isDivisibleByFive(number) && isDivisibleByThree(number) 
  }
  
  func check(number: Int) -> Move {
    if isDivisibleByFifteen(number) {
      return Move.FizzBuzz
    } else if isDivisibleByThree(number) {
      return Move.Fizz
    } else if isDivisibleByFive(number) {
      return Move.Buzz
    } else {
      return Move.Number
    }
  }
}