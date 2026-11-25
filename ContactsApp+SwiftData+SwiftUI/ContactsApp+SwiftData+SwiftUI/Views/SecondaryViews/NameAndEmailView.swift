//
//  NameAndEmailView.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 25/11/26.
//

import SwiftUI

struct NameAndEmailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            Text(contact.fullName).font(.headline)
            Text(contact.email).font(.subheadline)
        }

    }
} 

#Preview {
    NameAndEmailView(contact: .init(firstName: "John",lastName: "Doe", email: "Jay@gmail.com", phoneNo: "1234567890", address: "123 Main St", avatarImage: nil))
}
