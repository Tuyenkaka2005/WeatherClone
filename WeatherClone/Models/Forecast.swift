import Foundation

struct Forecast: Identifiable {
    let id = UUID()
    var timeOrDay: String
    var temperature: Int
    var icon: String
    
    // Dữ liệu mẫu cho Hourly
    static let hourlyMock: [Forecast] = [
        Forecast(timeOrDay: "Now", temperature: 28, icon: "sun.max.fill"),
        Forecast(timeOrDay: "12 PM", temperature: 30, icon: "sun.max.fill"),
        Forecast(timeOrDay: "1 PM", temperature: 31, icon: "cloud.sun.fill"),
        Forecast(timeOrDay: "2 PM", temperature: 32, icon: "cloud.sun.fill"),
        Forecast(timeOrDay: "3 PM", temperature: 30, icon: "cloud.sun.bolt.fill"),
        Forecast(timeOrDay: "4 PM", temperature: 29, icon: "cloud.rain.fill")
    ]
    
    // Dữ liệu mẫu cho Weekly
    static let weeklyMock: [Forecast] = [
        Forecast(timeOrDay: "Today", temperature: 28, icon: "sun.max.fill"),
        Forecast(timeOrDay: "Mon", temperature: 29, icon: "cloud.sun.fill"),
        Forecast(timeOrDay: "Tue", temperature: 26, icon: "cloud.rain.fill"),
        Forecast(timeOrDay: "Wed", temperature: 25, icon: "cloud.heavyrain.fill"),
        Forecast(timeOrDay: "Thu", temperature: 27, icon: "cloud.sun.fill"),
        Forecast(timeOrDay: "Fri", temperature: 30, icon: "sun.max.fill"),
        Forecast(timeOrDay: "Sat", temperature: 31, icon: "sun.max.fill")
    ]
}
