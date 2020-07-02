//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Armando Carrillo on 01/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import Foundation

class  Emoji{
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol:String, name:String, description:String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
