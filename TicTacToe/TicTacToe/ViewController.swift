//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionOfButtons: Array<GameButton>!
    
    enum PlayerTurn {
        case player1
        case player2
        
    mutating func switchPlayerTurn() {
            switch self {
            case .player1:
                self = .player2
            case .player2:
                self = .player1
            }
        }
        
    }
    
    var playerTurn = PlayerTurn.player1
    
    
    
    var gameBoard = [
                      [".", ".", "."],
                      [".", ".", "."],
                      [".", ".", "."]
                    ]
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        collectionOfButtons.forEach{$0.isEnabled = true}
    
    struct XandOImages {
        static let xButton = "signX"
        static let oButton = "signO"
    }
    
    
  }

    @IBAction func gameBoard(boxGuess: UIButton) {
        
    }

}




