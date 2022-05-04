//
//  WordList.swift
//  SelectionTest
//
//  Created by Gabriel Reimers on 30.04.22.
//

import SwiftUI
import os


struct WordTable: View {
    
    @EnvironmentObject var store: Store
    @State var selectedWord: RankedWord.ID? = nil
    
    // Timestamp set on init to measure view rendering time
    private var initTime: TimeInterval
    
    init() {
        Logger().notice("WordTable > Init")
        initTime = Date().timeIntervalSinceReferenceDate
    }
    
    var body: some View {
        
        // the header bar can not be hidden but moved out of screen
        // however, using GeometryReader has a severe performance penalty
        // when resizing the window
        
//        GeometryReader { geometry in
            Table(store.words, selection: $selectedWord) {
                TableColumn("Word") { word in
                    VStack(alignment: .center) {
                        Text("\(word.rank)")
                        Text(word.word)
                    }
                    .frame(maxWidth: .infinity)
                }
                
            }
//            .frame(height: geometry.size.height + 60)
//            .position(x: geometry.size.width / 2, y: geometry.size.height / 2 - 30)
            
//        }
        
            .onAppear {
                Logger().notice("WordTable > OnAppear > took \(Date().timeIntervalSinceReferenceDate - initTime) s")
                
            }
    }
}

struct WordTable_Previews: PreviewProvider {
    
    static var previews: some View {
        WordList()
    }
}
