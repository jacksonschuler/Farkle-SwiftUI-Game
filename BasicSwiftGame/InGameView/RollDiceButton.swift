//
//  RollDiceButton.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RollDiceButton: View {
    @EnvironmentObject var currGame: Game
    var body: some View {
        Button(action: {
            //Update active die values on roll
            for die in self.currGame.DiceList {
                if (die.isActive == true) {
                    die.result = Int.random(in: 1...6)
                }
            }
            //Flag to update image -- temp work around
            self.currGame.flag = Int.random(in: 1...6)
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
    }
}

struct RollDiceButton_Previews: PreviewProvider {
    static var previews: some View {
        RollDiceButton()
    }
}
