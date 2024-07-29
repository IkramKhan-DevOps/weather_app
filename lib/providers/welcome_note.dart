import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather/pages/widgets/timezones_list.dart';

class WelcomeNote extends StatelessWidget {
  final Future<String> futureCountry;

  const WelcomeNote({super.key, required this.futureCountry});

  Future<String> getRemark(String country) async {
    if (!countryToCityAndContinent.containsKey(country)) {
      return 'Country not found';
    }

    String continent = countryToCityAndContinent[country]!['continent']!;
    String city = countryToCityAndContinent[country]!['city']!;

    try {
      var url =
          Uri.parse('http://worldtimeapi.org/api/timezone/$continent/$city');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String dateTimeString = data['datetime'];
        DateTime utcDateTime = DateTime.parse(dateTimeString);

        // Ensure proper timezone handling
        DateTime localDateTime = utcDateTime
            .add(Duration(seconds: data['raw_offset'] + data['dst_offset']));

        return getGreeting(localDateTime);
      } else {
        return 'Failed to get time data: ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'Failed to get time data: $e';
    }
  }

  String getGreeting(DateTime dateTime) {
    int hour = dateTime.hour;

    if (hour >= 5 && hour < 12) {
      return 'Good morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Good afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Good evening';
    } else {
      return 'Good night';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: futureCountry,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return FutureBuilder<String>(
            future: getRemark(snapshot.data!),
            builder: (context, remarkSnapshot) {
              if (remarkSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (remarkSnapshot.hasError) {
                return Text(
                  '${remarkSnapshot.error}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                );
              } else {
                return Text(
                  '${remarkSnapshot.data}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                );
              }
            },
          );
        } else {
          return const Text('');
        }
      },
    );
  }
}
