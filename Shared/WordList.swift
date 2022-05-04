//
//  WordList.swift
//  SelectionTest
//
//  Created by Gabriel Reimers on 30.04.22.
//

import SwiftUI
import os

struct WordList: View {
    
    @EnvironmentObject var store: Store
    @State var selectedWord: RankedWord? = nil

    // Timestamp set on init to measure view rendering time
    private var initTime: TimeInterval
    
    init() {
        Logger().notice("WordList> Init")
        initTime = Date().timeIntervalSinceReferenceDate
    }
    
    var body: some View {
        List(selection: $selectedWord) {
            ForEach(store.words) { word in
                HStack {
                    Text("\(word.rank)")
                    Text(word.word)
                }
                .tag(word)
            }
        }
        .onAppear {
            Logger().notice("WordList > OnAppear > took \(Date().timeIntervalSinceReferenceDate - initTime) s")
            
        }
    }
}

struct WordList_Previews: PreviewProvider {
    
    static var previews: some View {
        WordList()
    }
}
