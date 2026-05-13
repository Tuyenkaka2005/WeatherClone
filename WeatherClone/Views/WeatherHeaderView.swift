import SwiftUI

struct WeatherHeaderView: View {
    var weather: Weather
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: AppSpacing.tiny) {
                Text(weather.city)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                
                Text(weather.condition)
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.8))
            }
            
            Spacer()
            
            Button(action: {
                // Action tìm kiếm hoặc định vị
            }) {
                Image(systemName: "location.fill")
                    .font(.title2)
                    .padding(AppSpacing.small)
                    .background(.white.opacity(0.2))
                    .clipShape(Circle())
            }
        }
        .foregroundColor(.white)
        .padding(.horizontal, AppSpacing.medium)
    }
}
