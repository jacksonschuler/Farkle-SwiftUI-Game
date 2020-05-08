//
//  EndTurnButton.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI


struct EndTurnButton: View {
    @EnvironmentObject var currGame: Game
    
    var body: some View {
        Button(action:{
           for die in self.currGame.DiceList {
                die.result = 0
                die.isActive = true
            }
            
            
            //make call to calc final score
            self.currGame.PlayerList[self.currGame.currTurn].incr_score(points: self.currGame.tempScore)
            
            // reset turn roll count
            self.currGame.turnRollCountFlag = true
            self.currGame.turnRollCount = 0
            //reset estimated score
            self.currGame.tempScore = 0
            //update player turn
            self.currGame.currTurn = ((self.currGame.currTurn + 1) % self.currGame.numPlayer)
            self.currGame.flag = 1
            
       }){
           Text("End Turn")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .padding(10)
                .border(Color.red, width: 5)
       }
    }
}

struct EndTurnButton_Previews: PreviewProvider {
    static var previews: some View {
        EndTurnButton().environmentObject(Game())
    }
}
