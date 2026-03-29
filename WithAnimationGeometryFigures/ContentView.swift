import SwiftUI

struct ContentView: View {
    @State private var startAnimation = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color(red: 135/255, green: 205/255, blue: 255/255)
                Color(red: 0/255, green: 150/255, blue: 0/255)
            }
            .ignoresSafeArea()
            CloudView()
                .position(x: startAnimation ? 200 : 400, y: 350)
                .animation(
                    .spring(
                        duration: 0.55,
                        bounce: 0.45,
                        blendDuration: 0
                    ),
                    value: startAnimation
                )
            CloudView()
                .position(x: startAnimation ? 300 : 450, y: 850)
                .rotationEffect(.degrees(180))
                .animation(.default.speed(0.5).delay(0.5), value: startAnimation)
            SunView()
                .position(x: 400, y: startAnimation ? 0 : -200)
                .animation(.easeInOut(duration: 0.7), value: startAnimation)
            ZStack {
                //  Размещаем элементы в одном Z-пространстве
                //  ID - позволяет идентифицировать каждый из элементов
                ForEach(1...5, id: \.self) { iteration in
                    TreeView()
                        .position(x: 30 * CGFloat(iteration) * 2.25, y: 400)
                }
            }
            ZStack {
                ForEach(1...15, id: \.self) { iteration in
                    GrassView()
                        .position(x: 23 * CGFloat(iteration), y: 600)
                }
            }
            LakeView()
                .position(x: 300, y: 1000)
        }
        .onTapGesture {
            startAnimation.toggle()
        }
    }
}

#Preview {
    ContentView()
}
