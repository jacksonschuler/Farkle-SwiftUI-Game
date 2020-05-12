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
                .padding(.bottom)
            CurrentPlayersTitle()
            CurrentPlayersView()
            Spacer()
                
        }
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.vertical))
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView().environmentObject(Game())
    }
}
