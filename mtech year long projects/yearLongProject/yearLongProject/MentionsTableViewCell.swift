//
//  MentionsTableViewCell.swift
//  yearLongProject
//
//  Created by Paul Stewart on 11/17/23.
//

import UIKit

class MentionsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mentionsImage: UIImageView!
    @IBOutlet weak var mentionsTitle: UILabel!
    @IBOutlet weak var dateTitle: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var likesText: UILabel!
    @IBOutlet weak var commentsText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
