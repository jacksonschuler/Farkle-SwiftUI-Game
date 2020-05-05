//
//  MenuListView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: NewGameView()){
                    Text("New Game")
                }
                NavigationLink(destination: RulesView()){
                    Text("Rules")
                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
