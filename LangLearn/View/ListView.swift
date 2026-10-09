import SwiftUI

struct ListView: View {
    @State var searchText: String = ""
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 10) {
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15)
                        TextField("Search", text: $searchText)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                    CardItem()
                    CardItem()
                    CardItem()
                    CardItem()
                }
                .padding(.horizontal, 15)
                .padding(.top, 10)
                .frame(maxWidth: .infinity)
            }

            Button {
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.green)
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 30)
        }
    }
}

struct CardItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4) {
                Text("TR").font(.system(size: 14, weight: .bold))
                Text("Araba").font(.system(size: 24, weight: .black))
                Text("Машина")
            }
            Divider()
            VStack(alignment: .leading, spacing: 8) {
                Text("Примечание")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.secondary)
                Text("Lorem ipsum, dolor sit amet, consectetur adipisiciag elit.")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
