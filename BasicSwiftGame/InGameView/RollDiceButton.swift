//
//  RollDiceButton.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI



func incrementCount(count: Int) -> Int {
    return count + 1
}

struct RollDiceButton: View {
    @EnvironmentObject var currGame: Game
    
    var body: some View {
        HStack{
            Button(action: {
                
                //Update active die values on roll
                for die in self.currGame.DiceList {
                    if (die.isActive == true || self.currGame.turnRollCount == 0) {
                        die.result = Int.random(in: 1...6)
                        die.isActive = true
                    }
                }
                //update number of rolls this turn
                self.currGame.turnRollCount += 1
                
                if(self.currGame.turnRollCount > 4){
                    self.currGame.turnRollCountFlag = false
                    // set all die to inactive
                    for die in self.currGame.DiceList {
                        die.isActive = false
                    }
                }
                
                //activate end turn button
                if(self.currGame.turnRollCount > 0) {
                    self.currGame.disableTurnButton = false
                }
                           
                
                //calc potential score
                self.currGame.tempScore = self.currGame.calc_score()
                
                //Flag to update image -- temp work around
                self.currGame.flag = 1
                
            }) {
                Text("Roll Dice")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                    .cornerRadius(40)
                    .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255), lineWidth: 5)
                       )
            }
            .buttonStyle(PlainButtonStyle())
            .disabled(!self.currGame.turnRollCountFlag)
        }
    }
}

struct RollDiceButton_Previews: PreviewProvider {
    static var previews: some View {
        RollDiceButton().environmentObject(Game())
    }
}
