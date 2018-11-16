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
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var resetButton: UILabel!
    
    let winningCombinations = [[0, 1, 2], [1, 1, 2], [2, 1, 2], [0, 1, 2], [1, 1, 1], [2, 2, 2], [0, 1, 2], [2, 1, 2]]


    
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
   

    
override func viewDidLoad() {
    super.viewDidLoad()

  }
    @IBAction func gameBoard(boxGuess: UIButton) {
        switch player {
        case .player1:
            boxGuess.setTitle("X", for: .normal)
        case .player2:
           boxGuess.setTitle("O", for: .normal)
        }
        player.switchPlayerTurn()
    }
    var player = PlayerTurn.player1
  

}


//@IBAction func playAgain(_ sender: Any) {
//    var activePlayer = 2
//    var gameOver = true
//
//    for i in 1..<10{
//        if let button = view.viewWithTag(i) as? UIButton {
//            button.setImage(nil, for: [])
//        }
//
//        winnerLabel.isHidden = true
//        resetButton.isHidden = true
//    }
//}

//@IBAction func buttonPressed(_ sender: UIButton) {
//    var images =
//        [UIImage.init(named: "signX"), UIImage.init(named:"signO")]
//    images = images.shuffled()
//
//    let activePosition = sender.tag - 1
//    var emptyBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0]
//
//    var gameOn = true
//    var gameCounter = 0
//    var newGame = true
//    gameCounter += 1
//
//    if emptyBoard[activePosition] == 0  && gameOn {
//
//        if player == .player1 {
//            sender.setImage(UIImage:"signX", for: .normal)
//
//        }
//    }
//}
