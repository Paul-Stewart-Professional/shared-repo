//
//  ViewController.swift
//  calculator
//
//  Created by Paul Stewart on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var posNegButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var numbersLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numbersLabel.text = ""
    }
    
    func doMath() {
        let expression = NSExpression(format: numbersLabel.text!)
        if let result = expression.expressionValue(with: nil, context: nil) as? Double {
            numbersLabel.text = String(result)
        } else {
            print("failed")
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        numbersLabel.text = ""
    }
    
    @IBAction func posNegButtonPressed(_ sender: Any) {
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        if !numbersLabel.text!.isEmpty{
            numbersLabel.text?.removeLast()
        }
    }
    
    @IBAction func divisionButtonPressed(_ sender: Any) {
        numbersLabel.text! += "/"
    }
    
    @IBAction func multiplicationButtonPressed(_ sender: Any) {
        numbersLabel.text! += "*"
    }
    
    @IBAction func additionButtonPressed(_ sender: Any) {
        numbersLabel.text! += "+"
    }
    
    @IBAction func subtractionButtonPressed(_ sender: Any) {
        numbersLabel.text! += "-"
    }
    
    @IBAction func equalsButtonPressed(_ sender: Any) {
        doMath()
    }
    
    @IBAction func nineButtonPressed(_ sender: UIButton) {
        numbersLabel.text! += "9"
    }
    
    @IBAction func eightButtonPressed(_ sender: Any) {
        numbersLabel.text! += "8"
    }
    
    @IBAction func sevenButtonPressed(_ sender: Any) {
        numbersLabel.text! += "7"
    }
    
    @IBAction func sixButtonPressed(_ sender: Any) {
        numbersLabel.text! += "6"
    }
    
    @IBAction func fiveButtonPressed(_ sender: Any) {
        numbersLabel.text! += "5"
    }
    
    @IBAction func fourButtonPressed(_ sender: Any) {
        numbersLabel.text! += "4"
    }
    
    @IBAction func threeButtonPressed(_ sender: Any) {
        numbersLabel.text! += "3"
    }
    
    @IBAction func twoButtonPressed(_ sender: Any) {
        numbersLabel.text! += "2"
    }
    
    @IBAction func oneButtonPressed(_ sender: Any) {
        numbersLabel.text! += "1"
    }
    
    @IBAction func zeroButtonPressed(_ sender: Any) {
        numbersLabel.text! += "0"
    }
    
    @IBAction func decimalButtonPressed(_ sender: Any) {
        numbersLabel.text! += "."
    }
}

