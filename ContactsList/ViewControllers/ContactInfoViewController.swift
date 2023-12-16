//
//  PersonInfoViewController.swift
//  ContactsList
//
//  Created by Paul Makey on 16.12.23.
//

import UIKit

final class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

private extension ContactInfoViewController {
    func setupUI() {
        title = "\(contact.name) \(contact.surname)"
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
