//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Armando Carrillo on 01/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import Foundation

struct  Emoji: Codable{
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

    static func saveToFile(emojis: [Emoji]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmoji = try? propertyListEncoder.encode(emojis)
        try? encodedEmoji?.write(to: Emoji.ArchiveURL(), options: .noFileProtection)
        
    }
    static func loadFromFile() -> [Emoji]{
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmojiData = try? Data(contentsOf: Emoji.ArchiveURL()),
            let decodedEmoji = try? propertyListDecoder.decode(Array<Emoji>.self, from: retrievedEmojiData){
            print(decodedEmoji)
        }
        return []
    }
    static func ArchiveURL() -> URL{
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("emoji_test").appendingPathExtension("plist")
        return archiveURL
        
    }

}
