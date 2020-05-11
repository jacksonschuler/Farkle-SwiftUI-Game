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
    @State private var isShown: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        Button(action:{
           for die in self.currGame.DiceList {
                die.result = 0
                die.isActive = false
            }
            
            //make call to calc final score
            self.currGame.PlayerList[self.currGame.currTurn].incr_score(points: self.currGame.tempScore)
            
            // check if theres a winner
            if(self.currGame.PlayerList[self.currGame.currTurn].score > 10000){
                self.isShown = true
            }
            
            //Prepare for next turn
            // reset turn roll count
            self.currGame.turnRollCountFlag = true
            self.currGame.turnRollCount = 0
            //reset estimated score
            self.currGame.tempScore = 0
            //update player turn
            self.currGame.currTurn = ((self.currGame.currTurn + 1) % self.currGame.numPlayer)
            self.currGame.flag = 1
            //disable end turn button
            self.currGame.disableTurnButton = true
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
        .alert(isPresented: self.$isShown) {
            Alert(title: Text("Game Over!"), message: currGame.find_winner(), dismissButton: Alert.Button.default(Text("End Game"), action:{
                self.presentationMode.wrappedValue.dismiss()
                self.currGame.reset_game()
            }))
        }
        .buttonStyle(PlainButtonStyle())
        .disabled(self.currGame.disableTurnButton)
    }
}

struct EndTurnButton_Previews: PreviewProvider {
    static var previews: some View {
        EndTurnButton().environmentObject(Game())
    }
}
