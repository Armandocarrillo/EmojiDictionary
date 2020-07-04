//
//  EmojiTableTableViewController.swift
//  EmojiDictionary
//
//  Created by Armando Carrillo on 02/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        
        tableView.setEditing(!tableViewEditingMode, animated: true)// put your table in editing mode
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = editButtonItem// set editbuttonitem in editing mode
    }

   
    
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
        //step 1 Dequeue cell
        //let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        //step 2 Fetch model object to display
        let emoji = emojis[indexPath.row]
        //cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name) "
        //cell.detailTextLabel?.text = "\(emoji.description)"
        //step 3 Configure cell
        cell.update(with: emoji)
        cell.showsReorderControl = true // table is in editing mode
        //step 4 Return cell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //change gray color of cell
        let emoji = emojis[indexPath.row]
        print("\(emoji.symbol) \(indexPath) ")
    }
 
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath){ // remove the data within emojis at fromIndexPath.row
        
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {// to remove the delete indicator
        return .none
    }
    override func viewWillAppear(_ animated: Bool) {//refresh data
        tableView.reloadData()
    }
    var emojis: [Emoji] = [Emoji(symbol: "😀", name: "Grinning Face", description: " A typicaly smiley face", usage: "happimess"),Emoji(symbol: "🤨", name: "confused Face", description: "A confuded, puzzled face", usage: "unsure what to think displeasure"),Emoji(symbol: "😍", name: "Heart eyes", description: "A smiley face with heart for eyes", usage: "love of something;attractive"),Emoji(symbol: "👮‍♀️", name: "Police officer", description: "A police officer wearing a blue cap with a gold badge", usage: "person of authority"),Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle", usage: "something slow"),Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant", usage: "good memory"),Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti", usage: "spagheti"),Emoji(symbol: "🎲", name: "Die", description: "A single die", usage: "taking a risk, change,game"),Emoji(symbol: "⛺️", name: "Tent", description: "A small tent", usage: "camping"), Emoji(symbol: "📚", name: "Stack od books", description: "Three colores books stacked on each other", usage: "homework, stufyng"),Emoji(symbol: "💔", name: "Broken heart", description: "Ared, broken heart", usage: "extreme sadness"),Emoji(symbol: "💤", name: "Snore", description: "Three blue Z", usage: "Snore"), Emoji(symbol: "🏁", name: "Checker flag", description: "A black and white checkered flag", usage: "completion") ]
    
    
}
