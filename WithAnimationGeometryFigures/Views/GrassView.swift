import SwiftUI

struct GrassView: View {
    var body: some View {
        Path { path in
            path.addArc(
                center: CGPoint(x: 0, y: 0),
                radius: 50,
                startAngle: .degrees(60),
                endAngle: .degrees(0),
                clockwise: true
            )
        }
        .fill(Color(red: 50/255, green: 110/255, blue: 50/255))
        .frame(width: 50, height: 50)
    }
}

#Preview {
    GrassView()
        .frame(width: 50, height: 50)
}
