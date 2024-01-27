import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Text("1")
                }
            Text("2")
                .tabItem {
                    Text("2")
                }
            Text("3")
                .tabItem {
                    Text("3")
                }
            Text("4")
                .tabItem {
                    Text("4")
                }
        }
    }
}
