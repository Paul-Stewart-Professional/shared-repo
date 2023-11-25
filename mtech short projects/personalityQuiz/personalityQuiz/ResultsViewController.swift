//
//  ResultsViewController.swift
//  personalityQuiz
//
//  Created by Paul Stewart on 9/26/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var resultsAnswerLabel: UILabel!
    
    
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    @IBOutlet weak var emojiPlace: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()

        // Do any additional setup after loading the view.
    }
    
    var responses: [Answer]
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
//        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
//            (pair1, pair2) in
//            return pair1.value > pair2.value
//        })
        let mostCommonAnswer = frequencyOfAnswers.sorted {
            $0.1 > $1.1 }.first!.key
        
        resultsAnswerLabel.text = "You are a \(mostCommonAnswer)!"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
        resultsDefinitionLabel.numberOfLines = 0
        emojiPlace.text = mostCommonAnswer.emoji
        
    }
}


