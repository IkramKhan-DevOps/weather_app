import 'package:flutter/material.dart';
import 'package:weather/pages/screens/dashboard_screen.dart';

class MyTextfiledRow extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const MyTextfiledRow({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            width: MediaQuery.sizeOf(context).width - 100,
            child: TextField(
                style: const TextStyle(color: Colors.white70),
                controller: controller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  fillColor: Colors.transparent,
                  filled: true,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                )),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashBoardScreen(),
                ),
              );
            },
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.location_on,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
