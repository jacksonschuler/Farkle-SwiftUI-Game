//
//  InGameView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct InGameView: View {
    var body: some View {
        InGameDiceView()
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView().environmentObject(Game())
    }
}
