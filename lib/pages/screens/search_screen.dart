import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
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

              // Content
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dummy Icon
                    Icon(
                      Icons.info_outline,
                      size: 100,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    SizedBox(height: 20),

                    // Title
                    const Text(
                      'About This App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),

                    // Description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'This app provides accurate and up-to-date weather forecasts. Explore current weather conditions, daily and hourly forecasts, and more. Designed with a modern and intuitive interface to keep you informed and prepared for your day.\n\n'
                            'Created by a passionate team of Flutter developers, this app showcases our commitment to delivering high-quality and user-friendly applications. Our team works tirelessly to ensure that you receive the best weather updates with an engaging and seamless experience.',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
