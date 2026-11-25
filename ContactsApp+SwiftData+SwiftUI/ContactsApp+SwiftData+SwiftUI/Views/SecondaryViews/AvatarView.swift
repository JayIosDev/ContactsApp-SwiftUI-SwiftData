//
//  AvatarView.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 25/11/26.
//

import SwiftUI

struct AvatarView: View {
    let contact: Contact
    var body: some View {
        if let avatar = contact.avatarImage ,let image = UIImage(data: avatar) {
            Image(uiImage: image).resizable().scaledToFill().frame(width: 50, height: 50).clipShape(Circle()).overlay {
                Circle().stroke(.gray, lineWidth: 1)
            }.padding(.trailing, 10)
        }else {
            Circle().fill(.blue.opacity(0.2)).frame(width: 50, height: 50).overlay {
                Text(contact.fullName.uppercased().prefix(1)).font(.largeTitle).foregroundStyle(.blue).bold()
            }.padding(.trailing, 10)
        }
    }
}

#Preview {
    AvatarView(contact: .init(firstName: "John",lastName: "Doe", email: "Jay@gmail.com", phoneNo: "1234567890", address: "123 Main St", avatarImage: nil))
}
