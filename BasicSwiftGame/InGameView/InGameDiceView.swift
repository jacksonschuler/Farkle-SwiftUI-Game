//
//  InGameDiceView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

/*
 In Game View Displays all 6 Die during the game, a buttons to roll the
 Dice, and a button to end the turn
 */
struct InGameDiceView: View {
    @EnvironmentObject var currGame: Game

    var body: some View {
        VStack {
            VStack{
                HStack{
                    InGameSingleDiceView(index: 0)  // Die 0
                    InGameSingleDiceView(index: 1)  // Die 1
                }
                HStack{
                    InGameSingleDiceView(index: 2) // Die 2
                    InGameSingleDiceView(index: 3)  // Die 3
                }
                HStack{
                    InGameSingleDiceView(index: 4)  // Die 4
                    InGameSingleDiceView(index: 5)  // Die 5
                }
            }
            Button(action: {
                //Flag to update image -- temp work around
                self.currGame.flag = Int.random(in: 1...6)
                //Update die values on roll
                self.currGame.DiceList[0].result = Int.random(in: 1...6)
                self.currGame.DiceList[1].result = Int.random(in: 1...6)
                self.currGame.DiceList[2].result = Int.random(in: 1...6)
                self.currGame.DiceList[3].result = Int.random(in: 1...6)
                self.currGame.DiceList[4].result = Int.random(in: 1...6)
                self.currGame.DiceList[5].result = Int.random(in: 1...6)
            }) {
                Text("Roll Dice")
            }
        }
    }
}

struct InGameDiceView_Previews: PreviewProvider {
    static var previews: some View {
        InGameDiceView().environmentObject(Game())
    }
}