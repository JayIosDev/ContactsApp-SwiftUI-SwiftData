//
//  Contact.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 24/11/26.
//
import Foundation
import SwiftData

@Model
class Contact: Identifiable {
    // Required Fields
    var firstName: String
    var lastName:String
    var email: String
    
    // Additional Fields
    var phoneNo:String = ""
    var address:String = ""
    
    @Attribute(.externalStorage)
    var avatarImage: Data?
    
    //Full name
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    // If all input strings are empty
    func isEmpty() -> Bool {
        return firstName.isEmpty && lastName.isEmpty && email.isEmpty && phoneNo.isEmpty && address.isEmpty
    }
    
    init(
        firstName: String = "",
        lastName: String = "",
        email: String = "",
        phoneNo: String = "",
        address: String = "",
        avatarImage: Data? = nil
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phoneNo = phoneNo
        self.address = address
        self.avatarImage = avatarImage
    }
}
