
import Foundation

class Game: ObservableObject {
//    @Published var DiceList = [Die]()
    @Published var flag: Int = 1
//    @Published var d2: Die = Die.init(id: 1, result: 1)

    @Published var DiceList = [
            Die.init(id: 0, result: 1),
            Die.init(id: 1, result: 1),
            Die.init(id: 2, result: 1),
            Die.init(id: 3, result: 1),
            Die.init(id: 4, result: 1),
            Die.init(id: 5, result: 1)]
}
