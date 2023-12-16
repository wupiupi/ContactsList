//
//  ContactListViewController.swift
//  ContactsList
//
//  Created by Paul Makey on 16.12.23.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let contacts = Contact.getContacts()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        contactInfoVC.contact = contacts[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name) \(contact.surname)"
        
        cell.contentConfiguration = content
        return cell
    }
}
