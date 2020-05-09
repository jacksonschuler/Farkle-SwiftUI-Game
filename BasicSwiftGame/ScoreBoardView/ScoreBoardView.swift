//
//  ScoreBoardView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

// Displays a score board with all current players
// and their score
struct ScoreBoardView: View {
    
    //var p:Player = Player(id: "Robert")
    var cols:[String] = ["Name", "Score"]
    @EnvironmentObject var curGame:Game
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Scoreboard")
                .font(.title)
                .underline()
            
            HStack {
                ForEach(0..<cols.count) { c in
                    if self.cols[c] == "Name" {
                        VStack {
                            Text("\(self.cols[c])")
                                .font(.headline)
                                .underline()
                            ForEach(0..<self.curGame.PlayerList.count) { i in
                                Text("\(self.curGame.PlayerList[i].id)")
                            }
                        }
                    } else {
                        VStack {
                            Text("\(self.cols[c])")
                                .font(.headline)
                                .underline()
                            ForEach(0..<self.curGame.PlayerList.count) { i in
                                Text("\(self.curGame.PlayerList[i].score)")
                            }
                        }
                    }
                    
                }
            }
            
            //Spacer()
        }
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView().environmentObject(Game())
    }
}
