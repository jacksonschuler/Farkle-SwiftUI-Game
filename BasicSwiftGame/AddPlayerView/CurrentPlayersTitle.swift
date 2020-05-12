//
//  CurrentPlayersTitle.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-11.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct CurrentPlayersTitle: View {
    var body: some View {
        HStack {
            Text("Current Players")
                .font(.title)
                .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                .fontWeight(.heavy)
                .padding(.all, 20)
            Spacer()
        }
    }
}

struct CurrentPlayersTitle_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPlayersTitle()
    }
}
