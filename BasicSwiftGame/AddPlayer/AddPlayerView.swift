//
//  AddPlayerView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

func submitAction(player_name: String) {
    
}

struct AddPlayerView: View {
    
    @State var Name: String = ""
    var players: [Player]!
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Text("Enter Player's Name")
            TextField("NAME", text: $Name)
                .multilineTextAlignment(.center)
            
            SubmitNameButton(name: self.Name)
            StartGameButton()
        }
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView()
    }
}
