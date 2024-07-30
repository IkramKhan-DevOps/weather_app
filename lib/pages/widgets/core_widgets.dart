
import 'package:flutter/material.dart';


class ErrorScreenWidget extends StatelessWidget {
  final String description;
  const ErrorScreenWidget({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        description
      ),
    );
  }
}
