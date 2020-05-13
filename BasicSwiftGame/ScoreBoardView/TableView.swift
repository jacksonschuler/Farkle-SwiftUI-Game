//
//  ScoreBoardTableView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-08.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

// A view to display the scoreboard
struct TableView: View {
    
    var cols:[String] = ["Player", "Score"]
    @EnvironmentObject var curGame:Game
    
    var body: some View {
        HStack (spacing: 50) {
            ForEach(0..<cols.count) { c in
                ColumnView(col_title: self.cols[c])
                    .padding(.top, 15)
            }
        }
        .padding(.horizontal, 60)
        .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
        .cornerRadius(20)
        .padding(5)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5))
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}


