import 'package:flutter/material.dart';
import 'package:portfolioo/ThemeManager.dart';


//  circleOneDarkTheme(size) => RadialGradient(
//   center: Alignment(1, 1.2), // Center the gradient within the circle
//   radius: 0.65,
//   colors: [
//     Colors.white.withOpacity(0.9),
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//   ],
//   stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
// );
//
//
// circleOneLightTheme() => RadialGradient(
//   center: Alignment(1, 1.2), // Center the gradient within the circle
//   radius: 0.65,
//   colors: [
//     Colors.black.withOpacity(0.9),
//     Colors.white12,
//     Colors.white54,
//     Colors.white54,
//     Colors.white54,
//     Colors.white54,
//     Colors.black,
//   ],
//   stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
// );

// circleTwoDarkTheme(size)=>RadialGradient(
//   center: Alignment(-1.2, -0.5), // Center the gradient within the circle
//   radius: 0.65,
//   colors: [
//     Colors.white,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//     Colors.black,
//   ],
//   stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
// );

// circleTwoLightTheme(size)=>RadialGradient(
//   center: Alignment(-1.2, -0.5), // Center the gradient within the circle
//   radius: 0.65,
//   colors: [
//     Colors.black,
//     Colors.white54,
//     Colors.white12,
//     Colors.black38,
//     Colors.white12,
//     Colors.black38,
//     Colors.black38,
//   ],
//   stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
// );


class GradientCirclesPainter extends CustomPainter {
  final double scrollOffset;
  BuildContext context;
  GradientCirclesPainter(this.scrollOffset,this.context);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..style = PaintingStyle.fill;

    // First circle
    paint.shader = Theme.of(context).customGradientColors.circleOneTheme.createShader(
      Rect.fromCircle(
        center: Offset(-size.width * 0.25, -size.height * 0.75),
        radius: size.width * 0.85,
      ),
    );

    // Draw the first circle (partially visible on top left)
    canvas.drawCircle(
      Offset(-size.width * 0.25 - scrollOffset * 0.5, -size.height * 0.75 - scrollOffset * 0.5),
      size.width * 0.85,
      paint,
    );

    // Second circle
    paint.shader = Theme.of(context).customGradientColors.circleTwoTheme.createShader(
      Rect.fromCircle(
        center: Offset(size.width * 1.25, size.height * 1.75),
        radius: size.width * 0.85,
      ),
    );

    canvas.drawCircle(
      Offset(size.width * 0.85 + scrollOffset * 0.1, size.height * 0.9 + scrollOffset * 0.5),
      size.width * 0.4,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true; // Repaint when scrollOffset changes
  }
}