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
    @ObservedObject var textFieldManager = TextFieldManager()
    
    var body: some View {
        VStack {
            // Textfield for user to enter name
            TextField("NAME", text: $textFieldManager.userInput)
                .multilineTextAlignment(.center)
            
            // submit button - add new player to list of players
            Button(action: {
                //self.curGame.PlayerList.append(Player(id: self.Name))
                //self.Name = ""
                self.curGame.PlayerList.append(Player(id: String(self.textFieldManager.userInput)))
                self.textFieldManager.userInput = ""
            }) {
                Text("Submit")
                    .foregroundColor(.blue)
            }
            .padding(10.0)
            .overlay(RoundedRectangle(cornerRadius: 10.0)
            .stroke(lineWidth: 2.0)
            )
        }
    }
}

struct SubmitNameButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitNameView().environmentObject(Game())
    }
}
