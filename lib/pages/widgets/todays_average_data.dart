import 'package:flutter/material.dart';

class TodaysAverageData extends StatelessWidget {
  const TodaysAverageData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sunrise",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "5:34 am",
                      style: TextStyle(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sunset",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "5:34 pm",
                      style: TextStyle(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Temp Min",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "12 °C",
                      style: TextStyle(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Temp Max",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "8 °C",
                      style: TextStyle(
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
    );
  }
}
