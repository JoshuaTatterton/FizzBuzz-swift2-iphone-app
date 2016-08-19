//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 11/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  let game = Game()

  func testGameStartAtZero() {
    XCTAssertTrue(game.score == 0)
  }
  
  func testOnPlayScoreIncremented() {
    game.play(Move.Number)
    XCTAssertTrue(game.score == 1)
  }
  
  func testIfMoveIsRight() {
    game.score = 2
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertTrue(result)
  }
  
  func testIfMoveIsWrong() {
    game.score = 1
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertFalse(result)
  }
  
  func testIfBuzzMoveRight() {
    game.score = 4
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertTrue(result)
  }
  
  func testIfBuzzMoveWrong() {
    game.score = 1
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertFalse(result)
  }
  
  func testIfFizzBuzzMoveRight() {
    game.score = 14
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertTrue(result)
  }
  
  func testIfFizzBuzzMoveWrong() {
    game.score = 1
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertFalse(result)
  }
  
  func testIfNumberMoveRight() {
    game.score = 1
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertTrue(result)
  }
  
  func testIfNumberMoveWrong() {
    game.score = 2
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertFalse(result)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    game.play(Move.Fizz)
    XCTAssertEqual(game.score, 1)
  }
  
  func testPlayShouldReturnIfMoveRight() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturnNewScore() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.score)
  }
  
  func testAfterResetScoreIsZero() {
    game.score = 1
    game.reset()
    XCTAssertTrue(game.score == 0)
  }

}
