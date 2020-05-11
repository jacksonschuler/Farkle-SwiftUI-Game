//
//  BottomScreenScoreView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-09.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct BottomScreenScoreView: View {
    @EnvironmentObject var currGame: Game
    
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading){
                Text("Turn Score")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                Text("\(self.currGame.tempScore)")
                Text("Remaining Rolls")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                Text("\(self.currGame.calc_rolls_remaining())")
            }
            .padding(.horizontal)
            VStack(alignment: .leading){
                if(self.currGame.numPlayer > 0) {
                    Text("Current Player")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                    Text("\(self.currGame.PlayerList[self.currGame.currTurn].id)")
                    Text("Overall Score")
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                    Text("\(self.currGame.PlayerList[self.currGame.currTurn].score)")
                    
                }
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}
struct BottomScreenScoreView_Previews: PreviewProvider {
    static var previews: some View {
        BottomScreenScoreView()
    }
}
