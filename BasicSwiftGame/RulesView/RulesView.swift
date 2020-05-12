import SwiftUI

struct RulesView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var BackBtn: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Back")
                .font(.body)
                .padding(5)
                .background(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255))
                .cornerRadius(20)
                .foregroundColor(Color(red: 221 / 255, green: 64 / 255, blue: 58 / 255))
                .padding(5)
                .overlay(
                   RoundedRectangle(cornerRadius: 20)
                       .stroke(Color(red: 255 / 255, green: 252 / 255, blue: 232 / 255), lineWidth: 5)
                )
        }
    }

    var body: some View {
        ScrollView([.vertical], showsIndicators: true){
            VStack {
                RulesHeaderView()
                RulesListView()
                RuleScoringHeaderView()
                RuleScoringListView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackBtn)
        .background(Color(red: 62 / 255, green: 54 / 255, blue: 63 / 255).edgesIgnoringSafeArea(.all))
        .navigationBarHidden(false)
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
