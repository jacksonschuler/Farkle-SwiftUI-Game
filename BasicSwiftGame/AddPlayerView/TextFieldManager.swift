//
//  TextFieldManager.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-11.
//  Copyright © 2020 Opench. All rights reserved.
//

import Foundation

import SwiftUI

class TextFieldManager: ObservableObject {
    
    let charLimit = 10
    
    @Published var userInput = "" {
        didSet {
            if userInput.count > charLimit {
                userInput = String(userInput.prefix(charLimit))
            }
        }
    }
}
