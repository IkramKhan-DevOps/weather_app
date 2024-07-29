import 'dart:convert';
import 'package:http/http.dart' as http;

class City {
  final String cityName;
  String? countryName; // Nullable initially

  City({
    required this.cityName,
  });

  Future<String> findCountry() async {
    final url =
        'http://api.geonames.org/searchJSON?q=$cityName&maxRows=1&username=mueen1323';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        //print('Response data: $data'); // Debugging line
        String countryName;
        if (data['geonames'].isNotEmpty) {
          countryName = data['geonames'][0]['countryName'];
          //print('Country name found: $countryName'); // Debugging line
          return countryName;
        } else {
          //print('No geonames found for the city: $cityName'); // Debugging line
          return 'Country not found';
        }
      } else {
        return 'Failed to load country data';
      }
    } catch (e) {
      // print('Error: $e');
      return 'Error: $e';
    }
  }
}

List<City> cities = [
  City(
    cityName: 'New York',
  ),
  City(
    cityName: 'Los Angeles',
  ),
  City(
    cityName: 'Chicago',
  ),
  City(
    cityName: 'London',
  ),
  City(
    cityName: 'Paris',
  ),
  City(
    cityName: 'Tokyo',
  ),
];
