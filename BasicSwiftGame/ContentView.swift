//
//  ContentView.swift
//  BasicSwiftGame
//
//  Created by Jackson Schuler on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            MenuListView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().environmentObject(Game())
            ContentView().environmentObject(Game())
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
