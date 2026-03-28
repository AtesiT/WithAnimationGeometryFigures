import SwiftUI

struct TreeView: View {
    var body: some View {
        ForEach(0..<3) { iteration in
            Path { path in
                path.move(to: CGPoint(x: 25, y: 0))
                path.addLine(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 0, y: 50))
                path.closeSubpath()
            }
            .fill (
                Color(
                    red: 50/255,
                    green: 110/255,
                    blue: 50/255
                )
            )
        }
        Path { path in
            path.move(to: CGPoint(x: 15, y: 0))
            path.addLine(to: CGPoint(x: 35, y: 0))
            path.addLine(to: CGPoint(x: 35, y: 50))
            path.addLine(to: CGPoint(x: 15, y: 50))
        }
        .fill(
            Color(.brown)
        )
    }
}

#Preview {
    TreeView()
        .frame(width: 50, height: 50)
}
