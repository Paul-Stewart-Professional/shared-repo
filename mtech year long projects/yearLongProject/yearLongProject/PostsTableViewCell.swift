//
//  PostsTableViewCell.swift
//  yearLongProject
//
//  Created by Paul Stewart on 11/16/23.
//

import UIKit

class PostsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var postDescription: UILabel!
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
