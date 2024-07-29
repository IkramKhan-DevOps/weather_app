import 'package:flutter/material.dart';
import 'package:weather/models/city.dart';
import 'package:weather/providers/welcome_note.dart';

class LocationData extends StatelessWidget {
  final City userCity;
  const LocationData({super.key, required this.userCity});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: userCity.findCountry(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text(
            userCity.cityName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          );
        } else if (snapshot.hasError) {
          return Text(
            userCity.cityName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          );
        } else {
          String countryName = snapshot.data ?? '';
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${userCity.cityName}, $countryName",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              WelcomeNote(futureCountry: Future.value(countryName)),
            ],
          );
        }
      },
    );
  }
}
