import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/models/weather_model.dart';
import 'package:myapp/constants.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  String formatTime(int timestamp) {
    return DateFormat('hh:mm a').format(
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000));
  }

  String _getAnimationAsset() {
    final desc = weather.description.toLowerCase();
    if (desc.contains('rain')) return Constants.rainAnimation;
    if (desc.contains('clear') || desc.contains('sun')) return Constants.sunnyAnimation;
    if (desc.contains('snow')) return Constants.snowAnimation;
    return Constants.cloudyAnimation;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Lottie.asset(
              _getAnimationAsset(),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            Text(
              weather.cityName,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              '${weather.temperature.toStringAsFixed(1)}°C',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              weather.description.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    letterSpacing: 1.2,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildWeatherInfo('Humidity', '${weather.humidity}%', Icons.water_drop),
                _buildWeatherInfo('Wind', '${weather.windSpeed} m/s', Icons.air),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSunTime('Sunrise', weather.sunrise, Icons.wb_sunny),
                _buildSunTime('Sunset', weather.sunset, Icons.nightlight),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherInfo(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blue),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14)),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSunTime(String label, int timestamp, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.orange),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14)),
        Text(formatTime(timestamp),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}