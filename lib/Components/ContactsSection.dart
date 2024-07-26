import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioo/ThemeManager.dart';

import '../GlassMorphism.dart';

class ContactSection extends StatelessWidget {
   ContactSection({required this.width,super.key});
final double width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GlassMorphism(
        child: Container(
          width: width*0.85,
          decoration: BoxDecoration(
              color: Theme.of(context).customGradientColors.secondaryAccentColor.withOpacity(0.5),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).customGradientColors.secondaryAccentColor.computeLuminance() > 0.5 ? Colors.black54 : Colors.white54,
                ),
              ],
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Contact Me',
                  // style: GoogleFonts.poppins(fontSize: 28, color: Colors.white54),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Text(
                  'Email: \n\nmohamed.shabeen.ahamed\n@gmail.com\n',
                  // style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,

                ),
                const SizedBox(height: 5),
                Text(
                  'LinkedIn: \n\nlinkedin.com/in/\nmohamed-shabeen-ahamed',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w900),
                  // style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
