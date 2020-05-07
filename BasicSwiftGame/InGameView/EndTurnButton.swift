//
//  EndTurnButton.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

/*
    score_turns
    :params - 6 integers that represent the players stored dice they wish to score
    :returns - an integer score based on the decided scoring outline
 */
func score_turn(r1:Int, r2:Int, r3:Int, r4:Int, r5:Int, r6:Int) -> Int {
    
    let rolls:[Int] = [r1, r2, r3, r4, r5, r6]  // convert the numbers to an array
    
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


struct EndTurnButton: View {
    @EnvironmentObject var currGame: Game
    
    var body: some View {
        Button(action:{
           for die in self.currGame.DiceList {
                die.result = 0
                die.isActive = true
            }
            
            // set player turn here
            
            //make call to calc final score
            
            //make call to update score in scoreboard
            
            // reset turn count
            self.currGame.turnRollCountFlag = true
            self.currGame.turnRollCount = 0
            self.currGame.flag = 1
       }){
           Text("End Turn")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .padding(10)
                .border(Color.red, width: 5)
       }
    }
}

struct EndTurnButton_Previews: PreviewProvider {
    static var previews: some View {
        EndTurnButton().environmentObject(Game())
    }
}
