<img width="210" alt="weather" src="https://github.com/user-attachments/assets/e3131bdc-14cf-4152-ab4c-c098416b7ce0" />

# 🌤️ Weather App UI Clone — iOS SwiftUI Mastery

![iOS](https://img.shields.io/badge/iOS-16.0%2B-blue)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Production--like-orange)
![Glassmorphism](https://img.shields.io/badge/UI-Glassmorphism-brightgreen)

Dự án clone giao diện ứng dụng thời tiết gốc của Apple trên iOS. Hướng tới mục tiêu làm chủ hoàn toàn các kỹ thuật Layout, Glassmorphism, Reusable Component, và Animation trong **SwiftUI**.

---

## 🎯 Mục tiêu dự án
* **Thành thạo SwiftUI Layout:** Kết hợp nhuần nhuyễn `ZStack`, `VStack`, `HStack`, và `Spacer`.
* **Production-like UI:** Ứng dụng thiết kế **Glassmorphism** chuẩn hệ sinh thái iOS bằng `.ultraThinMaterial` thay vì chỉ hạ độ trong suốt đơn thuần.
* **Responsive Design:** Giao diện co giãn và hiển thị tối ưu trên cả kích thước màn hình iPhone và iPad thông qua việc sử dụng linh hoạt các constraints (`maxWidth: .infinity`).
* **Reusable Component:** Tránh triệt để việc lặp lại code (DRY - Don't Repeat Yourself) bằng cách xây dựng các Component dùng chung cho thẻ thời tiết, hàng dự báo.
* **Animation Mastery:** Tích hợp hiệu ứng trôi nổi (Floating animation) và hiệu ứng chuyển đổi dải màu nền mượt mà.

---

## 📱 Trải nghiệm tính năng & UI/UX

* **Dynamic Gradient Background:** Nền ứng dụng tự động thay đổi hướng gradient êm ái tạo chiều sâu.
* **Animated Current Weather:** Icon thời tiết chính chuyển động floating mô phỏng trạng thái thời tiết thực tế.
* **Hourly & Weekly Forecasts:** Cuộn ngang mượt mà cho các mốc giờ và danh sách hàng dọc trực quan cho dự báo 7 ngày tiếp theo.
* **App Icon Chuẩn 1024x1024:** Render logo hình vuông đặc, tuân thủ đúng Human Interface Guidelines của Apple, không lỗi Alpha Channel.

---

## 📂 Kiến trúc & Thư mục (Folder Structure)

Dự án áp dụng chặt chẽ mô hình phân chia trách nhiệm nhằm tối ưu hóa khả năng bảo trì:

```text
WeatherClone/
│
├── Models/
│   ├── DesignSystem.swift     # Định nghĩa quy chuẩn Spacing nhất quán
│   ├── Weather.swift          # Model thời tiết hiện tại
│   └── Forecast.swift         # Model dùng chung cho Hourly & Weekly
│
├── Views/
│   ├── HomeView.swift         # Màn hình chính lắp ráp toàn bộ UI Tree
│   ├── WeatherHeaderView.swift# Phần tiêu đề Tên thành phố & Trạng thái
│   ├── HourlyForecastView.swift# Card dự báo theo giờ
│   ├── WeeklyForecastView.swift# Card dự báo theo ngày
│   └── WeatherCardView.swift  # Higher-Order Component bọc hiệu ứng Glassmorphism
│
├── Components/
│   ├── AnimatedBackground.swift# View xử lý hiệu ứng dải màu chuyển động
│   ├── HourlyItem.swift       # Item đơn lẻ của thanh cuộn ngang
│   └── ForecastRow.swift      # Hàng hiển thị chi tiết của một ngày
│
└── WeatherCloneApp.swift      # Entry Point của ứng dụng
