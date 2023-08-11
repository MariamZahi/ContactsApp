//
//  Contact.swift
//  ContactsApp
//
//  Created by Waqar on 2023-08-11.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: String
}

