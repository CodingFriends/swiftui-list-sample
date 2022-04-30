import SwiftUI

struct Sidebar: View {
    @Binding var selection: Int?

    var body: some View {
        List(selection: $selection) {
            
            Label("List", systemImage: "chart.bar.doc.horizontal")
                    .tag(0)
                
            Label("Other", systemImage: "chart.bar.doc.horizontal")
                .tag(1)

        }
        .frame(minWidth: 250)
    }
}
