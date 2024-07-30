

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

import '../models/location_models.dart';

class Console {

  static void message(dynamic message, [bool? newLine]){
    if(kDebugMode){
      print(message);
      if (newLine == true) {
        print("\n");
      }
    }
  }
}

class LocationService {
  static Future<LocationModel> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions are denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permissions are denied permanently");
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    List<Placemark> placeMark = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    return LocationModel(
      latitude: position.latitude,
      longitude: position.longitude,
      city: placeMark[0].locality ?? 'Unknown',
      country: placeMark[0].country ?? 'Unknown',
    );
  }
}

class Helper {

  static String formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat('h:mm a').format(date);
  }

  static String formatTimeString(String dateTimeStr) {
    final dateTime = DateTime.parse(dateTimeStr);
    return DateFormat('h:mm a').format(dateTime); // Format time in 12-hour format with AM/PM
  }

  static double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  static String getCurrentDateTime() {
    final now = DateTime.now();
    final formattedDate = DateFormat.yMMMMEEEEd().format(now);
    final formattedTime = DateFormat.jm().format(now);
    return '$formattedDate at $formattedTime';
  }

  static String getImageOnCode(int code){
    switch (code){

      case >= 200 && < 300:
        return "assets/images/1.png";

      case >= 300 && < 400:
        return "assets/images/2.png";

      case >= 500 && < 600:
        return "assets/images/3.png";

      case >= 600 && < 700:
        return "assets/images/4.png";

      case >= 700 && < 800:
        return "assets/images/5.png";

      case == 800:
        return "assets/images/6.png";

      case > 800 && <= 804:
        return "assets/images/7.png";

      default:
        return "assets/7.png";

    }
  }

}


