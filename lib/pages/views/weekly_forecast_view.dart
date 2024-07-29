import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeeklyForecastView extends StatelessWidget {
  const WeeklyForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 30),
        itemCount: 7,
        itemBuilder: (context, index) {
          // Get date for each item in the list starting from tomorrow
          final DateTime date = DateTime.now().add(Duration(days: index + 1));
          final String dayOfWeek = DateFormat('EEEE').format(date);
          final String formattedDate = DateFormat('yyyy-MM-dd').format(date);

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
                      children: [
                        Text(
                          dayOfWeek,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          formattedDate,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "28°C",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Image.asset(
                        "assets/images/1.png",
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
