import SwiftUI

struct SunView: View {
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.yellow, .yellow]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    SunView()
}
