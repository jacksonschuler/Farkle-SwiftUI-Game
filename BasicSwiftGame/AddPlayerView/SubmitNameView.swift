//
//  SubmitNameButton.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-06.
//  Copyright © 2020 Opench. All rights reserved.
//
import SwiftUI

// Defines a text field and a submit button/
// Submit button adds a new player with given
// name to PlayerList defined in Game
struct SubmitNameView: View {
    
    @State var Name: String = ""  // players name
    @EnvironmentObject var curGame: Game  // game object
    
    var body: some View {
        VStack {
            // Textfield for user to enter name
            TextField("Enter Player Name", text: $Name)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all)
            
            // submit button - add new player to list of players
            HStack {
                Button(action: {
                    self.curGame.PlayerList.append(Player(id: self.Name))
                    self.Name = ""
                }) {
                    Text("Add Player")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(Color.red, width: 5)
                }
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 0)
                )
                StartGameButton()
            }
        }
    }
}

struct SubmitNameButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitNameView().environmentObject(Game())
    }
}
