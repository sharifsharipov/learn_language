import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            ListView()
                .tag(1)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }
            RandomWorlView()
                .tag(2)
                .tabItem {
                    Image(systemName: "textformat.abc")
                    Text("Words")
                }
            LinksView()
                .tag(3)
                .tabItem {
                    Image(systemName: "link")
                    Text("Links")
                }
        }
    }
}

#Preview {
    ContentView()
}
