//
//  SubmitNameButton.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-06.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct SubmitNameButton: View {
    var name:String
    var body: some View {
        VStack {
            // Submit name button
            Button(action: {
                // insert some action
            }) {
                Text("Submit")
                    .foregroundColor(.blue)
            }.padding(10.0)
            .overlay(RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 2.0)
            )
        }
    }
}

struct SubmitNameButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitNameButton(name: "Fred")
    }
}
