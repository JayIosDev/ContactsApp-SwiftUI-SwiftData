//
//  ContactRowItemView.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 24/11/26.
//
import SwiftUI

struct ContactRowItemView: View {
    let contact: Contact
    let showMore:Bool
    
    var showAddressPhoneButton: Bool {
        !contact.phoneNo.isEmpty || !contact.address.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            HStack {
                
                AvatarView(contact: contact)
                NameAndEmailView(contact: contact)
                
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            if showMore {
                VStack(alignment: .leading, spacing: 10) {
                    if !contact.phoneNo.isEmpty {
                        HStack {
                            Image(systemName: "phone.fill").foregroundStyle(.blue)
                            
                            Text(contact.phoneNo).foregroundStyle(.primary)
                        }
                    }
                    
                    if !contact.address.isEmpty {
                        HStack {
                            Image(systemName: "house.fill").foregroundStyle(.blue)
                            
                            Text(contact.email).foregroundStyle(.primary)
                        }
                    }
                }
            }
        }.padding()
         
    }
}

#Preview {
    ContactRowItemView(contact: .init(firstName: "John",lastName: "Doe", email: "Jay@gmail.com", phoneNo: "1234567890", address: "123 Main St", avatarImage: nil), showMore: true)
}
