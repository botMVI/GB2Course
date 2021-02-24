//
//  RecordViewController.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 20.02.2021.
//

import UIKit

class RecordsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GameSession.shared.records.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RecordTableViewCell.reuseIdentifier, for: indexPath) as! RecordTableViewCell

        let record = GameSession.shared.records[indexPath.row]
        cell.dateLabel.text = record.date.description
        cell.scoreLabel.text = "score: \(record.score)"
        
        return cell
    }
}
