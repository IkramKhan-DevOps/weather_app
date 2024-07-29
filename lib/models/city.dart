class City {
  final String cityName;
  String? countryName; // Nullable initially

  City({
    required this.cityName,
  });
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
