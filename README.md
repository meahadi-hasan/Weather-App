# 🌦️ Weather App

A beautiful, responsive weather application built with Flutter that displays current weather conditions using OpenWeatherMap API.

## ✨ Features

- **Real-time Weather Data** - Get current weather for any city worldwide
- **Elegant UI** - Clean, modern interface with gradient backgrounds
- **Detailed Metrics** - Temperature, humidity, wind speed, sunrise/sunset times
- **Weather Animations** - Lottie animations for different weather conditions
- **Responsive Design** - Works on both mobile and tablet devices
- **Error Handling** - User-friendly error messages

## 🛠️ Technical Stack

- **Framework**: Flutter (Dart)
- **State Management**: Built-in setState
- **API**: OpenWeatherMap
- **Animation**: Lottie
- **Dependencies**:
  - http: ^1.1.0
  - lottie: ^3.3.0
  - intl: ^0.18.1

## 📱 App Screenshots

| Home Screen | Screenshot-1 | Screenshot-2 |
|-------------|-------------|-------------|
| ![Home](Images/HomeScreen.jpg) | ![Location-1](Images/Bogra.jpg) | ![Location-2](Images/Istambul.jpg)
## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/meahadi-hasan/Weather-App.git
   cd Weather-App

2. Get dependencies:

   ```bash
   flutter pub get

3. Run the app:

   ```bash
   flutter run

🏗️ Project Structure

    lib/
    ├── main.dart                # App entry point
    ├── models/
    │   └── weather_model.dart   # Data models
    ├── services/
    │   └── weather_services.dart # API services
    ├── widgets/
    │   └── weather_card.dart    # Reusable widgets
    └── screens/
    └── home_screen.dart     # Main screen
    
🌐 API Reference
The app uses OpenWeatherMap API:

Endpoint: https://api.openweathermap.org/data/2.5/weather

Parameters: q={city}&appid={API_KEY}&units=metric

🤝 Contributing
Contributions are welcome! Please follow these steps:

Fork the project

Create your feature branch (git checkout -b feature/AmazingFeature)

Commit your changes (git commit -m 'Add some amazing feature')

Push to the branch (git push origin feature/AmazingFeature)

Open a Pull Request

🙏 Acknowledgments
OpenWeatherMap for the weather data API

LottieFiles for weather animations

Flutter community for awesome packages


