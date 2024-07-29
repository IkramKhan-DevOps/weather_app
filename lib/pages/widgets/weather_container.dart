import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/1.png",
            scale: 1.65,
          ),
        ),
        const Center(
          child: Text(
            '0 °C',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 50,
            ),
          ),
        ),
        const Center(
          child: Text(
            'THUNDER STORMS',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Center(
          child: Text(
            'Friday 27th - 10:49 pm',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
