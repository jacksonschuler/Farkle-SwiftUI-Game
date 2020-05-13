//
//  TableColumn.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-08.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

// A view to display a column of the scoreboard
struct ColumnView: View {
    
    var col_title:String
    @EnvironmentObject var curGame:Game
    
    var body: some View {
        VStack(spacing: 10) {
            // column title
            Text("\(self.col_title)")
                .font(.headline)
                .underline()
            
            // each entry in column
            ForEach(0..<self.curGame.PlayerList.count) { i in
                if self.col_title == "Player" {
                    Text("\(self.curGame.PlayerList[i].id)")
                }
                else {
                    Text("\(self.curGame.PlayerList[i].score)")
                }
                
                
            }
            .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
            Spacer()
        }
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(col_title: "Name").environmentObject(Game())
    }
}
