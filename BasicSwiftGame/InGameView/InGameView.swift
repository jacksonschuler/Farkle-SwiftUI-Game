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
    @State private var showingAlert = false
    
    //Exit button backs out of the game and resets the game state
    var ExitButton: some View {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("End Game")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Game Over!"), message: currGame.find_winner(), dismissButton: Alert.Button.default(Text("End Game"), action:{
                    self.presentationMode.wrappedValue.dismiss()
                    self.currGame.reset_game()
                  }))
              }
        }
    
    var body: some View {
        InGameDiceView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: ExitButton)
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.vertical))
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView().environmentObject(Game())
    }
}
