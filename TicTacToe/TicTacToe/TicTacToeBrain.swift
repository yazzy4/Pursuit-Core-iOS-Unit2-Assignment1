//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
var emptySpace = "_"
var x = "x"
var o = "o"

struct xAndO {
    var exes: String
    var ohs:  String
}

class TicTacToeBrain {
    var playerOne = false
    var playerTwo = false
    var gameArray = [
                    [ emptySpace, emptySpace, emptySpace ], [emptySpace, emptySpace, emptySpace], [emptySpace, emptySpace, emptySpace]
                    ]
    
    var playersTurnCounter = 0
    var playerOneWins = false
    var playerTwoWins = false
    func userMove() {
        playersTurnCounter += 1
        if playersTurnCounter % 2 == 1 {
            playerOne = true
            playerTwo = false
        } else {
            playerTwo = true
            playerOne = false
        }
    }
   
    func winningResult() {
        for row in gameArray {
            if row == [x,x,x] {
                playerTwoWins = true
                break
            }else if row == [o,o,o] {
                playerOneWins = true
                break
            }
            
        }
        for indexOfColumn in 0..<gameArray[0].count {
            var myColumn = [String]()
            for indexOfRow in 0..<gameArray.count {
                myColumn.append(gameArray[indexOfRow][indexOfColumn])
                if myColumn == [o,o,o] {
                    playerOneWins = true
                }else if myColumn == [x,x,x]{
                    playerTwoWins = true
                }
            }
        }
        for idexOfDiagonal in 0 
    }


}




//static let xCard = "signX"
//static let oCard = "signO"
//var images: UIImage
//var result: Bool
//
//init(images: UIImage, result: Bool){
//    self.images = images
//    self.result = result
//}



//public struct ThreeCardMonteImageName {//public anybody outside of three card monte could access this struck
//    //use structs for constants
//    static let threeCard = "threeCard" //static let means type property
//    static let kingCard = "kingCard"
//}
//
//// final indicates no other class can subclass ThreeCardMonte
//final class ThreeCardMonte: Card {
//    // properties
//    var image: UIImage
//    var isWinningCard: Bool
//
//    // initializer
//    init(image: UIImage, isWinningCard: Bool) {
//        self.image = image
//        self.isWinningCard = isWinningCard
//    }
//
//    // methods
//    static func getCards(numberOfCards: Int) -> [ThreeCardMonte] {
//        var cards = [ThreeCardMonte]()
//        for index in 1...numberOfCards {
//            var card: ThreeCardMonte!//implicit unwrap
//            if index == 1 {
//                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageName.kingCard)!, isWinningCard: true)
//            } else {
//                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageName.threeCard)!, isWinningCard: false)
//            }
//            cards.append(card)
//        }
//        return cards
//    }
//}
