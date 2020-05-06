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
            VStack{
                Text("Farkle Dice Game")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Opench Industries")
                    .font(.subheadline)
            }
            .frame(minWidth:300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}
