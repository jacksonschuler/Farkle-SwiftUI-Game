//
//  CurrentPlayersView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-11.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct CurrentPlayersView: View {
     @EnvironmentObject var currGame: Game
    
    var body: some View {
        List {
            ForEach(currGame.get_playerlist(), id:\.self) {item in
                HStack {
                    Text("\(item)")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding()
                        .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                        .cornerRadius(40)
                        .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                }.listRowBackground(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255))
            }
        }
        .onAppear() {
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().backgroundColor = UIColor(red: CGFloat(62/255.0), green: CGFloat(54/255.0), blue: CGFloat(63/255.0), alpha: 1.0)
        }
    }
}

struct CurrentPlayersView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPlayersView()
    }
}

