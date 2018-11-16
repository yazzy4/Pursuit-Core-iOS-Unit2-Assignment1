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
    @IBOutlet weak var winningLabel: UILabel!
    @IBOutlet weak var newGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

let brain = TicTacToeBrain()
    
    @IBAction func pressedButton(_ sender: GameButton) {
        brain.userMove()
        if brain.playerOne {
    brain.gameArray[sender.row] [sender.col] = o
sender.setBackgroundImage(UIImage(named:"signO"), for: .normal)
            brain.winningResult()
            sender.isEnabled = false
            if brain.playerOneWins {
//                winningLabel.text = "Player 1 Wins!"
            for button in collectionOfButtons {
                    button.isUserInteractionEnabled = false
                }
            }
            
        } else if brain.playerTwo {
            brain.gameArray[sender.row][sender.col] = x
    sender.setBackgroundImage(UIImage(named:"signX"), for: .normal)
            sender.isEnabled = false
//            winningLabel.text = "Player 2 Wins!"
        }
       
    }
    @IBAction func reset( newGameButton: UIButton) {
        winningLabel.text = "New Game"
        for card in collectionOfButtons {
            card.isEnabled = true
            
        }
        
    }
    
}
    
    



