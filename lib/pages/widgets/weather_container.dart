import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/models/get_image.dart'; // Import intl package for formatting

class WeatherContainer extends StatelessWidget {
  final DateTime currentTime;
  final String currentTemperature;
  final String description;

  const WeatherContainer({
    super.key,
    required this.currentTime,
    required this.currentTemperature,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    // Format the date
    String formattedDate = DateFormat('EEEE, d, yyyy').format(currentTime);

    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            getImage(description),
            scale: 1.65,
          ),
        ),
        Center(
          child: Text(
            '$currentTemperature °C',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 50,
            ),
          ),
        ),
        Center(
          child: Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: Text(
            formattedDate, // Display the formatted date
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
