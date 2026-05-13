import SwiftUI

struct WeatherIconMaker: View {
    var body: some View {
        ZStack {
            // Nền vuông đặc (Bắt buộc không bo góc để tránh lỗi Alpha)
            LinearGradient(
                colors: [.blue, .purple, .black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            // Hình ảnh Icon
            ZStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 550, height: 550)
                    .foregroundColor(.yellow)
                    .shadow(color: .orange.opacity(0.6), radius: 40, x: 0, y: 10)
                    .offset(x: 90, y: -90)
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 650, height: 450)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.4), radius: 50, x: 0, y: 20)
                    .offset(x: -40, y: 60)
            }
        }
        // Set đúng kích thước chuẩn 1024x1024
        .frame(width: 1024, height: 1024)
    }
}

#Preview {
    WeatherIconMaker()
        .previewLayout(.sizeThatFits)
}
