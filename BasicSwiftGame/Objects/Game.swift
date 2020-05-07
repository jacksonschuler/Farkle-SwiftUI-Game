//
//  Game.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import Foundation

//A class to represent the Game Object
class Game: ObservableObject {
    // temp flag used to refresh the view
    @Published var flag: Int = 1
    //List stores all Die Objects used in the game
    @Published var DiceList = [
            Die.init(id: 0, result: 0),
            Die.init(id: 1, result: 0),
            Die.init(id: 2, result: 0),
            Die.init(id: 3, result: 0),
            Die.init(id: 4, result: 0),
            Die.init(id: 5, result: 0)]
    var currTurn: Int = 0
    var turnRollCount: Int = 0
    var turnRollCountFlag: Bool = true
}
