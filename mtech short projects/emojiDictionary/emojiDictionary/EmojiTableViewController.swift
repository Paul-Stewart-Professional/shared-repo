//
//  EmojiTableViewController.swift
//  emojiDictionary
//
//  Created by Paul Stewart on 10/13/23.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    //outlets
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    
    @IBSegueAction func addEditEmoji(_ coder: NSCoder, sender: Any?) -> AddEditEmojiTableViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            //editing emoji
            let emojiToEdit = emojis[indexPath.row]
            return AddEditEmojiTableViewController(coder: coder, emoji: emojiToEdit)
        } else {
            return AddEditEmojiTableViewController(coder: coder, emoji: nil)
        }
    }
    
    @IBAction func editButtonTapepd(_ sender: Any) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
        if !tableViewEditingMode {
            editButton.title = "Done"
        } else if tableViewEditingMode {
            editButton.title = "Edit"
        }
        
    }
    
   
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
        Emoji.saveToFile(emojis: emojis)
        tableView.reloadData()
    }
//    Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) ->
        UITableViewCell.EditingStyle {
            return .delete
        }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileEmojis = Emoji.loadFromFile()
        emojis = fileEmojis
        
        if fileEmojis.isEmpty {
            emojis = Emoji.sampleEmojis()
        }
    }
    //unwind segue
    @IBAction func unwindToEmojiTableView(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind",
        let sourceViewController = segue.source as? AddEditEmojiTableViewController,
        let emoji = sourceViewController.emoji else { return }
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            emojis[selectedIndexPath.row] = emoji
            tableView.reloadRows(at: [selectedIndexPath], with: .none)
        } else {
            let newIndexPath = IndexPath(row: emojis.count, section: 0)
            emojis.append(emoji)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
        Emoji.saveToFile(emojis: emojis)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        // Configure the cell...
        let emoji = emojis[indexPath.row]
        cell.selectionStyle = .none
        cell.update(with: emoji)
        cell.showsReorderControl = true
        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        tableView.reloadData()
        if editingStyle == .delete {
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            Emoji.saveToFile(emojis: emojis)
            tableView.reloadData()
        }
    }
}
