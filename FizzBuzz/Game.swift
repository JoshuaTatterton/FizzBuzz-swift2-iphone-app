//
//  Game.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 11/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import Foundation

class Game: NSObject {

  var score: Int
  let brain: Brain
  
  override init() {
    score = 0
    brain = Brain()
    super.init()
  }
  
  func play(move: Move) -> (right: Bool, score: Int) {
    let results = brain.check(score + 1)
    
    if results == move {
      score += 1
      return (true, score)
    } else {
      return (false, score)
    }
  }
  
  func reset() -> Int {
    score = 0
    return score
  }
}