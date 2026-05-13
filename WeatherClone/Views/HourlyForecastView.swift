import SwiftUI

struct HourlyForecastView: View {
    var forecasts: [Forecast]
    
    var body: some View {
        WeatherCardView {
            VStack(alignment: .leading, spacing: AppSpacing.small) {
                HStack {
                    Image(systemName: "clock")
                    Text("HOURLY FORECAST")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .foregroundColor(.white.opacity(0.6))
                
                Divider().background(.white.opacity(0.2))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: AppSpacing.small) {
                        ForEach(forecasts) { item in
                            HourlyItem(forecast: item)
                        }
                    }
                }
            }
        }
    }
}
