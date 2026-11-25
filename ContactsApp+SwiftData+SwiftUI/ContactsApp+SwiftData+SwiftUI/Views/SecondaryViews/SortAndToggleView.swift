//
//  SortAndToggleView.swift
//  ContactsApp+SwiftData+SwiftUI
//
//  Created by Jayaram G on 24/11/26.
//

import SwiftUI

struct SortAndToggleView: View {
    @Binding var selectedSortOrder: SortOrder
    @Binding var isSortOrderInverse: Bool
    
    var degrees: CGFloat {
        isSortOrderInverse ? 180 : 0
    }
    var body: some View {
        
        HStack {
            Picker("Sort By", selection: $selectedSortOrder) {
                Text("First Name").tag(SortOrder.byFirstName)
                Text("Last Name").tag(SortOrder.byLastName)
                Text("Phone Number").tag(SortOrder.byPhoneNo)
            }.pickerStyle(SegmentedPickerStyle())
            
            Image(systemName: "arrowshape.down.fill").foregroundStyle(.blue).rotationEffect(.degrees(degrees)).animation(.spring, value: isSortOrderInverse).onTapGesture {
                isSortOrderInverse.toggle()
            }
        }.padding()
    }
}

#Preview {
    SortAndToggleView(selectedSortOrder: .constant(.byFirstName), isSortOrderInverse: .constant(true))
}
