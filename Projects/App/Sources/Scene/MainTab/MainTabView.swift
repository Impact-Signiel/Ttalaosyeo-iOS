import SwiftUI

struct MainTabView: View {
    @State var selection: TabFlow = .home
    @State var tabbarHidden = false

    // swiftlint: disable large_tuple
    var tabItem: [(Image, String, TabFlow)] = [
        (.init(uiImage: .add), "홈", .home),
        (.init(uiImage: .add), "북마크", .recommend),
        (.init(uiImage: .add), "마이페이지", .mypage),
        (.init(uiImage: .add), "메뉴", .plusCourse)
    ]
    // swiftlint: enable large_tuple

    var body: some View {
        ZStack {
            TabView(selection: $selection) {
                HomeView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.home)

                RecommendView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.recommend)

                MyPageView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.mypage)

                PlusCourseView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.plusCourse)
            }
            .environment(\.tabbarHidden, $tabbarHidden)

            if !tabbarHidden {
                VStack {
                    Spacer()

                    tabbarView()
                        .background {
                            Color.black
                                .opacity(0.1)
                                .cornerRadius(10, corners: [.topLeft, .topRight])
                                .ignoresSafeArea()
                        }
                        .environment(\.selectionTabbKey, $selection)
                }
            }
        }
        .onChange(of: tabbarHidden) { _ in
            UITabBar.hideTabBar()
        }
        .environment(\.selectionTabbKey, $selection)
    }

    @ViewBuilder
    func tabbarView() -> some View {
        HStack {
            Spacer()

            ForEach(tabItem, id: \.1) { image, title, tag in
                tabItemView(image: image, title: title, tag: tag)
                    .frame(width: 56, height: 60)

                Spacer()
            }
        }
    }

    @ViewBuilder
    func tabItemView(image: Image, title: String, tag: TabFlow) -> some View {
        Button {
            selection = tag
        } label: {
            VStack(spacing: 1) {
                image
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Text(title)
                    .foregroundStyle(.black)
            }
            .padding(.vertical, 18)
        }
    }
}

extension View {
    func toNavigationView() -> any View {
        NavigationView {
            self
        }
        .navigationViewStyle(.stack)
    }
}
