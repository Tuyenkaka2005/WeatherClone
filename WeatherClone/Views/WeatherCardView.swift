import SwiftUI

struct WeatherCardView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(AppSpacing.medium)
            .background(.ultraThinMaterial) // Chuẩn Glassmorphism iOS
            .environment(\.colorScheme, .dark) // Đảm bảo text hiển thị rõ trên nền tối
            .cornerRadius(24)
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.white.opacity(0.2), lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 5)
    }
}
