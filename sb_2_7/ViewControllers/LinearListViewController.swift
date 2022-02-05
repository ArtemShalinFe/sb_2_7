//
//  linearListViewController.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

import UIKit

class linearListViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "linearListCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName

        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailVC = segue.destination as? ContactDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        
        detailVC.personFullName = person.fullName
        detailVC.personPhone = person.getContact(type: .phone)
        detailVC.personEmail = person.getContact(type: .email)
        
    }

}
