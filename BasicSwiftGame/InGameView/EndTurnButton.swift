//
//  EndTurnButton.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-07.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct EndTurnButton: View {
    @EnvironmentObject var currGame: Game
    
    var body: some View {
        Button(action:{
           for die in self.currGame.DiceList {
                die.result = 1
                die.isActive = true
                self.currGame.flag = 1
            }
            
            // set player turn here
            
            //make call to calc final score
            
            //make call to update score in scoreboard
            
       }){
           Text("End Turn")
       }
    }
}

struct EndTurnButton_Previews: PreviewProvider {
    static var previews: some View {
        EndTurnButton()
    }
}
