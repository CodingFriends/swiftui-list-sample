import SwiftUI

@main
struct SelectionTestApp: App {
    @StateObject private var store = Store()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
            
        }
    }
}
