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
            HStack {
                RollDiceButton()
                EndTurnButton()
            }
            //temp display of variables
            Text("Turn Score")
            Text("\(self.currGame.tempScore)")
            Text("Player Turn")
            Text("\(self.currGame.currTurn)")
            if(self.currGame.numPlayer > 0){
                Text("Player username")
                Text("\(self.currGame.PlayerList[self.currGame.currTurn].id)")
                Text("Player Score")
                Text("\(self.currGame.PlayerList[self.currGame.currTurn].score)")

            }

        }
    }
}

struct InGameDiceView_Previews: PreviewProvider {
    static var previews: some View {
        InGameDiceView().environmentObject(Game())
    }
}
