import SwiftUI

struct AnimatedBackground: View {
    @State private var startAnimation = false
    
    var body: some View {
        LinearGradient(
            colors: [
                Color.blue.opacity(0.8),
                Color.purple.opacity(0.6),
                Color.black.opacity(0.9)
            ],
            startPoint: startAnimation ? .topLeading : .bottomLeading,
            endPoint: startAnimation ? .bottomTrailing : .topTrailing
        )
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.linear(duration: 8.0).repeatForever(autoreverses: true)) {
                startAnimation.toggle()
            }
        }
    }
}
