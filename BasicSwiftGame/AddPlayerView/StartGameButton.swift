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
    var body: some View {
        VStack {
            NavigationLink(destination: InGameDiceView()){
                Text("Start Game")
            }
        }
    }
}

struct StartGameButton_Previews: PreviewProvider {
    static var previews: some View {
        StartGameButton()
    }
}
