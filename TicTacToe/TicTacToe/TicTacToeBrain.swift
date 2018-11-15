//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class TicTacToeBrain {
     static let xCard = "signX"
     static let oCard = "signO"
        var images: UIImage
        var result: Bool
        
    init(images: UIImage, result: Bool){
        self.images = images
        self.result = result
    }
    
    
   
    
   // playerTurn.switchPlayerTurn()

}





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
