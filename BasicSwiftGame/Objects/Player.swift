//
//  Player.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-05.
//  Copyright © 2020 Opench. All rights reserved.
//

import Foundation

// A class to represent a player in the game
class Player {
    
    let name: String     // players name
    var score: Int  = 0  // players current score
    
    // Initializes a new player
    init(player_name: String) {
        self.name = player_name
    }
    
    // Increments players score by given number of points
    func incr_score(points: Int) { score += points }
}
