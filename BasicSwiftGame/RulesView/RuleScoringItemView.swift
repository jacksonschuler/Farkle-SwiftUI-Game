//
//  RuleScoringItemView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RuleScoringItemView: View {
    var score: String
    var body: some View {
        HStack {
            Text("•")
                .font(.body)
                .padding(.leading)
                .padding(.trailing, 5)
            Text(score)
                .padding(.top, 5)
                .padding(.bottom, 5)
            Spacer()
        }
    }
}

struct RuleScoringItemView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScoringItemView(score: "1     -    100pts")
    }
}
