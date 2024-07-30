import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/pages/screens/dashboard_screen.dart'; // Import the dashboard screen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Delay navigation to DashboardScreen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashBoardScreen()),
      );
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,

        // APP BAR
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        ),

        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 1.0 * kToolbarHeight, 15, 1),
          child: SizedBox(
            height: screenSize.height,
            child: Stack(
              children: [
                // ===============================================================
                // PURPLE
                Align(
                  alignment: const AlignmentDirectional(3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                // PURPLE
                Align(
                  alignment: const AlignmentDirectional(-3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF673AB7),
                    ),
                  ),
                ),

                // YELLOW
                Align(
                  alignment: const AlignmentDirectional(0, -1.2),
                  child: Container(
                    height: 300,
                    width: 600,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFAB40).withOpacity(1),
                    ),
                  ),
                ),

                // MAGIC
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 100.0,
                    sigmaY: 100.0,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                // ===============================================================

                // Center the icon in the middle of the screen
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200, // Width of the SizedBox
                        height: 200, // Height of the SizedBox
                        child: Image.asset(
                          'assets/images/7.png',
                          fit: BoxFit
                              .fill, // You can change this to BoxFit.cover, BoxFit.fill, etc.
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
