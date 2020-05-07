import SwiftUI


struct InGameDiceView: View {
    @EnvironmentObject var currGame: Game

    var body: some View {
        VStack {
            VStack{
                HStack{
                    InGameSingleDiceView(index: 0)
                    InGameSingleDiceView(index: 1)
                }
                HStack{
                    InGameSingleDiceView(index: 2)
                    InGameSingleDiceView(index: 3)
                }
                HStack{
                    InGameSingleDiceView(index: 4)
                    InGameSingleDiceView(index: 5)
                }
            }
            Button(action: {
//                self.currGame.DiceList[0].update(value: Int.random(in: 1...6))
                self.currGame.flag = Int.random(in: 1...6)
                self.currGame.DiceList[0].result = Int.random(in: 1...6)
                self.currGame.DiceList[1].result = Int.random(in: 1...6)
                self.currGame.DiceList[2].result = Int.random(in: 1...6)
                self.currGame.DiceList[3].result = Int.random(in: 1...6)
                self.currGame.DiceList[4].result = Int.random(in: 1...6)
                self.currGame.DiceList[5].result = Int.random(in: 1...6)
            }) {
                Text("Roll Dice")
            }
        }
    }
}

struct InGameDiceView_Previews: PreviewProvider {
    static var previews: some View {
        InGameDiceView().environmentObject(Game())
    }
}
