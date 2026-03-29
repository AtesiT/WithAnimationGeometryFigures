import SwiftUI

struct TreeView: View {
    var body: some View {
        //  Spacing -5 для того, чтобы убрать "пустые зоны" между зелеными треугольниками
        VStack(spacing: -5) {
            ForEach(0..<3) { iteration in
                Path { path in
                    path.move(to: CGPoint(x: 25, y: 0))
                    path.addLine(to: CGPoint(x: 50, y: 50))
                    path.addLine(to: CGPoint(x: 0, y: 50))
                    path.closeSubpath()
                }
                .fill (Color(red: 50/255, green: 110/255, blue: 50/255))
                //  Указываем размер для каждого элемента
                .frame(width: 50, height: 50)
            }
            //  Используем addRect, чтобы добавить ствол дерева в виде прямоугольника
            Path { path in
                path.addRect(CGRect(x: 15, y: 0, width: 20, height: 40))
            }
            .fill(Color(.brown))
            .frame(width: 50, height: 40)
        }
    }
}

#Preview {
    TreeView()
        .frame(width: 100, height: 100)
}
