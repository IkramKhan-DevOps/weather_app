import 'package:flutter/material.dart';
import '../../core/helpers.dart';
import '../../models/weather_models.dart';

class GreetingsWidget extends StatelessWidget {
  final WeatherModel weatherModel;
  const GreetingsWidget({super.key, required this.weatherModel});

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
          '${weatherModel.name}, ${weatherModel.sys.country}',
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        const Text(
          'Greetings!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}


class WeatherStatsWidget extends StatelessWidget {
  final WeatherModel weatherModel;

  const WeatherStatsWidget({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        // MIDDLE AREA
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            Helper.getImageOnCode(weatherModel.weather[0].id),
            scale: 1.65,
          ),
        ),
        Center(
          child: Text(
            '${Helper.kelvinToCelsius(weatherModel.main.temp).toStringAsFixed(1)} °C',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 50,
            ),
          ),
        ),
        Center(
          child: Text(
            weatherModel.weather[0].description,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: Text(
            Helper.getCurrentDateTime(), // Display the current date
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const SizedBox(height: 30),

        // END AREA
        Column(
          children: [
            // UPPER ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LEFT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/11.png",
                      scale: 8,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sunrise",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          Helper.formatTime(weatherModel.sys.sunrise), // Replace with actual data
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // RIGHT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/12.png",
                      scale: 8,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sunset",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          Helper.formatTime(weatherModel.sys.sunset), // Replace with actual data
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            // DIVIDER
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Divider(
                color: Colors.white10,
              ),
            ),
            // LOWER ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LEFT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/13.png",
                      scale: 8,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Temp Min",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "${Helper.kelvinToCelsius(weatherModel.main.tempMin).toStringAsFixed(1)} °C",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // RIGHT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/14.png",
                      scale: 8,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Temp Max",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "${Helper.kelvinToCelsius(weatherModel.main.tempMax).toStringAsFixed(1)} °C",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
