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
    
    //List of all players in the current game
//    @Published var PlayerList = [Player]()
    @Published var PlayerList = [Player(id: "Ben"), Player(id: "Robert"), Player(id: "Jackson")]
    
    var numPlayer: Int = 0
    var currTurn: Int = 0
    var turnRollCount: Int = 0
    var turnRollCountFlag: Bool = true
    var tempScore: Int = 0
    var disableTurnButton: Bool = true

    /*
        calc_score
        :params - 6 integers that represent the players stored dice they wish to score
        :returns - an integer score based on the decided scoring outline
     */
    func calc_score() -> Int {
        
        let rolls:[Int] = [
            self.DiceList[0].result,
            self.DiceList[1].result,
            self.DiceList[2].result,
            self.DiceList[3].result,
            self.DiceList[4].result,
            self.DiceList[5].result]  // convert the numbers to an array
        
        if rolls.sorted() == [1, 2, 3, 4, 5, 6] {  // check for a base case
            return 3000
        }
        
        var score:Int = 0
        
        var num_pairs:Int = 0
        
        var items:[Int: Int] = [    //items dictionary, keys are possible outcomes,  values are
            1: 0,                   // the number of times they occur in the provided roll
            2: 0,
            3: 0,
            4: 0,
            5: 0,
            6: 0
        ]
        
        for item in rolls{
            items[item]! += 1
        }

        for (key, _) in items {        //iterate through the dictionary and apply the
            if items[key] == 2 {           //appropriate score for their provided rolls
                num_pairs += 1
            }
            
            if items[key] == 6 {
                if key == 1 {
                    score += 2000
                } else {
                    score += key*200
                }
            }
                
            if items[key]! >= 3 && items[key]! != 6{
                if key == 1 {
                    score += 1000
                } else {
                    score += key*100
                }
            }
            
            if num_pairs == 3 {
                return 1500
            }
            
        }
        score += (items[1]! % 3) * 100      // any remaining 1s or 5s that were not used earlier are applied here
        score += (items[5]! % 3) * 50
        
        return score
    }
    
    // Calculates the number of players in the game
    func set_numPlayer(){
        self.numPlayer = self.PlayerList.count
    }

    //Resets all of the game specific values
    func reset_game(){
        self.numPlayer = 0
        self.turnRollCount = 0
        self.turnRollCountFlag = true
        self.tempScore = 0
        
        //clear player array
        self.PlayerList.removeAll()
        
        //reset all dice
        for die in self.DiceList{
            die.result = 0
        }
        
    }


}
