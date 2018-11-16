//
//  GameButton.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

//action
class GameButton: UIButton {
  @IBInspectable var row: Int = 0
  @IBInspectable var col: Int = 0
  

    
}


















//@IBOutlet var allCardButtons: [UIButton]!
//@IBOutlet weak var winningStatusLabel: UILabel!
//@IBOutlet weak var newGameButton: UIButton!
//
//// getting data from the ThreeCardMonte model
//var cards = ThreeCardMonte.getCards(numberOfCards: 3)
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    cards = cards.shuffled()
//    title = "Three Card Monte"
//
//}
//
//@IBAction func flippedCard(_ cardButton: UIButton) {
//    let card = cards[cardButton.tag]//cards[0], cards[1], card[2]
//    allCardButtons[cardButton.tag].setImage(card.image, for: .normal)
//    if !card.isWinningCard {
//        for (index, card) in cards.enumerated() {
//            if card.image == UIImage(named: ThreeCardMonteImageName.kingCard) {
//                allCardButtons[index].setImage(card.image, for: .normal)
//                break
//            }
//        }
//    }
//    winningStatusLabel.text = card.isWinningCard ? "You won!" : "You lost!"
//    allCardButtons.forEach { $0.isEnabled = false } // similar to for in loop
//}
