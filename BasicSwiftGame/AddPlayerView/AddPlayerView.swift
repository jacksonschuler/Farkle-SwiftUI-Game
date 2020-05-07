//
//  AddPlayerView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct AddPlayerView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Enter Player's Name")
            SubmitNameView()
            StartGameButton()
        }
    }
}

struct AddPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerView()
    }
}
