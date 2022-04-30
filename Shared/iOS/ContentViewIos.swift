import SwiftUI


struct ContentView: View {
    
    @State private var sidebarSelection: Int? = 0
    @EnvironmentObject var store: Store
    
    
    var body: some View {
        
        NavigationView {
            List(selection: $sidebarSelection) {
                NavigationLink(destination: WordList()) {
                    Label("List", systemImage: "chart.bar.doc.horizontal")
                }
                
                NavigationLink(destination: Text("Other view")) {
                    Label("Other", systemImage: "chart.bar.doc.horizontal")
                }
            }
            .listStyle(.sidebar)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
