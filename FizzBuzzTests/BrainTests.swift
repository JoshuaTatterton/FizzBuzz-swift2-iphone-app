//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 11/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  let brain = Brain()
  
  func testIsDivisibleByThree() {
    let result = brain.isDivisibleByThree(3)
    XCTAssertTrue(result)
  }

  func testIsNotDivisibleByThree() {
    let result = brain.isDivisibleByThree(1)
    XCTAssertFalse(result)
  }
  
  func testIsDivisibleByFive() {
    let result = brain.isDivisibleByFive(5)
    XCTAssertTrue(result)
  }
  
  func testIsNotDivisibleByFive() {
    let result = brain.isDivisibleByFive(3)
    XCTAssertFalse(result)
  }

  func testIsDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(15)
    XCTAssertTrue(result)
  }
  
  func testIsNotDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(1)
    XCTAssertFalse(result)
  }
  
  func testSayFizz() {
    let result = brain.check(3)
    XCTAssertEqual(result, Move.Fizz)
  }
  
  func testSayBuzz() {
    let result = brain.check(5)
    XCTAssertEqual(result, Move.Buzz)
  }
  
  func testSayFizzBuzz() {
    let result = brain.check(15)
    XCTAssertEqual(result, Move.FizzBuzz)
  }
  
  func testSayNumber() {
    let result = brain.check(1)
    XCTAssertEqual(result, Move.Number)
  }
  
}
