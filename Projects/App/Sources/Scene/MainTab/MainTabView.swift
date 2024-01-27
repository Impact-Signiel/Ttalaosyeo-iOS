import SwiftUI

struct MainTabView: View {
    @State var selection: TabFlow = .home
    @State var tabbarHidden = false

    // swiftlint: disable large_tuple
    var tabItem: [(Image, String, TabFlow)] = [
        (.init(.home), "홈", .home),
        (.init(.recommend), "추천", .recommend),
        (.init(.user), "프로필", .mypage),
        (.init(.plus), "코스 생성", .plusCourse)
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
                            Color.white
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
            VStack(spacing: 4) {
                image
                    .renderingMode(.template)
                    .foregroundColor(
                        tag == selection
                        ? .Primary.Primary900
                        : .Black.black400
                    )
                Text(title)
                    .TtalaosyeoFont(.caption)
                    .foregroundColor(
                        tag == selection
                        ? .Primary.Primary900
                        : .Black.black400
                    )
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
