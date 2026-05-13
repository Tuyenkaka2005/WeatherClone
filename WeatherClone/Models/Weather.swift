import Foundation

struct Weather {
    var city: String
    var temperature: Int
    var condition: String
    var high: Int
    var low: Int
    var icon: String
    
    static let mock = Weather(
        city: "Ha Noi",
        temperature: 28,
        condition: "Mostly Sunny",
        high: 32,
        low: 24,
        icon: "sun.max.fill"
    )
}
