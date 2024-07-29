import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class WelcomeNote extends StatefulWidget {
  const WelcomeNote({super.key});

  @override
  _WelcomeNoteState createState() => _WelcomeNoteState();
}

class _WelcomeNoteState extends State<WelcomeNote> {
  String? _location;
  String? _greeting;

  @override
  void initState() {
    super.initState();
    _fetchLocationAndGreeting();
  }

  Future<void> _fetchLocationAndGreeting() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      String city = placemarks[0].locality ?? 'Unknown';
      String country = placemarks[0].country ?? 'Unknown';

      var url = Uri.parse('http://worldtimeapi.org/api/ip');
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        String dateTimeString = data['datetime'];
        DateTime utcDateTime = DateTime.parse(dateTimeString);

        DateTime localDateTime = utcDateTime.add(
          Duration(seconds: data['raw_offset'] + data['dst_offset']),
        );

        setState(() {
          _location = '$city, $country';
          _greeting = getGreeting(localDateTime);
        });
      } else {
        setState(() {
          _location = '$city, $country';
          _greeting = 'Failed to get time data';
        });
      }
    } catch (e) {
      setState(() {
        _location = 'Unknown location';
        _greeting = 'Failed to get time data';
      });
    }
  }

  String getGreeting(DateTime dateTime) {
    int hour = dateTime.hour;

    if (hour >= 5 && hour < 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Good Afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _location ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        Text(
          _greeting ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
