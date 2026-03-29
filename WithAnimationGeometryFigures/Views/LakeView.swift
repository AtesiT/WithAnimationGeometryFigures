import SwiftUI

struct LakeView: View {
    var body: some View {
        Path { path in
            path.addArc(
                center: CGPoint(x: 100, y: 100),
                radius: 50,
                startAngle: .degrees(180),
                endAngle: .degrees(0),
                clockwise: true
            )
            path.addArc(
                center: CGPoint(x: 100, y: 100),
                radius: 50,
                startAngle: .degrees(180),
                endAngle: .zero,
                clockwise: false
            )
        }
        .fill(Color(red: 0/255, green: 170/255, blue: 255/255))
    }
}

#Preview {
    LakeView()
        .frame(width: 200, height: 200)
}
