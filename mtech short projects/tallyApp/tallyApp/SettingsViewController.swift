//
//  settingsViewController.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import UIKit

class SettingsViewController: UIViewController {
  
    //outlets
    
    @IBOutlet weak var setCountByButton: UIButton!
    
    @IBOutlet weak var countByLabel: UILabel!
    
    @IBOutlet weak var posNegSwitch: UISwitch!
    
    private let counter = Counter.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countByLabel.text = "Count by: 1"
        
    }
 
    @IBAction func stepUpCounterButtonPressed(_ sender: Any) {
        if posNegSwitch.isOn {
            counter.countBy += 1
        } else {
            counter.countBy -= 1
        }
        countByLabel.text = "Count by: \(counter.countBy)"
        print(counter.countBy)
    }
    
}
