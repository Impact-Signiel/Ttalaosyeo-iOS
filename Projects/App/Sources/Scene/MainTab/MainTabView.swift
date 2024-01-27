import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                }
            RecommendView()
                .tabItem {
                    Text("Recommend")
                }
            MyPageView()
                .tabItem {
                    Text("MyPage")
                }
            PlusCourseView()
                .tabItem {
                    Text("PlusCourse")
                }
        }
    }
}
