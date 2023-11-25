//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Paul Stewart on 11/6/23.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    //outlet
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    //var
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
              let ageString = ageTextField.text,
              let age = Int(ageString),
              let league = leagueTextField.text,
              let team = teamTextField.text else { return }
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "unwindFromAthleteForm", sender: self)
    }
    
    func updateView() {
        guard let athlete = self.athlete else { return }
            nameTextField.text = athlete.name
            ageTextField.text = "\(athlete.age)"
            leagueTextField.text = athlete.league
            teamTextField.text = athlete.team
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
