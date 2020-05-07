//
//  RuleScoringListView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI


let scores = [
    "1     -    100 pts",
    "5     -    50 pts",
    "1-1-1     -    1,000 pts",
    "2-2-2     -    200 pts",
    "3-3-3     -    300 pts",
    "4-4-4     -    400 pts",
    "5-5-5     -    500 pts",
    "6-6-6     -    600 pts",
    "1-2-3-4-5     -    3,000 pts",
    "3 Pairs     -    1,500 pts",
]

struct RuleScoringListView: View {
    var body: some View {
        VStack {
            ForEach(scores, id:\.self){item in
                RuleScoringItemView(score:item)
            }
        }
    }
}

struct RuleScoringListView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScoringListView()
    }
}
