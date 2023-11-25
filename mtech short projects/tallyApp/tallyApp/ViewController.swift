//
//  ViewController.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var bigTallyButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    
    private let counter = Counter.shared
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
    }
    
    @IBAction func buttonFullyPressed(_ sender: UIButton) {
        counter.increase()
        counterLabel.text = "\(counter.tally)"
    }
    
    
    @IBAction func buttonHalfPressed(_ sender: UIButton) {
        bigTallyButton.tintColor = UIColor.gray4
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        showResetAlert()
    }
    
    func showResetAlert() {
        let alertController = UIAlertController(
            title: "Are you sure?",
            message: "Do you want to reset the counter to 0?",
            preferredStyle: .alert
        )
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let resetAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
            self.resetCount()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(resetAction)
        
        present(alertController, animated: true, completion: nil)
    }
 
    func resetCount() {
        counterLabel.text = "0" // Reset the label value to 0
        counter.tally = 0
    }
    
}

extension UIColor {
    static var gray3: UIColor {
        UIColor(named: "gray3")!
    }
    
    static var gray4: UIColor {
        UIColor(named: "gray4")!
    }

}
