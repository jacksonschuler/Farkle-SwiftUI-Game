//
//  RuleScoringHeaderView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RuleScoringHeaderView: View {
    var body: some View {
        HStack {
            Text("Scoring")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.top, 10)
                .padding(.leading)
                .padding(.bottom,10)
            Spacer()
        }
    }
}

struct RuleScoringHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScoringHeaderView()
    }
}
