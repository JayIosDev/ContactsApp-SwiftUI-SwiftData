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
    
    @State private var selectedSortOrder: SortOrder = .byFirstName
    @State private var isSortOrderInverse: Bool = false
    
    @State private var isAdvancedShown: Bool = false
    
    var sortedContacts: [Contact] {
        var baseContacts: [Contact]
        switch selectedSortOrder {
        case .byFirstName:
            baseContacts = contactsByFirstName
        case .byLastName:
            baseContacts = contactsByLastName
        case .byPhoneNo:
            baseContacts = contactsByPhoneNo
        }
        return isSortOrderInverse ? baseContacts.reversed() : baseContacts
    }
    
    var filteredContacts: [Contact] {
        sortedContacts
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search Contacts", text: $searchText).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                SortAndToggleView(selectedSortOrder: $selectedSortOrder, isSortOrderInverse: $isSortOrderInverse)
                if isAdvancedShown {
                    Text("TODO: Filter Picker View")
                }
                
                List {
                    ForEach(filteredContacts) { contact in
                        
                        
                    }
                }
            }.navigationTitle("Contacts")
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button {
                            isAdvancedShown.toggle()
                            if !isAdvancedShown {
                                selectedSortOrder = .byFirstName
                            }
                        } label: {
                            Label("Advanced", systemImage: isAdvancedShown ? "wand.and.stars" : "wand.and.stars.inverse")
                        }

                    }
                }
        }
        
    }
}

#Preview {
    ContactListView().modelContainer(for: Contact.self)
}
