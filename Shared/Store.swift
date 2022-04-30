import Foundation

struct RankedWord: Identifiable, Hashable {
    var id = UUID()
    var word: String
    var rank: Int
}

final class Store: ObservableObject {
    @Published var words: [RankedWord] = []
    

    init() {
        let wordsFile = Bundle.main.url(forResource: "english_top10k", withExtension: ".txt")!
        
        do {
            let data = try String(contentsOf: wordsFile)
            let lines = data.components(separatedBy: .newlines)
            for (rank, word) in lines.enumerated() {
                let newWord = RankedWord(word: word, rank: rank)
                words.append(newWord)
            }
        } catch {
            print(error)
        }
    }

    
}
