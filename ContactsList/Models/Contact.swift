//
//  Contact.swift
//  ContactsList
//
//  Created by Paul Makey on 16.12.23.
//

struct Contact {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getContacts() -> [Contact] {
        let dataStore = DataStore()
        var contacts: [Contact] = []
        
        while contacts.count < 15 { // Можно не хардкодить, а взять, например, dataStore.names.count
            
            let name = dataStore.names.randomElement() ?? ""
            let surname = dataStore.surnames.randomElement() ?? ""
            let phone = dataStore.phoneNumbers.randomElement() ?? ""
            let email = dataStore.emails.randomElement() ?? ""
            
            let newContact = Contact(
                name: name,
                surname: surname,
                phone: phone,
                email: email
            )
            
            if !contacts.contains(newContact) {
                contacts.append(newContact)
            }
        }
        return contacts
    }
}

// MARK: - Equatable
extension Contact: Equatable {
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.name == rhs.name ||
            lhs.surname == rhs.surname ||
            lhs.phone == rhs.phone ||
            lhs.email == rhs.email
    }
}
