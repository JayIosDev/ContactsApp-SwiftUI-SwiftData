//
//  CustomTextField.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 24/11/26.
//

import SwiftUI

struct CustomTextField: View {
    let title:String
    let hint: String
    @Binding var value: String
    var onChange: () -> ()
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title).font(.caption2)
            
            TextField(hint, text: $value).padding(.horizontal, 15).padding(.vertical, 12).autocorrectionDisabled(true).background(RoundedRectangle(cornerRadius: 10).stroke(isFocused ? .blue : .gray.opacity(0.5), lineWidth: 1.5)).focused($isFocused)
            
        }.
    }
}

#Preview {
    CustomTextField(title: "First Name", hint: "Enter first name", value: .constant("Name"), onChange: {})
}
