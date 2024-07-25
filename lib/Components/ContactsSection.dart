import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../GlassMorphism.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Contact Me',
              style: GoogleFonts.poppins(fontSize: 28, color: Colors.white54),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: mohamed.shabeen.ahamed@gmail.com',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
            ),
            const SizedBox(height: 5),
            Text(
              'LinkedIn: linkedin.com/in/mohamed-shabeen-ahamed',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
