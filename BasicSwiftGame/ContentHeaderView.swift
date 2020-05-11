//
//  ContentHeaderView.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack{
            ZStack{
                Text("Farkle Dice Game")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                    .cornerRadius(40)
                    .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                    .padding(10)
                    .overlay(
                       RoundedRectangle(cornerRadius: 40)
                           .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5)
                    )
                Text("Opench Industries")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 105 / 255, green: 122 / 255, blue: 33 / 255))
                    .offset(x: 0, y:25)
            }
            .frame(minWidth:300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
        }
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255))
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}
