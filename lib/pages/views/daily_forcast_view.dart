import 'package:flutter/material.dart';

import '../../core/helpers.dart';
import '../../models/weather_forecast_models.dart';

class WeatherTileRow extends StatelessWidget {

  final List<HourlyData> summaries;
  const WeatherTileRow({super.key, required this.summaries});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: summaries.length,
        itemBuilder: (context, index) {
          final summary = summaries[index];
          return WeatherTile(
            summary: summary,
          );
        },
      ),
    );
  }

}

class WeatherTile extends StatelessWidget {
  final HourlyData summary;
  const WeatherTile({
    super.key, required this.summary
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              Helper.getImageOnCode(summary.weatherId),
              height: 62,
              width: 62,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  summary.time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${Helper.kelvinToCelsius(summary.temperature).toStringAsFixed(1)}°C',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
