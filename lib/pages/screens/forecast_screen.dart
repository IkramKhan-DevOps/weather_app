import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/api_service.dart';
import 'package:weather/pages/views/daily_forcast_view.dart';
import 'package:weather/pages/views/weekly_forecast_view.dart';

import '../../core/providers.dart';

class ForecastScreen extends ConsumerWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    final forecast = ref.watch(locationForecastWeatherProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 1.0 * kToolbarHeight, 15, 1),
        child: SizedBox(
          height: screenSize.height,
          child: Stack(
            children: [
              // ===============================================================
              // PURPLE
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

              // PURPLE
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

              // YELLOW
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFAB40).withOpacity(1),
                  ),
                ),
              ),

              // MAGIC
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
              // ===============================================================

              //page data
              SizedBox(
                child: Column(
                  children: [
                    // MAIN HEADING
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Forecast Report",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),

                    // HEADING
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),

                    // ---------------------------------------------------------
                    const SizedBox(height: 20),
                    forecast.when(
                      data: (forecast) {
                        final summaries = WeatherService.aggregateToHourlyData(forecast);
                        return WeatherTileRow(summaries: summaries);
                      },
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (error, stack) => Center(child: Text('Error: $error')),
                    ),
                    // ---------------------------------------------------------

                    // HEADING
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Next Forecast",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    // MAIN AREA
                    // ---------------------------------------------------------
                    const SizedBox(height: 20),
                    forecast.when(
                      data: (forecast) {
                        final summaries = WeatherService.aggregateToDailySummaries(forecast);
                        return WeeklyForecastView(summaries: summaries);
                      },
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (error, stack) => Center(child: Text('Error: $error')),
                    ),
                    // ---------------------------------------------------------
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
