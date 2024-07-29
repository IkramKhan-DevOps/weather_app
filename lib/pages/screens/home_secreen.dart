import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/pages/widgets/todays_average_data.dart';
import 'package:weather/pages/widgets/weather_container.dart';
import 'package:weather/providers/welcome_note.dart';
import 'package:weather/services/weather_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Weather? _weather; // Change to nullable Weather to reflect initial state
  bool _isLoading = true; // Add a loading state

  @override
  void initState() {
    super.initState();
    _fetchWeather(); // Fetch weather data on startup
  }

  // Fetch weather data asynchronously
  Future<void> _fetchWeather() async {
    final weatherService = WeatherService('2a7fe88cd9c8e683a5d99c4cc7d80afd');

    try {
      final cityName = await weatherService.getCurrentCity();
      final weather = await weatherService.getWeather(cityName);

      setState(() {
        _weather = weather;
        print(weather.mainCondition);
        _isLoading = false; // Data has been fetched
      });
    } catch (e) {
      print(e);
      setState(() {
        _isLoading = false; // Ensure loading state is turned off on error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    DateTime currentTime = DateTime.now(); // Get the current time

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 1.0 * kToolbarHeight, 20, 20),
        child: SizedBox(
          height: screenSize.height - 40,
          child: Stack(
            children: [
              // Background elements
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF673AB7),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFAB40),
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 100.0,
                  sigmaY: 100.0,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),

              // Main content
              SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WelcomeNote(),
                      if (_isLoading)
                        const Center(
                            child:
                                CircularProgressIndicator()) // Show loading indicator
                      else
                        WeatherContainer(
                          currentTime: currentTime,
                          currentTemperature:
                              _weather?.temperature.round().toString() ?? 'N/A',
                          description: _weather?.mainCondition ?? 'Unknown',
                        ),
                      const TodaysAverageData(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
