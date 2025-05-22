class Constants {
  // API Configuration
  static const String openWeatherApiKey = 'a2a58f23d54d1908371d9c298863af19';
  static const String openWeatherBaseUrl = 'https://api.openweathermap.org/data/2.5';
  
  // Asset Paths
  static const String rainAnimation = 'assets/weather_animations/rain.json';
  static const String sunnyAnimation = 'assets/weather_animations/sunny.json';
  static const String cloudyAnimation = 'assets/weather_animations/cloudy.json';
  static const String snowAnimation = 'assets/weather_animations/snowfall.json';
  
  // Error Messages
  static const String cityNotFound = 'City not found. Try another name.';
  static const String networkError = 'Network error. Check your connection.';
  static const String invalidData = 'Received incomplete weather data';
}

class AppStrings {
  static const String appName = 'Weather App';
  static const String searchHint = 'e.g. Dhaka, New York';
  static const String searchLabel = 'City Name';
  static const String emptyStateMessage = 'Search for a city to see weather';
}