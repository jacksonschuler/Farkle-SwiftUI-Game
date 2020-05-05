//
//  RulesView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        VStack {
            RulesHeaderView()
            RulesListView()
            RuleScoringHeaderView()
            RuleScoringListView()
            Spacer()
        }
      

    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
