import SwiftUI
import SwiftData

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContactListView().modelContainer(for: Contact.self)
        }
        
    }
}
