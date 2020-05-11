//
//  InGameSingleDiceView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI;

/*
In Game Single Dice View - displays a single die button / image which
 will set the die to inactive
 */
struct InGameSingleDiceView: View {
    @EnvironmentObject var currGame: Game
    var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                self.currGame.flag = 1
                self.currGame.DiceList[self.index].isActive = false
            }) {
                Image("dice-\(self.currGame.DiceList[self.index].result)")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .disabled(!self.currGame.DiceList[self.index].isActive)
        }
        .accentColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
    }
}

struct InGameSingleDiceView_Previews: PreviewProvider {
    static var previews: some View {
        InGameSingleDiceView(index: 0).environmentObject(Game())
    }
}


