import SwiftUI

struct WeeklyForecastView: View {
    var forecasts: [Forecast]
    
    var body: some View {
        WeatherCardView {
            VStack(alignment: .leading, spacing: AppSpacing.small) {
                HStack {
                    Image(systemName: "calendar")
                    Text("7-DAY FORECAST")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .foregroundColor(.white.opacity(0.6))
                
                Divider().background(.white.opacity(0.2))
                
                VStack(spacing: 0) {
                    ForEach(forecasts) { item in
                        ForecastRow(forecast: item)
                        if item.id != forecasts.last?.id {
                            Divider().background(.white.opacity(0.1))
                        }
                    }
                }
            }
        }
    }
}
