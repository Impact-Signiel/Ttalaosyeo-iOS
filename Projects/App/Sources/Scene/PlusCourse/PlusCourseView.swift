import SwiftUI

struct PlusCourseView: View {
    @State var input: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TourName()
                ProgressDate()
                Categorie()
                MakeButton()
            }
            .padding(.horizontal, 40)
        }
    }
}

struct MakeButton: View {
    var body: some View {
        HStack {
            Text("투어 만들기")
                .TtalaosyeoFont(.titleSmall, color: .Black.black100)
        }
        .frame(width: 335, height: 64)
        .background(Color.Primary.Primary900)
        .cornerRadius(8)
    }
}

#Preview {
    PlusCourseView()
}
