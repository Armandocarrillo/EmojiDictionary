//
//  EmojiTableTableViewController.swift
//  EmojiDictionary
//
//  Created by Armando Carrillo on 02/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
         
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if section == 0{
            return emojis.count
        } else {
            return 0
        }
       
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name) "
        cell.detailTextLabel?.text = "\(emoji.description)"
        return cell
    }
 
    
    
    var emojis: [Emoji] = [Emoji(symbol: "😀", name: "Grinning Face", description: " A typicaly smiley face", usage: "happimess"),Emoji(symbol: "🤨", name: "confused Face", description: "A confuded, puzzled face", usage: "unsure what to think displeasure"),Emoji(symbol: "😍", name: "Heart eyes", description: "A smiley face with heart for eyes", usage: "love of something;attractive"),Emoji(symbol: "👮‍♀️", name: "Police officer", description: "A police officer wearing a blue cap with a gold badge", usage: "person of authority"),Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle", usage: "something slow"),Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant", usage: "good memory"),Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti", usage: "spagheti"),Emoji(symbol: "🎲", name: "Die", description: "A single die", usage: "taking a risk, change,game"),Emoji(symbol: "⛺️", name: "Tent", description: "A small tent", usage: "camping"), Emoji(symbol: "📚", name: "Stack od books", description: "Three colores books stacked on each other", usage: "homework, stufyng"),Emoji(symbol: "💔", name: "Broken heart", description: "Ared, broken heart", usage: "extreme sadness"),Emoji(symbol: "💤", name: "Snore", description: "Three blue Z", usage: "Snore"), Emoji(symbol: "🏁", name: "Checker flag", description: "A black and white checkered flag", usage: "completion") ]
    
    
}
