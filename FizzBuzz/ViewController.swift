//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Josh Tatterton on 11/08/2016.
//  Copyright © 2016 JoshTatterton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var game : Game?
  
  var gameScore: Int? {
    didSet {
      guard let unwrappedScore = gameScore else {
        print("Game score is nil!")
        return
      }
      numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
    }
  }
  
  @IBOutlet weak var numberButton: UIButton!
  @IBOutlet weak var fizzButton: UIButton!
  @IBOutlet weak var buzzButton: UIButton!
  @IBOutlet weak var fizzbuzzButton: UIButton!
  @IBOutlet weak var resetButton: UIButton!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
    
    guard let checkedGame = game else {
      print("Game is nil!")
      return
    }
    
    gameScore = checkedGame.score
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  func play(move: Move) {
    guard let unwrappedGame = game else {
      print("Game is nil!")
      return
    }
    let response = unwrappedGame.play(move)
    gameScore = response.score
  }
  
  func reset() {
    guard let unwrappedGame = game else {
      print("Game is nil!")
      return
    }
    let response = unwrappedGame.reset()
    gameScore = response
  }
  
  @IBAction func ButtonTapped(sender: UIButton) {
    switch sender {
    case numberButton:
      play(Move.Number)
    case fizzButton:
      play(Move.Fizz)
    case buzzButton:
      play(Move.Buzz)
    case fizzbuzzButton:
      play(Move.FizzBuzz)
    case resetButton:
      reset()
    default:
      print("Invalid selection")
    }
  }
  
}

