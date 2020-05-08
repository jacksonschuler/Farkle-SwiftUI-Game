//
//  TableColumn.swift
//  BasicSwiftGame
//
//  Created by Robert Stefanyshin on 2020-05-08.
//  Copyright © 2020 Opench. All rights reserved.
//

import SwiftUI

struct TableColumn: View {
    
    var col_title:String
    @EnvironmentObject var curGame:Game
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TableColumn_Previews: PreviewProvider {
    static var previews: some View {
        TableColumn(col_title: "Name").environmentObject(Game())
    }
}
