import 'package:flutter/material.dart';
import 'package:weather/models/city.dart';
import 'package:weather/pages/widgets/famous_city_tile.dart';

class FamousCitiesView extends StatelessWidget {
  const FamousCitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 30),
        itemCount: cities.length,
        // physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 165, // Adjust the height of each tile
        ),
        itemBuilder: (context, index) {
          final city = cities[index];
          return FamousCityTile(
            index: index,
            city: city.cityName,
          );
        },
      ),
    );
  }
}
