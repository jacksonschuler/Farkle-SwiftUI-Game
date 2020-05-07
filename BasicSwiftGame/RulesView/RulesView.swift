import SwiftUI

struct RulesView: View {
    var body: some View {
        VStack {
            RulesHeaderView()
            RulesListView()
            RuleScoringHeaderView()
            RuleScoringListView()
            Spacer()
        }
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
