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
                    .font(.body)
                    .padding(5)
                    .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                    .padding(5)
                    .overlay(
                       RoundedRectangle(cornerRadius: 20)
                           .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5)
                    )
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Game Over!"), message: self.currGame.find_winner(), dismissButton: Alert.Button.default(Text("End Game"), action:{
                            self.presentationMode.wrappedValue.dismiss()
                            self.currGame.reset_game()
                            }))
                }
        }
    }
    
    var ScoreBoardButton: some View {
        
        NavigationLink(destination: ScoreBoardView()) {
            Text("Score Board")
                .font(.body)
                .padding(5)
                .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                .cornerRadius(20)
                .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5)
            )
        }
    }
    
    var body: some View {
        InGameDiceView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: ExitButton, trailing: ScoreBoardButton)
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.vertical))
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView().environmentObject(Game())
    }
}
