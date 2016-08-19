//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 19/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    XCUIApplication().launch()
  }
    
  override func tearDown() {
    super.tearDown()
  }

  func testTapNumberButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    
    numberButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "1")
  }
  
  func testTapNumberButtonTwiceIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    
    numberButton.tap()
    
    numberButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "2")
  }
  
  func testTapFizzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    
    numberButton.tap()
    
    numberButton.tap()
    
    fizzButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "3")
  }
  
  func testTapBuzzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzbuzzButton = app.buttons["fizzbuzzButton"]
    
    playTo14()
    
    fizzbuzzButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "15")
  }
  
  func testTapStartOverToResetScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let resetButton = app.buttons["resetButton"]
    
    numberButton.tap()
    
    resetButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "0")
  }

  func playTo14() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    let buzzButton = app.buttons["buzzButton"]
    
    numberButton.tap()
    
    numberButton.tap()
    
    fizzButton.tap()
    
    numberButton.tap()
    
    buzzButton.tap()
    
    fizzButton.tap()
    
    numberButton.tap()
    
    numberButton.tap()
    
    fizzButton.tap()
    
    buzzButton.tap()
    
    numberButton.tap()
    
    fizzButton.tap()
    
    numberButton.tap()
    
    numberButton.tap()
  }
  
}
