//
//  DataManager.swift
//  sb_2_7
//
//  Created by Артем ШАЛИН on 02.02.2022.
//

class DataManager {
    
    var firstNames = [
        "Tamara",
        "Ashleigh",
        "Vassily",
        "Chevalier",
        "Kaile",
        "Shep",
        "Marcela",
        "Viviene",
        "Cello",
        "Kermie"
    ]
    
    var lastNames = [
        "Dougherty",
        "Chown",
        "Cotes",
        "Janovsky",
        "Keene",
        "Blagden",
        "Bourthouloume",
        "Sirett",
        "Heber",
        "Dobrovolski"
    ]
    
    var emails = [
        "tdougherty0@hugedomains.com",
        "achown1@wp.com",
        "vcotes2@oracle.com",
        "cjanovsky3@opera.com",
        "kkeene4@youku.com",
        "sblagden5@seesaa.net",
        "mbourthouloume6@opensource.org",
        "vsirett7@sina.com.cn",
        "cheber8@ucoz.ru",
        "kdobrovolski9@imdb.com"
    ]
    
    var phones = [
        "8015483626",
        "3108287169",
        "2004722225",
        "5271119453",
        "5715043692",
        "5567200552",
        "2456345354",
        "9253796866",
        "9707413865",
        "4434454721"
    ]
    
    func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        while firstNames.count > 0 {
            
            guard let randomFirstName = firstNames.randomElement() else { return persons }
            guard let randomLastName = lastNames.randomElement() else { return persons }
            guard let randomEmail = emails.randomElement() else { return persons }
            guard let randomPhone = phones.randomElement() else { return persons }
            
            let person = Person(
                firstname: randomFirstName,
                lastname: randomLastName,
                contacts: [
                    Contact(type: .email, value: randomEmail),
                    Contact(type: .phone, value: randomPhone)
                ]
            )
            
            persons.append(person)
            
            firstNames = firstNames.filter {$0 != randomFirstName}
            lastNames = lastNames.filter {$0 != randomLastName}
            emails = emails.filter {$0 != randomEmail}
            phones = phones.filter {$0 != randomPhone}
            
        }
        
        return persons
    }
    
}
