import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bandung',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Card(
                color: Colors.blue.shade700,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const Text(
                        '21°',
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Saturday, 9 Nov 24',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                weatherInfoCard('5 km/h', 'Wind Speed', Icons.wind_power),
                weatherInfoCard('80%', 'Humidity', Icons.water_drop),
                weatherInfoCard('North', 'Wind  Direction', Icons.west),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Hourly Forecast',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                hourlyWeather('Now', '21°', Icons.wb_sunny),
                hourlyWeather('03:00', '22°', Icons.nightlight_round),
                hourlyWeather('04:00', '21°', Icons.wb_cloudy),
                hourlyWeather('05:00', '22°', Icons.wb_sunny),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.blue.shade700,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.umbrella, color: Colors.white, size: 32),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Sky Condition: Raindrops Detected, Grab an Umbrella!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget weatherInfoCard(String value, String label, IconData icon) {
    return Expanded(
      child: Card(
        color: Colors.blue.shade600,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 32, color: Colors.white),
              const SizedBox(height: 12),
              Text(
                value,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 40, // Atur tinggi tetap agar semua label memiliki ruang yang sama
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget hourlyWeather(String time, String temperature, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.white70),
        const SizedBox(height: 8),
        Text(
          time,
          style: const TextStyle(fontSize: 16, color: Colors.white70),
        ),
        const SizedBox(height: 8),
        Text(
          temperature,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
