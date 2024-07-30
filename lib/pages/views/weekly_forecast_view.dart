import 'package:flutter/material.dart';
import 'package:weather/core/helpers.dart';

import '../../models/weather_forecast_models.dart';

class WeeklyForecastView extends StatelessWidget {
  final List<DailySummary> summaries;
  const WeeklyForecastView({super.key, required this.summaries});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 30),
        itemCount: summaries.length,
        itemBuilder: (context, index) {

          DailySummary summary = summaries[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          summary.dayName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          summary.date,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${Helper.kelvinToCelsius(summary.temperature).toStringAsFixed(1)} °C",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Image.asset(
                        Helper.getImageOnCode(summary.weatherId),
                        height: 62,
                        width: 62,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
