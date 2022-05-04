//
//  WordList.swift
//  SelectionTest
//
//  Created by Gabriel Reimers on 30.04.22.
//

import SwiftUI
import os

struct WordListOptimized: View {
    
    @EnvironmentObject var store: Store
    @State var selectedWord: RankedWord? = nil
    
    // The row height relative to the body size
    @ScaledMetric(relativeTo: .body) var scaledRowHeight: CGFloat = 20
    
    // Timestamp set on init to measure view rendering time
    private var initTime: TimeInterval
    
    init() {
        Logger().notice("WordListOptimized > Init")
        initTime = Date().timeIntervalSinceReferenceDate
    }
    
    var body: some View {
        
        // GeometryReader is used to get the view width for the fixed
        // frame of the rows
        // The downside is that the GeometryReader makes resizing the window
        // laggy
        GeometryReader { geometry in
            
            List(selection: $selectedWord) {
                ForEach(store.words) { word in
                    HStack {
                        Text("\(word.rank)")
                        Text(word.word)
                    }
                    .tag(word)
                    // specifying the size speeds up rendering significantly
                    // however, this only works if both, height and width are fixed
                    // so we need to get the width from the geometry
                    .frame(width: geometry.size.width, height: scaledRowHeight, alignment: .leading)
                }
            }
        }
        .onAppear {
            Logger().notice("WordListOptimized > OnAppear > took \(Date().timeIntervalSinceReferenceDate - initTime) s")
            
        }
    }
        
}

struct WordListOptimized_Previews: PreviewProvider {
    
    static var previews: some View {
        WordList()
    }
}
