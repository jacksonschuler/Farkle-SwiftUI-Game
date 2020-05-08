//
//  ScoreBoardView.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct ScoreBoardView: View {
    
    var p:Player = Player(id: "Robert")
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Scoreboard")
                .font(.title)
                .underline()
            HStack(alignment: .firstTextBaseline) {
                Text("Name")
                Text("Score")
            }
            HStack {
                List(0..<5) {item in
                    Text("\(self.p.id)")
                }
                List(0..<5) {item in
                    Text("\(self.p.score)")
                }
            }
            Spacer()
        }
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView()
    }
}
