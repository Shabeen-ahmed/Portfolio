import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme => _isDarkTheme;

  ThemeData get themeData => _isDarkTheme ? CustomTheme.darkTheme : CustomTheme.lightTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}

class LightThemeColors {
  static const accentColor = Color(0xFF092549);
  static const secondaryAccentColor = Color(0xFFE0E5EC);

  static  RadialGradient circleOneTheme = RadialGradient(
    center: const Alignment(1, 1.2), // Center the gradient within the circle
    radius: 0.65,
    colors: [
      Colors.black.withOpacity(0.9),
      Colors.white12,
      Colors.white54,
      Colors.white54,
      Colors.white54,
      Colors.white54,
      Colors.black,
    ],
    stops: const [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
  );

  static  RadialGradient circleTwoTheme = const RadialGradient(
    center: Alignment(-1.2, -0.5),
    radius: 0.65,
    colors: [
      Colors.black,
      Colors.white54,
      Colors.white12,
      Colors.black38,
      Colors.white12,
      Colors.black38,
      Colors.black38,
    ],
    stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
  );

}

class DarkThemeColors {
// static const accentColor = Color(0xFFDAA520);
static const accentColor = Color(0xFFB8860B);
static const secondaryAccentColor = Colors.black;

  static  RadialGradient circleOneTheme = RadialGradient(
    center: const Alignment(1, 1.2), // Center the gradient within the circle
    radius: 0.65,
    colors: [
      Colors.white.withOpacity(0.9),
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
    ],
    stops: const [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
  );


  static  RadialGradient circleTwoTheme = const RadialGradient(
    center: Alignment(-1.2, -0.5), // Center the gradient within the circle
    radius: 0.65,
    colors: [
      Colors.white,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.black,
    ],
    stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
  );

}

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    bottomSheetTheme: const BottomSheetThemeData(showDragHandle: true, dragHandleColor: Colors.black87, backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black87),
      headlineMedium:  GoogleFonts.poppins(
        fontSize: 38,
        fontWeight: FontWeight.w300,
        color: Colors.white70,
        shadows: [
        const Shadow(
        color: Colors.black54,
        blurRadius: 10,
        offset: Offset(0, 10),
      ),
      ],
    ),
      headlineSmall: GoogleFonts.poppins(fontSize: 28, color: Colors.black87),
      displayMedium: GoogleFonts.montserrat(fontSize: 16, color: Colors.black54),
    ),
    brightness: Brightness.light,
    extensions: <ThemeExtension<dynamic>>[
      CustomGradientAndColors(
        circleOneTheme: LightThemeColors.circleOneTheme,
        circleTwoTheme: LightThemeColors.circleTwoTheme,
        accentColor: LightThemeColors.accentColor,
        secondaryAccentColor: LightThemeColors.secondaryAccentColor,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    bottomSheetTheme: const BottomSheetThemeData(showDragHandle: true, dragHandleColor: Colors.black87, backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.poppins(fontSize: 28, color: Colors.white.withOpacity(0.8)),
      headlineMedium:  GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.w300,
        color: const Color(0xFFDAA520),
        shadows: [
          const Shadow(
            color: Colors.black54,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      displayLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white70),
      displayMedium: GoogleFonts.montserrat(fontSize: 16, color: Colors.white54),
    ),


    // brightness: Brightness.dark,
    extensions: <ThemeExtension<dynamic>>[
      CustomGradientAndColors(
        circleOneTheme: DarkThemeColors.circleOneTheme,
        circleTwoTheme: DarkThemeColors.circleTwoTheme,
        accentColor: DarkThemeColors.accentColor,
        secondaryAccentColor: DarkThemeColors.secondaryAccentColor,
      ),
    ],
  );
}

@immutable
class CustomGradientAndColors extends ThemeExtension<CustomGradientAndColors> {
   const CustomGradientAndColors({
     required this.circleOneTheme,
     required this.circleTwoTheme,
     required this.accentColor,
     required this.secondaryAccentColor,
  });

  final RadialGradient circleOneTheme;
  final RadialGradient circleTwoTheme;
  final Color accentColor;
  final Color secondaryAccentColor;

  @override
  CustomGradientAndColors copyWith({
    RadialGradient? circleOneTheme,
    RadialGradient? circleTwoTheme,
    Color? accentColor,
    Color? secondaryAccentColor,
  }) {
    return CustomGradientAndColors(
      circleOneTheme: circleOneTheme ?? this.circleOneTheme,
      circleTwoTheme: circleTwoTheme ?? this.circleTwoTheme,
      accentColor: accentColor ?? this.accentColor,
      secondaryAccentColor: secondaryAccentColor ?? this.secondaryAccentColor,
    );
  }

  @override
  CustomGradientAndColors lerp(ThemeExtension<CustomGradientAndColors>? other, double t) {
    if (other is! CustomGradientAndColors) {
      return this;
    }
    return CustomGradientAndColors(
      circleOneTheme: RadialGradient.lerp(circleOneTheme, other.circleOneTheme, t)!,
      circleTwoTheme: RadialGradient.lerp(circleTwoTheme, other.circleTwoTheme, t)!,
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      secondaryAccentColor: Color.lerp(secondaryAccentColor, other.secondaryAccentColor, t)!,
    );
  }
}

extension CustomThemeExtension on ThemeData {
  CustomGradientAndColors get customGradientColors {
    return extension<CustomGradientAndColors>()!;
  }
}
