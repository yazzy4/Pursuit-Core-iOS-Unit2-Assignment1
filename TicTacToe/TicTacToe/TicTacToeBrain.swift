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
         var diagonalOne = [String]()
        for i in 0..<gameArray.count {
            diagonalOne.append(gameArray[i][i])
            if diagonalOne == [o,o,o] {
                playerOneWins = true
            } else if diagonalOne == [x,x,x] {
                playerTwoWins = true
            }
        }
        var diagonalTwo = [String]()
        for i in 0..<gameArray.count {
            diagonalTwo.append(gameArray[i][gameArray.count - 1 - i])
        }
        
    }


}




