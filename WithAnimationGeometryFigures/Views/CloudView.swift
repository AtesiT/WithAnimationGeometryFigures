import SwiftUI

struct CloudView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 100))
            path.addQuadCurve(
                to: CGPoint(x: 70, y: 100),
                control: CGPoint(x: 45, y: 50)
            )
            path.addQuadCurve(
                to: CGPoint(x: 120, y: 100),
                control: CGPoint(x: 95, y: 50)
            )
            path.addQuadCurve(
                to: CGPoint(x: 170, y: 100),
                control: CGPoint(x: 145, y: 50)
            )
            path.addQuadCurve(
                to: CGPoint(x: 100, y: 150),
                control: CGPoint(x: 160, y: 180)
            )
            path.addQuadCurve(
                to: CGPoint(x: 30, y: 150),
                control: CGPoint(x: 65, y: 170)
            )
            path.addQuadCurve(
                to: CGPoint(x: 20, y: 100),
                control: CGPoint(x: 15, y: 120)
            )
        }
        .fill(
            RadialGradient(
                gradient: Gradient(colors: [.blue,.white]),
                center: .center,
                startRadius: 0,
                endRadius: 100
            )
        )
    }
}

#Preview {
    CloudView()
        .frame(width: 200, height: 200)
}
