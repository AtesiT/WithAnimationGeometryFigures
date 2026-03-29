import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color(red: 135/255, green: 205/255, blue: 255/255)
                Color(red: 0/255, green: 150/255, blue: 0/255)
            }
            .ignoresSafeArea()
            CloudView()
                .position(x: 200, y: 350)
            CloudView()
                .position(x: 300, y: 850)
                .rotationEffect(.degrees(180))
            SunView()
                .position(x: 400, y: 10)
            ZStack {
                //  Размещаем элементы в одном Z-пространстве
                //  ID - позволяет идентифицировать каждый из элементов
                ForEach(1...5, id: \.self) { iteration in
                    TreeView()
                        .position(x: 30 * CGFloat(iteration) * 2.25, y: 400)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
