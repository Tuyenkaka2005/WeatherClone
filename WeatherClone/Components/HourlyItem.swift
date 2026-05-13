import SwiftUI

struct HourlyItem: View {
    var forecast: Forecast
    
    var body: some View {
        VStack(spacing: AppSpacing.small) {
            Text(forecast.timeOrDay)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
            
            Image(systemName: forecast.icon)
                .font(.title2)
                .foregroundColor(.yellow)
                // Symbol rendering native của iOS giúp icon có màu sắc chuẩn xác
                .symbolRenderingMode(.multicolor)
                .frame(height: 32)
            
            Text("\(forecast.temperature)°")
                .font(.headline)
                .foregroundColor(.white)
        }
        .padding(.horizontal, AppSpacing.small)
        .padding(.vertical, AppSpacing.medium)
    }
}
