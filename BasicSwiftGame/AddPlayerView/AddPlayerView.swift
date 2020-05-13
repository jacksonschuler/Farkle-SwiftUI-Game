//
//  AddPlayerView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

// Allows player(s) to enter a name and
// add themselves to the game - once all
// players have been added players can
// start the game
struct AddPlayerView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var BackBtn: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Back")
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
        VStack() {
            AddPlayerTitle()
            HStack {
                Text("Add a New Player")
                    .font(.headline)
                    .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                    .padding(.bottom, -20)
                    .padding(.leading, 20)
                Spacer()
            }
            .padding(.bottom, 20)
            SubmitNameView()
            CurrentPlayersTitle()
            CurrentPlayersView()
            Spacer()
                
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackBtn)
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.vertical))

    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView().environmentObject(Game())
    }
}
