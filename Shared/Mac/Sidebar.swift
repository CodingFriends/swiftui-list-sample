import SwiftUI

struct Sidebar: View {
    @Binding var selection: Int?

    var body: some View {
        List(selection: $selection) {
            
            Label("List", systemImage: "chart.bar.doc.horizontal")
                    .tag(0)
            
            Label("Table", systemImage: "chart.bar.doc.horizontal")
                .tag(1)
            
            Label("List Optimized", systemImage: "chart.bar.doc.horizontal")
                .tag(2)
                
            Label("Other", systemImage: "chart.bar.doc.horizontal")
                .tag(3)

        }
        .frame(minWidth: 250)
    }
}
