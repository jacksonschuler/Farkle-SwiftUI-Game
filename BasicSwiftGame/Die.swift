//
//  Die.swift
//  BasicSwiftGame
//
//  Created by Ben Baker on 2020-05-04.
//  Copyright © 2020 Opench. All rights reserved.
//

import Foundation

//A class to represent the Die Object
class Die: Identifiable  {
    var id: Int                     // unique id
    var result: Int                 // result of the last roll
    var isActive: Bool = true       // if die is currently active
    
    //Initalizer for Die Object
    // id: unique id for die
    // result: initial value for die
    init(id: Int, result: Int) {
        self.result = result
        self.id = id
    }
    // Setter for the last roll outcome
    func setResult(result: Int){
        self.result = result
    }
    // Getter for the last roll outcome
    func getResult() -> Int{
        return self.result
    }
}
