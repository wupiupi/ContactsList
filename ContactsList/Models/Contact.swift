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
    
    static func getPersons() -> [Contact] {
        let dataStore = DataStore()
        var persons: [Contact] = []
        
        while persons.count < 10 {
            
            // Алексей, здравствуйте =) Я помню, что вы показывали способ, как можно
            // избежать "пирамиды погибели", исходя от обратного. Я пытался найти,
            // но не смог. Но на месячных каникулах планирую пересмотреть все уроки
            // начиная с первого модуля и законспектировать их! :)
            
            let name = dataStore.names.randomElement() ?? "No_name"
            let surname = dataStore.surnames.randomElement() ?? "No_surname"
            let email = dataStore.emails.randomElement() ?? "No_email"
            let phone = dataStore.phoneNumbers.randomElement() ?? "No_phone"
            
            let newPerson = Contact(
                name: name,
                surname: surname,
                phone: phone,
                email: email
            )
            
            if !persons.contains(where: { $0 == newPerson }) {
                persons.append(newPerson)
            }
        }
        return persons
    }
}
