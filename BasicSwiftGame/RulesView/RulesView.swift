import SwiftUI

struct RulesView: View {
    var body: some View {
        ScrollView([.vertical], showsIndicators: true){
            VStack {
                RulesHeaderView()
                RulesListView()
                RuleScoringHeaderView()
                RuleScoringListView()
            }
        }
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.all))
        .navigationBarHidden(false)
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
