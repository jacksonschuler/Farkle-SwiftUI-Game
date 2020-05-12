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
                .padding(.leading)
                .padding(.trailing)
            
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
                            .background(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                            .cornerRadius(40)
                            .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255), lineWidth: 5)
                               )
                }
                Spacer().frame(width: 20)
                StartGameButton().padding()
            }
        }
    }
}

struct SubmitNameButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitNameView().environmentObject(Game())
    }
}
