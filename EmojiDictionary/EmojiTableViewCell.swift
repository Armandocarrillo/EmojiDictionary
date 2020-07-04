//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Armando Carrillo on 04/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var desctiptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(with emoji: Emoji){ // update the labels with the values in the emoji instance 
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        desctiptionLabel.text = emoji.description
        
    }
    
}
