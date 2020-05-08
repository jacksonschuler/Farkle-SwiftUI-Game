//
//  NewGameView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.

import SwiftUI

struct NewGameView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("New Game")
                Text("Get Game info here")
                Text("Link to Game View")
                NavigationLink(destination: AddPlayerView()){
                    Text("New Game")
               }
            }
        }
    }
}

struct NewGameView_Previews: PreviewProvider {
    static var previews: some View {
        NewGameView().environmentObject(Game())
    }
}
