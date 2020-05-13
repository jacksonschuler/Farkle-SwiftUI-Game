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
    
    var cols:[String] = ["Player", "Score"]
    @EnvironmentObject var curGame:Game
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Scoreboard")
                .font(.title)
                .padding(.horizontal, 60)
                    .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                    .cornerRadius(20)
                    .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                    .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5))
                .padding(.top, 33)
                .padding(.bottom, 20)
            
            TableView()
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView().environmentObject(Game())
    }
}


