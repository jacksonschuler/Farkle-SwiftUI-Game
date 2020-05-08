//
//  InGameView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI
/*
 InGame View houses the InGameDiceView, InGameSingleDiceView, Scoreboard views
 */
struct InGameView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var currGame: Game
    
    //Exit button backs out of the game and resets the game state
    var ExitButton: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                self.currGame.reset_game()
            }) {
                Text("Exit Game")
            }
        }
    
    var body: some View {
        InGameDiceView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: ExitButton)
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView().environmentObject(Game())
    }
}
