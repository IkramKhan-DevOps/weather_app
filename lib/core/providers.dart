
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/api_service.dart';


final locationWeatherProvider = FutureProvider.autoDispose((ref){
  /// GET THE CURRENT WEATHER API
  return WeatherService.fetchCurrentLocationData();

});


final locationForecastWeatherProvider = FutureProvider.autoDispose((ref){
  /// GET THE CURRENT WEATHER API
  return WeatherService.fetchForecastLocationData();

});