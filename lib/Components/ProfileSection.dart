import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioo/Components/logo.dart';
import 'package:provider/provider.dart';

import '../ThemeManager.dart';


class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              // Transform.rotate(
              //   angle: 45,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: const Color(0xFF092549),
              //     ),
              //     child: Transform.rotate(
              //       angle: 45,
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: AnimatedNeumorphicContainer(
              //             child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Transform.rotate(
              //             angle: 45.1,
              //             child: Container(
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(15),
              //                   color: const Color(0xFF092549),
              //                 ),
              //                 child: Transform.rotate(
              //                   angle: 3.15,
              //                   child: ClipRRect(
              //                     borderRadius: BorderRadius.circular(15),
              //                     child: Container(
              //                       height: 50,
              //                       width: 50,
              //                       child: Image.network('https://www.w3schools.com/howto/img_avatar.png'),
              //                     ),
              //                   ),
              //                 )),
              //           ),
              //         )),
              //       ),
              //     ),
              //   ),
              // ),
              logo(context: context,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                    child:
                    Provider.of<ThemeProvider>(context, listen: false).isDarkTheme?
                    Image.asset('assets/images/gold.jpeg',height: 110,):
                    Image.asset('assets/images/blue.jpeg',height: 110,)
                    // FadeInImage.assetNetwork(
                    //   placeholder: 'assets/images/gold.jpeg',
                    //   image: 'assets/images/blue.jpeg',
                    //   height: 110,
                    //   fit: BoxFit.cover,
                    //   fadeInDuration: Duration(milliseconds: 300), // Duration for fade-in animation
                    //   fadeOutDuration: Duration(milliseconds: 300), // Duration for fade-out animation
                    // )
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Mohamed Shabeen Ahamed',
                // style: GoogleFonts.poppins(
                //   fontSize: 40,
                //   fontWeight: FontWeight.w300,
                //   color: Colors.white70,
                // ),
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              // GradientText(
              //   'Mohamed Shabeen Ahamed',
              //   gradient: LinearGradient(
              //     colors: [
              //       Colors.white70,
              //       Colors.white54,
              //       Colors.blue[100]!,
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              //   style: GoogleFonts.poppins(
              //     fontSize: 40,
              //     fontWeight: FontWeight.w300,
              //     // color: Color(0xFFDAA520), // This color will be overridden by the gradient
              //     shadows: [
              //       Shadow(
              //         color: Colors.black54,
              //         blurRadius: 10,
              //         offset: Offset(0, 10),
              //       ),
              //     ],
              //   ),
              // ),
              // GradientText(
              //     'Mohamed Shabeen Ahamed',
              //   gradient: LinearGradient(
              //     colors: [
              //       Color(0xFFDAA520), // Rich Gold
              //       Color(0xFFDAA520), // Rich Gold
              //       Color(0xFFDAA520), // Rich Gold
              //       Color(0xFFB8860B), // Dark Goldenrod
              //       Color(0xFFDAA520), // Rich Gold
              //       Color(0xFFA4780A), // Dark Goldenrod
              //       Color(0xFFDAA520), // Rich Gold
              //
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              //   style: GoogleFonts.poppins(
              //     fontSize: 40,
              //     fontWeight: FontWeight.w300,
              //     // color: Color(0xFFDAA520), // This color will be overridden by the gradient
              //     shadows: [
              //       Shadow(
              //         color: Colors.black54,
              //         blurRadius: 10,
              //         offset: Offset(0, 10),
              //       ),
              //     ],
              //   ),
              // ),
              // GradientText(
              //   'This is rich gold!',
              //   gradient: LinearGradient(
              //     colors: [
              //       Color(0xFFDAA520), // Rich Gold
              //       Color(0xFFA57C00), // Dark Goldenrod
              //     ],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              //   style: GoogleFonts.poppins(
              //     fontSize: 40,
              //     fontWeight: FontWeight.w300,
              //     // color: Color(0xFFDAA520), // This color will be overridden by the gradient
              //     shadows: [
              //       Shadow(
              //         color: Colors.black54,
              //         blurRadius: 10,
              //         offset: Offset(0, 10),
              //       ),
              //     ],
              //   ),
              // ),
            ]),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Text(
            'I am a passionate Flutter developer with experience in building cross-platform mobile applications. '
            'I focus on creating smooth, responsive, and user-friendly interfaces while creating manageable code with MVVM architecture. Proficient in using Getx and Provider to manage states.',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white54),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
