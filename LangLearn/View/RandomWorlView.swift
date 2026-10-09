import SwiftUI

struct RandomWorlView: View {
    @State var isShowTranslate: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack(spacing: 10) {
                    VStack(alignment: .leading) {
                        Text("Tr").font(
                            .system(size: 14, weight: Font.Weight.bold)
                        )
                        Text("Araba").font(
                            .system(size: 36, weight: Font.Weight.bold)
                        )
                    }
                    ZStack {
                        Text("Машина").font(.system(size: 24, weight: .medium))
                            .opacity(isShowTranslate ? 1 : 0)
                        Button {
                            withAnimation {
                                isShowTranslate.toggle()
                            }
                        } label: {
                            Text("Show translate").padding(.vertical, 10)
                                .padding(.horizontal, 60).background(
                                    Color.green
                                ).foregroundColor(.white).clipShape(Capsule())
                        }.opacity(isShowTranslate ? 0 : 1)
                    }
                }
                Spacer()
                Button {

                } label: {
                    HStack {
                        Text("Next")
                        Image(systemName: "chevron.right")
                    }.foregroundColor(Color.green)
                }
                Rectangle().frame(height: 20).opacity(0)
            }.frame(maxWidth: .infinity)
        }
    }
}

struct RadomWorldView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
