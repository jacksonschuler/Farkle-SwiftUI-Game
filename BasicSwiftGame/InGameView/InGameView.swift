//
//  InGameView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI
/*
 InGame View houses the InGameDiceView, InGameSingleDiceView, Scoreboard views
 */
struct InGameView: View {
    var body: some View {
        InGameDiceView()
        .navigationBarBackButtonHidden(true)
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView().environmentObject(Game())
    }
}
