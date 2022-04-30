import SwiftUI

@main
struct SelectionTestApp: App {
    @StateObject private var store = Store()

    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            ContentView()
                .environmentObject(store)
            #else
            ContentView()
                .environmentObject(store)
            #endif
        }
    }
}
