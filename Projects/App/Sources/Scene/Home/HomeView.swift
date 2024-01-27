import SwiftUI

struct HomeView: View {
    @Environment(\.tabbarHidden) var tabbarHidden
    @State var navigation: Bool = false
    var body: some View {
        HStack {
            Button {
                navigation = true
            } label: {
                Text("Home")
            }
        }
        .onChange(of: navigation) {
            tabbarHidden.wrappedValue = $0
        }
        .navigate(to: MyPageView(), when: $navigation)
    }
}

#Preview {
    HomeView()
}
