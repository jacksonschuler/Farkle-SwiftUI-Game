//
//  CurrentPlayersView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-11.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct CurrentPlayersView: View {
    
     @EnvironmentObject var currGame: Game
    
    var body: some View {
        ForEach(currGame.get_playerlist(), id:\.self) {item in
            HStack {
                Text("\(item)")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                    .padding(.leading, 20)
                Spacer()
            }
        }
    }
}

struct CurrentPlayersView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPlayersView()
    }
}

