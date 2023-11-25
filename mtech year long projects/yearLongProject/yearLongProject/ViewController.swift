//
//  ViewController.swift
//  yearLongProject
//
//  Created by Paul Stewart on 10/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var postsView: UIView!
    
    @IBOutlet weak var mentionsView: UIView!
    
    @IBOutlet weak var infoBreakView: UIView!
    
    @IBOutlet weak var bannerPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileImage.makeRounded()
        postsViewOn()
        bannerPic.givePicBorder()
//        infoBreakView.giveBorder()
    }
    
    func postsViewOn() {
        postsView.isHidden = false
        mentionsView.isHidden = true
    }
    func mentionsViewOn() {
        postsView.isHidden = true
        mentionsView.isHidden = false
    }

    @IBAction func postsMentionsSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            postsViewOn()
        } else if sender.selectedSegmentIndex == 1 {
            mentionsViewOn()
        }
    }
}

