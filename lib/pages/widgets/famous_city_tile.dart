import 'package:flutter/material.dart';

class FamousCityTile extends StatefulWidget {
  const FamousCityTile({
    super.key,
    required this.city,
    required this.index,
  });

  final String city;
  final int index;

  @override
  State<FamousCityTile> createState() => _FamousCityTileState();
}

class _FamousCityTileState extends State<FamousCityTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "0 C",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sunny",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(height: 30),
                  ],
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
            Text(
              widget.city,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
