//
//  AddPlayerTitle.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-11.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct AddPlayerTitle: View {
    var body: some View {
        HStack {
            Text("Game Settings")
                .font(.title)
                .foregroundColor(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                .fontWeight(.heavy)
                .padding(.all, 20)
            Spacer()
        }
    }
}

struct AddPlayerTitle_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerTitle()
    }
}
