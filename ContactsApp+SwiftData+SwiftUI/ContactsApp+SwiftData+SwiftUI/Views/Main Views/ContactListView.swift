//
//  ContactListView.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 24/11/26.
//

import SwiftUI
import SwiftData
struct ContactListView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    @Query(sort: \Contact.firstName, order: .forward)
    private var contactsByFirstName: [Contact]
    
    @Query(sort: \Contact.lastName, order: .forward)
    private var contactsByLastName: [Contact]
    
    @Query(sort: \Contact.phoneNo, order: .forward)
    private var contactsByPhoneNo: [Contact]
    
    @State private var searchText: String = ""
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search Contacts", text: $searchText).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                Spacer()
            }.navigationTitle("Contacts")
        }
        
    }
}

#Preview {
    ContactListView().modelContainer(for: Contact.self)
}
