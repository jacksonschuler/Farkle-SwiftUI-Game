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
            NavigationLink(destination: InGameView()){
                Text("Start Game")
                   .fontWeight(.bold)
                   .font(.headline)
                   .padding()
                   .background(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                   .cornerRadius(40)
                   .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                   .padding(10)
                   .overlay(
                       RoundedRectangle(cornerRadius: 40)
                           .stroke(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255), lineWidth: 5)
                      )
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
