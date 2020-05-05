//
//  RulesHeaderView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RulesHeaderView: View {
    var body: some View {
        HStack {
            Text("Rules")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.leading)
                .padding(.bottom,10)
            Spacer()
        }
    }
}

struct RulesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RulesHeaderView()
    }
}
