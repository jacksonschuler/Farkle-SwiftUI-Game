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
                ContentHeaderView()
                NavigationLink(destination: AddPlayerView()){
                    Text("Create New Game")
                        .padding()
                        .font(.headline)
                }
                NavigationLink(destination: RulesView()){
                    Text("Rules")
                        .padding()
                        .font(.headline)
                }
                Spacer()

            }
            .navigationBarTitle("", displayMode: .inline)
            }.navigationViewStyle(StackNavigationViewStyle())
    
    
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView().environmentObject(Game())
    }
}
