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
                Spacer()
                    .frame(height: 50)
                ContentHeaderView()
                Spacer()
                NavigationLink(destination: AddPlayerView()){
                    Text("Create New Game")
                       .fontWeight(.bold)
                       .font(.title)
                       .padding()
                       .background(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                       .cornerRadius(40)
                       .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                       .padding(10)
                       .overlay(
                          RoundedRectangle(cornerRadius: 40)
                              .stroke(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255), lineWidth: 5)
                       )
                }
                Spacer()
                    .frame(height: 50)
                NavigationLink(destination: RulesView()){
                    Text("Rules")
                        .fontWeight(.bold)
                         .font(.title)
                         .padding()
                         .background(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                         .cornerRadius(40)
                         .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                         .padding(10)
                         .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255), lineWidth: 5)
                         )
                }
                Spacer()

            }
            .navigationBarTitle("", displayMode: .inline)
            .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.vertical))
//            .navigationBarHidden(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView().environmentObject(Game())
    }
}
