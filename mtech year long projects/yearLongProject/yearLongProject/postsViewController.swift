//
//  postsViewController.swift
//  yearLongProject
//
//  Created by Paul Stewart on 10/5/23.
//

import UIKit

class postsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var postsPFP: UIImageView!
    @IBOutlet weak var postsBackgroundImage: UIImageView!
    @IBOutlet weak var postsMentionsSegment: UISegmentedControl!
    @IBOutlet weak var postsTableView: UITableView!
    @IBOutlet weak var mentionsTableView: UITableView!
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        postsPFP.makeRounded()
        postsBackgroundImage.givePicBorder()
//        postsMentionsSegment.setHeight()
            self.postsTableView.delegate = self
            self.postsTableView.dataSource = self
            self.mentionsTableView.delegate = self
            self.mentionsTableView.dataSource = self
            postsTableView.isHidden = false
            mentionsTableView.isHidden = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == postsTableView {
            return arrayOfPosts.count
        } else {
            return arrayOfMentions.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == postsTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "postsCell", for: indexPath) as! PostsTableViewCell
            cell.postImage.image = UIImage(named: "\(arrayOfPosts[indexPath.row].image)")
            cell.postTitle.text = arrayOfPosts[indexPath.row].title
            cell.postDate.text = arrayOfPosts[indexPath.row].date
            cell.postDescription.text = arrayOfPosts[indexPath.row].description
            cell.likesText.text = String(arrayOfPosts[indexPath.row].likes)
            cell.commentsText.text = String(arrayOfPosts[indexPath.row].comments)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mentionsCell", for: indexPath) as! MentionsTableViewCell
            cell.mentionsImage.image = UIImage(named: "\(arrayOfMentions[indexPath.row].image)")
            cell.mentionsTitle.text = arrayOfMentions[indexPath.row].title
            cell.dateTitle.text = arrayOfMentions[indexPath.row].date
            cell.descriptionText.text = arrayOfMentions[indexPath.row].description
            cell.likesText.text = String(arrayOfMentions[indexPath.row].likes)
            cell.commentsText.text = String(arrayOfMentions[indexPath.row].comments)
            return cell
        }
    }
    
    func postsTableViewToggled() {
        postsTableView.isHidden.toggle()
    }
    func mentionsTableViewToggled() {
        mentionsTableView.isHidden.toggle()
    }

    @IBAction func postsMentionsSegmentToggled(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            postsTableViewToggled()
            mentionsTableViewToggled()
        } else if sender.selectedSegmentIndex == 1 {
            mentionsTableViewToggled()
            postsTableViewToggled()
        }
    }

}
