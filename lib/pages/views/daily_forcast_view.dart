import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/pages/widgets/weather_tile.dart';

class WeatherTileRow extends StatelessWidget {
  const WeatherTileRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> weatherData = generateWeatherData();

    //the listview builder
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          final data = weatherData[index];
          return WeatherTile(
            time: data['time'],
            temperature: data['temperature'],
          );
        },
      ),
    );
  }

  //generate the time after every 2 hours
  List<Map<String, dynamic>> generateWeatherData() {
    List<Map<String, dynamic>> weatherData = [];
    DateTime now = DateTime.now();

    // Start from the next hour rounded up to the nearest 3-hour mark
    int startHour = (now.hour + 2) - (now.hour % 2);

    for (int i = startHour; i < 24; i += 2) {
      DateTime hour = DateTime(now.year, now.month, now.day, i);
      String formattedTime = DateFormat('hh:00 a')
          .format(hour); // Format to show hours with 00 minutes and AM/PM
      double temperature = 5 + (i % 10); // Dummy temperature data

      weatherData.add({
        'time': formattedTime,
        'temperature': temperature,
      });
    }

    return weatherData;
  }
}
