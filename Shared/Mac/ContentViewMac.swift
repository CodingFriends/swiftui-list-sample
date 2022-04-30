import SwiftUI


struct ContentView: View {
    
    @State private var sidebarSelection: Int? = 0
    @EnvironmentObject var store: Store
    
    
    var body: some View {
        
        NavigationView {
            Sidebar(selection: $sidebarSelection)
            
            if (sidebarSelection == 0) {
                WordList()
                
            } else {
                Text("Switch between this and the list view and you will see that the list view takes a long time to load")
            }
        }
        .navigationTitle("Most Freqent English Words")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
