import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolioo/Components/AnimatedNeumorphicContainer.dart';
import 'package:portfolioo/ThemeManager.dart';
import 'HomePage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    loadAndProceed();
  }

  Future<void> loadAndProceed() async {
    // Simulate some loading delay
    await Future.delayed(const Duration(seconds: 2));

    // Precache images
    await Future.wait([
      precacheImage(const AssetImage('assets/images/gold.jpeg'), context),
      precacheImage(const AssetImage('assets/images/blue.jpeg'), context),
    ]);

    // Navigate to HomePage with transition
    Get.offAll(
          () => const HomePage(),
      transition: Transition.size,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background image that covers the entire screen
          Image.asset(
            'assets/gradientbg.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          // Centered progress indicator
          // Center(
          //   child: CircularProgressIndicator(
          //     color: Theme.of(context).customGradientColors.accentColor,
          //     strokeWidth: 7.0, // Adjust the thickness if needed
          //   ),
          // ),
          // Center(
          //   child: CircularProgressIndicator(
          //     color: Colors.white54,
          //     strokeWidth: 3.0, // Adjust the thickness if needed
          //   ),
          // ),
          Center(
            child:
            Lottie.asset(
              'assets/lottie/loadin.json',
            ),
          )

        ],
      ),
    );
  }
}