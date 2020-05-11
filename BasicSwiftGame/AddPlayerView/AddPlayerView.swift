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
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView()
    }
}
