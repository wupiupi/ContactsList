//
//  Person.swift
//  ContactsList
//
//  Created by Paul Makey on 16.12.23.
//

struct Contact: Equatable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getContacts() -> [Contact] {
        let dataStore = DataStore()
        var contacts: [Contact] = []
        
        while contacts.count < 10 {
            
            let name = dataStore.names.randomElement() ?? "No_name"
            let surname = dataStore.surnames.randomElement() ?? "No_surname"
            let email = dataStore.emails.randomElement() ?? "No_email"
            let phone = dataStore.phoneNumbers.randomElement() ?? "No_phone"
            
            let newContact = Contact(
                name: name,
                surname: surname,
                phone: phone,
                email: email
            )
            
            if !contacts.contains(where: { $0 == newContact }) {
                contacts.append(newContact)
            }
        }
        return contacts
    }
}
