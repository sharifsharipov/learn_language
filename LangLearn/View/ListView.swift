import SwiftUI

struct ListView: View {
    @State var searchText: String = ""
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass").resizable().frame(
                            width: 15,
                            height: 15
                        )
                        TextField("Search", text: $searchText)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    //cards
                    VStack(spacing: 10) {
                        CardItem()
                        CardItem()
                        CardItem()
                        CardItem()
                    }
                }
            }

            Button {
                // action
            } label: {
                Image(systemName: "plus")
            }
        }
    }
}

struct CardItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4) {
                Text("TR").font(.system(size: 14, weight: Font.Weight.bold))
                Text("Araba").font(.system(size: 24, weight: .black))
                Text("Машина")
            }
            Divider()
            VStack(alignment: .leading, spacing: 8) {
                Text("Примечание").font(
                    .system(size: 14, weight: Font.Weight.bold)
                ).foregroundColor(.secondary)
                Text(
                    "Lorem ipsum, dolor sit amet, consectetur adipisiciag elit. Quia vel a eveniet explicabo"
                )
            }
        }.frame(maxWidth: .infinity, alignment: .leading).padding(20)
            .background(Color(.systemGray6)).cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
