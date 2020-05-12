//
//  RuleListItemView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RuleListItemView: View {
    var rule: String
    var body: some View {
        HStack {
            Text("•")
                .font(.body)
                .padding(.leading)
                .padding(.trailing, 5)
            Text(rule)
                .padding(.all, 5)
                .fixedSize(horizontal: false, vertical: true)
            Spacer()
        }
    }
}


struct RuleListItemView_Previews: PreviewProvider {
    static var previews: some View {
        RuleListItemView(rule:"Between 2 and 6 players")
    }
}
