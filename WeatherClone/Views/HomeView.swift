import SwiftUI

struct HomeView: View {
    @State private var weather = Weather.mock
    @State private var animateIcon = false
    
    var body: some View {
        ZStack {
            // 1. Background Layer
            AnimatedBackground()
            
            // 2. Content Layer
            ScrollView(showsIndicators: false) {
                VStack(spacing: AppSpacing.large) {
                    
                    // Header
                    WeatherHeaderView(weather: weather)
                        .padding(.top, AppSpacing.medium)
                    
                    // Current Weather Section (Với Animation)
                    VStack(spacing: AppSpacing.small) {
                        Image(systemName: weather.icon)
                            .symbolRenderingMode(.multicolor)
                            .font(.system(size: 90))
                            // Hiệu ứng trôi nổi nhẹ nhàng
                            .offset(y: animateIcon ? -8 : 8)
                            .animation(
                                .easeInOut(duration: 2.5).repeatForever(autoreverses: true),
                                value: animateIcon
                            )
                            .onAppear {
                                animateIcon = true
                            }
                        
                        Text("\(weather.temperature)°")
                            .font(.system(size: 80, weight: .thin, design: .rounded))
                            .foregroundColor(.white)
                        
                        HStack(spacing: AppSpacing.medium) {
                            Text("H: \(weather.high)°")
                            Text("L: \(weather.low)°")
                        }
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.8))
                    }
                    .padding(.vertical, AppSpacing.small)
                    
                    // Hourly Forecast Card
                    HourlyForecastView(forecasts: Forecast.hourlyMock)
                    
                    // Weekly Forecast Card
                    WeeklyForecastView(forecasts: Forecast.weeklyMock)
                    
                }
                .padding(.horizontal, AppSpacing.medium)
                // Spacer để cuộn mượt mà không bị lẹm đáy
                .padding(.bottom, 40)
            }
        }
        // Responsive Design: Tự động căn giữa nội dung đẹp mắt trên cả iPad
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// Preview hỗ trợ kiểm tra Dark Mode và Responsive
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
