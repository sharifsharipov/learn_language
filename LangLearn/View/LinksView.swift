import SwiftUI

struct LinksView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(spacing: 10) {
                    LinkItem(text:"Урок по граматике языкa")
                    LinkItem(text:"Hello World")
                    LinkItem(text: "Привет мир")
                }
            }
            .frame(maxWidth: .infinity).padding(.horizontal, 15)
            Button {
                // action
            } label: {
                ZStack {
                    Circle().frame(width: 60, height: 60).foregroundColor(
                        .green
                    )
                    Image(systemName: "plus").resizable().frame(
                        width: 20,
                        height: 20
                    ).foregroundColor(.white)
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 30)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LinkItem: View {
    var text : String
    var body: some View {
        HStack {
            HStack(spacing: 8) {
                Image(systemName: "link")
                Text(text).font(.system(size: 16))
            }
            Spacer()
            Button {

            } label: {
                Image(systemName: "xmark").foregroundColor(.black)
            }
        }.padding(20).background(Color.gray.opacity(0.3)).cornerRadius(20)
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
