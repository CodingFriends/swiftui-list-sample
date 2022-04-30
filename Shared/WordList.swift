//
//  WordList.swift
//  SelectionTest
//
//  Created by Gabriel Reimers on 30.04.22.
//

import SwiftUI

struct WordList: View {
    
    @EnvironmentObject var store: Store
    @State var selectedWord: RankedWord? = nil

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
    }
}

struct WordList_Previews: PreviewProvider {
    
    static var previews: some View {
        WordList()
    }
}
