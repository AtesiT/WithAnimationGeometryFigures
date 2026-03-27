import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color(
                    red: 135/255,
                    green: 205/255,
                    blue: 255/255,
                )
                Color(
                    red: 0/255,
                    green: 150/255,
                    blue: 0/255,
                )
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
