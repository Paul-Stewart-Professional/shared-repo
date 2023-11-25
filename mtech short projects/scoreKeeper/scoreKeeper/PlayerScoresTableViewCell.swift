//
//  PlayerScoresTableViewCell.swift
//  scoreKeeper
//
//  Created by Paul Stewart on 11/8/23.
//

import UIKit

class PlayerScoresTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreStepper: UIStepper!
    
    
    weak var delegate: PlayerScoresTableViewCellDelegate?
    var player: Player?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func update(with player: Player) {
//        nameLabel.text = player.name
//        scoreLabel.text = String(player.score)
//        scoreStepper.value = Double(player.score)
//    }
    func update(with player: Player?) {
            guard let player = player else {
                return
            }

            self.player = player
            nameLabel.text = player.name
            scoreLabel.text = String(player.score)
            scoreStepper.value = Double(player.score)
        }
    
    
    @IBAction func scoreStepperTapped(_ sender: UIStepper) {
        let newScore = Int(sender.value)
        scoreLabel.text = String(newScore)
        player?.score = newScore
        delegate?.updatePlayerScore(player!, newScore: newScore)
        print(player!.score)
    }
    
}
