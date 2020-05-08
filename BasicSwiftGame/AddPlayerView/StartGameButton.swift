//
//  StartGameButton.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-06.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

// Defines a button to move to the InGameView
struct StartGameButton: View {
    @EnvironmentObject var currGame: Game
    
    var body: some View {
        VStack {
            NavigationLink(destination: InGameDiceView()){
                Text("Start Game")
            }.simultaneousGesture(TapGesture().onEnded{
                self.currGame.set_numPlayer()
            })
        }
    }
}

struct StartGameButton_Previews: PreviewProvider {
    static var previews: some View {
        StartGameButton()
    }
}
