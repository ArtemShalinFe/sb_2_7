//
//  sectionalListViewController.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

import UIKit

class sectionalListViewController: UITableViewController {

    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ContactType.allCases.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionalListCell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.getContact(type: .phone)
            content.image = UIImage(systemName: "phone.fill") ?? UIImage()
        } else {
            content.text = person.getContact(type: .email)
            content.image = UIImage(systemName: "mail.fill") ?? UIImage()
        }
        
        cell.contentConfiguration = content
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        false
    }

}
