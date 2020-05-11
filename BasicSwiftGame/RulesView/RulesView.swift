import SwiftUI

struct RulesView: View {
    var body: some View {
        VStack {
            RulesHeaderView()
            RulesListView()
            RuleScoringHeaderView()
            RuleScoringListView()
        }
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
