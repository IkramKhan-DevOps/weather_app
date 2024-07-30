import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:weather/core/api_urls.dart';
import 'package:weather/core/helpers.dart';
import 'package:weather/models/weather_models.dart';

import '../models/weather_forecast_models.dart';

class WeatherService {
  static const String apiKey = "af583343d824783511191f5f17cc6d61";

  static Future<WeatherModel> fetchCurrentLocationData() async {
    try {
      final locationModel = await LocationService.getCurrentLocation();
      final url = Uri.parse(
          '${APIUrls.currentWeather}?lat=${locationModel.latitude}&lon=${locationModel.longitude}&appid=$apiKey');

      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return WeatherModel.fromJson(data);
      } else {
        throw Exception('API | FAILED -- ${response.body}');
      }
    } catch (e) {
      Console.message('API | EXCEPTION | WEATHER -- $e');
      rethrow;
    }
  }

  static Future<HourlyForecastModel> fetchForecastLocationData() async {
    try {
      final locationModel = await LocationService.getCurrentLocation();
      final url = Uri.parse(
          '${APIUrls.forecastWeather}?lat=${locationModel.latitude}&lon=${locationModel.longitude}&appid=$apiKey');

      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Console.message(data);
        return HourlyForecastModel.fromJson(data);
      } else {
        throw Exception('API | FAILED -- ${response.body}');
      }
    } catch (e) {
      Console.message('API | EXCEPTION | WEATHER -- $e');
      rethrow;
    }
  }

  static List<DailySummary> aggregateToDailySummaries(HourlyForecastModel hourlyData) {
    // Helper function to format date
    String formatDate(int timestamp) {
      final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      return DateFormat('yyyy-MM-dd').format(date);
    }

    // Group hourly data by date
    final dailyData = <String, List<HourlyWeather>>{};

    for (var forecast in hourlyData.list) {
      final dateKey = formatDate(forecast.dt);
      if (!dailyData.containsKey(dateKey)) {
        dailyData[dateKey] = [];
      }
      dailyData[dateKey]!.add(forecast);
    }

    // Aggregate data
    final summaries = <DailySummary>[];

    for (var entry in dailyData.entries) {
      final date = DateTime.parse(entry.key);
      final dayName = DateFormat('EEEE').format(date);
      final temps = entry.value.map((e) => e.main.temp);
      final averageTemp = temps.reduce((a, b) => a + b) / temps.length;

      final weatherIcon = entry.value.map((e) => e.weather[0].icon).first;
      final weatherId = entry.value.map((e) => e.weather[0].id).first;;

      summaries.add(DailySummary(
        dayName: dayName,
        date: entry.key,
        temperature: averageTemp,
        weatherIcon: weatherIcon,
        weatherId: weatherId,
      ));
    }
    return summaries;
  }

  static List<HourlyData> aggregateToHourlyData(HourlyForecastModel hourlyData) {
    String formatTime(int timestamp) {
      final time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      return DateFormat('HH:mm').format(time);
    }

    // Get today's date in YYYY-MM-DD format
    final today = DateFormat('yyyy-MM-dd').format(DateTime.now());

    // Filter hourly data for today
    final hourlyDataList = hourlyData.list.where((forecast) {
      final dateKey = DateFormat('yyyy-MM-dd').format(DateTime.fromMillisecondsSinceEpoch(forecast.dt * 1000));
      return dateKey == today;
    }).map((forecast) {
      return HourlyData(
        time: formatTime(forecast.dt),
        temperature: forecast.main.temp,
        weatherIcon: forecast.weather[0].icon,
        weatherId: forecast.weather[0].id,
      );
    }).toList();

    return hourlyDataList;
  }



}
