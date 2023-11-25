//
//  EmojiTableViewCell.swift
//  emojiDictionary
//
//  Created by Paul Stewart on 10/13/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    //outlets
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with emoji: Emoji) {
        emojiLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
