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
            Spacer()
            Text("Rules")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
                .background(Color(red: 107 / 255, green: 129 / 255, blue: 140 / 255))
                .cornerRadius(40)
                .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                .padding(10)
            Spacer()
        }
        
    }
}

struct RulesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RulesHeaderView()
    }
}
