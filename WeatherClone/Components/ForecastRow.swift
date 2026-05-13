import SwiftUI

struct ForecastRow: View {
    var forecast: Forecast
    
    var body: some View {
        HStack {
            Text(forecast.timeOrDay)
                .font(.system(size: 18, weight: .medium))
                .frame(width: 100, alignment: .leading)
            
            Spacer()
            
            Image(systemName: forecast.icon)
                .font(.title3)
                .symbolRenderingMode(.multicolor)
            
            Spacer()
            
            // Thanh nhiệt độ giả lập (Visual Indicator)
            RoundedRectangle(cornerRadius: 2)
                .fill(LinearGradient(
                    colors: [.cyan, .yellow, .orange],
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .frame(width: 80, height: 4)
            
            Spacer()
            
            Text("\(forecast.temperature)°")
                .font(.system(size: 18, weight: .semibold))
                .frame(width: 40, alignment: .trailing)
        }
        .foregroundColor(.white)
        .padding(.vertical, AppSpacing.small)
    }
}
