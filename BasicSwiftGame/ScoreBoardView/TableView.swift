//
//  ScoreBoardTableView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-08.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct TableView: View {
    
    var t_title:String // title for table
    
    var body: some View {
        VStack {
            Text("Scoreboard")
            .font(.title)
            .underline()
        
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(t_title: "Score Board")
    }
}
