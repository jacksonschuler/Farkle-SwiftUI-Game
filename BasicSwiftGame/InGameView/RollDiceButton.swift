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
                    if (die.isActive == true) {
                        die.result = Int.random(in: 1...6)
                    }
                }
                //update number of rolls this turn
                self.currGame.turnRollCount += 1
                
                if(self.currGame.turnRollCount >= 4){
                    self.currGame.turnRollCountFlag = false
                    // set all die to inactive
                    for die in self.currGame.DiceList {
                        die.isActive = false
                    }
                }
                //Flag to update image -- temp work around
                self.currGame.flag = 1
            }) {
                Text("Roll Dice")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .padding(10)
                    .border(Color.red, width: 5)
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
