//
//  ContactDetailViewController.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var personFullName: String = ""
    var personPhone: String = ""
    var personEmail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = personFullName
        phoneLabel.text = "Phone: \(personPhone)"
        emailLabel.text = "E-mail: \(personEmail)"
        
    }

}
