import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  final List<Map<String, dynamic>> forecastData = const [
    {'day': 'Monday', 'temperature': '23°', 'condition': 'Sunny', 'icon': Icons.wb_sunny},
    {'day': 'Tuesday', 'temperature': '21°', 'condition': 'Cloudy', 'icon': Icons.cloud},
    {'day': 'Wednesday', 'temperature': '19°', 'condition': 'Rainy', 'icon': Icons.umbrella},
    {'day': 'Thursday', 'temperature': '22°', 'condition': 'Windy', 'icon': Icons.wind_power},
    {'day': 'Friday', 'temperature': '24°', 'condition': 'Sunny', 'icon': Icons.wb_sunny},
    {'day': 'Saturday', 'temperature': '20°', 'condition': 'Stormy', 'icon': Icons.thunderstorm},
    {'day': 'Sunday', 'temperature': '23°', 'condition': 'Sunny', 'icon': Icons.wb_sunny},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      appBar: AppBar(
        title: const Text('Weekly Forecast'),
        backgroundColor: Colors.blue.shade700,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: forecastData.length,
          itemBuilder: (context, index) {
            final forecast = forecastData[index];
            return Card(
              color: Colors.blue.shade600,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(
                  forecast['icon'],
                  size: 32,
                  color: Colors.white,
                ),
                title: Text(
                  forecast['day'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '${forecast['condition']} • ${forecast['temperature']}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
