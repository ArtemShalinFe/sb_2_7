//
//  Person.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

import UIKit

struct Person {
    var firstname = ""
    var lastname = ""
    var contacts: [Contact]
    
    var fullName: String {
        "\(firstname) \(lastname)"
    }
    
    func getContact(type: ContactType) -> String {
        
        let filteredContacts = contacts.filter { $0.type == type }
        guard let contact = filteredContacts.first else { return "" }
        return contact.value
        
    }
}

struct Contact {
    let type: ContactType
    let value: String
}

enum ContactType: String, CaseIterable {
    case phone = "phone"
    case email = "email"
}
