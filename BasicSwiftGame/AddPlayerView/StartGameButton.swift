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
        Button(action: {
            
        }) {
            Text("Start Game")
        }.padding(10.0)
            .overlay(RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 2.0)
        )
    }
}

struct StartGameButton_Previews: PreviewProvider {
    static var previews: some View {
        StartGameButton()
    }
}
