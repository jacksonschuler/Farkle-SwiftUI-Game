//
//  RulesListView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI


let rules = [
    "Between 2 and 6 players",
    "One player is chosen to start, and turns continue in a circular fashion",
    "The current player then rolls 6 dice and checks to see if they rolled any scoring dice or combinations",
    "The player must set aside at least one scoring scoring die of their choice, but they arent requred to set aside all their scoring dice",
    "The same player rolls once again, setting aside one or more die.",
    "The player stops rolling once they have set aside 6 total dice.",
    "The combination of dice that is set aside by the current player is then scored (See Scoring)",
    "The first player to 10,000 points is the winner!"
    
]

struct RulesListView: View {
    var body: some View {
        VStack {
            ForEach(rules, id:\.self){item in
                RuleListItemView(rule:item)
            }
        }
        .padding()
        .background(Color(red: 107 / 255, green: 129 / 255, blue: 140 / 255))
        .cornerRadius(40)
        .foregroundColor(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255))
        .padding(10)
    }
}

struct RulesListView_Previews: PreviewProvider {
    static var previews: some View {
        RulesListView()
    }
}


/*
 One player is chosen to begin and play moves clockwise around the table. Each player in turn rolls all six dice and checks to see if they have rolled any scoring dice or combinations. (See Scoring below.) Any dice that score may be set aside and then the player may choose to roll all the remaining dice. The player must set aside at least one scoring die of their choice if possible but is not required to set aside all scoring dice.
 */

