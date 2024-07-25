// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:portfolioo/GlassMorphism.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'dart:async';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
//
// logo({Widget? child, double? height}) => Transform.rotate(
//   angle: 45,
//   child: Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(height != null ? height * 0.8 : 15),
//       color: const Color(0xFF092549),
//     ),
//     child: Transform.rotate(
//       angle: 45,
//       child: Padding(
//         padding: EdgeInsets.all(height != null ? height * 0.4 : 8),
//         child: AnimatedNeumorphicContainer(
//             borderRadius: height != null ? height * 0.5 : 15,
//             child: Padding(
//               padding: EdgeInsets.all(height != null ? height * 0.3 : 8),
//               child: Transform.rotate(
//                 angle: 45.1,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(height != null ? height * 0.8 : 15),
//                     color: const Color(0xFF092549),
//                   ),
//                   child: child ??
//                       SizedBox(
//                         height: 50,
//                         width: 50,
//                       ),
//                 ),
//               ),
//             )
//           // CircleAvatar(
//           //   radius: 60,
//           //   backgroundImage: NetworkImage('https://www.w3schools.com/howto/img_avatar.png'),
//           // ),
//         ),
//       ),
//     ),
//   ),
// );
//
// void main() {
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   runApp(const MyApp());
//   FlutterNativeSplash.remove();
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     initialization();
//   }
//
//   void initialization() async {
//     // This is where you can initialize the resources needed by your app while
//     // the splash screen is displayed.  Remove the following example because
//     // delaying the user experience is a bad design practice!
//     // ignore_for_file: avoid_print
//     print('ready in 3...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('ready in 2...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('ready in 1...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('go!');
//     FlutterNativeSplash.remove();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Developer Portfolio',
//       theme: ThemeData(
//         textTheme: GoogleFonts.poppinsTextTheme(),
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({super.key});
// //
// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }
//
// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();
// //     Timer(Duration(seconds: 3), () {
// //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color(0xFFE0E5EC),
// //       body: Center(
// //         child: Text(
// //           'John Doe',
// //           style: TextStyle(
// //             fontSize: 40,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.black87,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class GradientCirclesPainter extends CustomPainter {
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     Paint paint = Paint()..style = PaintingStyle.fill;
// //
// //     // // first circle
// //     // paint.shader = RadialGradient(
// //     //   colors: [Colors.black,Colors.black,Colors.black, Colors.white],
// //     // ).createShader(Rect.fromCircle(center: Offset(-size.width * 0, -size.height * 0), radius: size.width * 0));
// //     //
// //     // // Draw the first circle (partially visible on top left)
// //     // canvas.drawCircle(
// //     //   Offset(-size.width * 0.25, -size.height * 0.75),
// //     //   size.width * 0.85,
// //     //   paint,
// //     // );
// // // First circle
// //     paint.shader = RadialGradient(
// //       center: Alignment(1, 1.2), // Center the gradient within the circle
// //       radius: 0.65,
// //       colors: [
// //         Colors.white.withOpacity(0.9),
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //       ],
// //       stops: [0.0, 0.6, 0.8,0.8,0.8, 0.99, 1.0],
// //     ).createShader(
// //       Rect.fromCircle(
// //         center: Offset(-size.width * 0.25, -size.height * 0.75),
// //         radius: size.width * 0.85,
// //       ),
// //     );
// // // Draw the first circle (partially visible on top left)
// //     canvas.drawCircle(
// //       Offset(-size.width * 0.25, -size.height * 0.75),
// //       size.width * 0.85,
// //       paint,
// //     );
// //
// //
// //     // // Define the gradient for the second circle
// //     // paint.shader = RadialGradient(
// //     //   colors: [Colors.black, Colors.white],
// //     // ).createShader(Rect.fromCircle(center: Offset(size.width * 1.25, size.height * 1.25), radius: size.width * 0.75));
// //     //
// //     // // Draw the second circle (partially visible on bottom right)
// //     // canvas.drawCircle(
// //     //   Offset(size.width * 1.25, size.height * 1.25),
// //     //   size.width * 0.75,
// //     //   paint,
// //     // );
// //     // Second circle
// //     paint.shader = RadialGradient(
// //       center: Alignment(-1.2, -0.5), // Center the gradient within the circle
// //       radius: 0.65,
// //       colors: [
// //         Colors.white,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //         Colors.black,
// //       ],
// //       stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
// //     ).createShader(
// //       Rect.fromCircle(
// //         center: Offset(size.width * 1.25, size.height * 1.75),
// //         radius: size.width * 0.85,
// //       ),
// //     );
// //
// // // Draw the second circle (partially visible on bottom right)
// //     canvas.drawCircle(
// //       Offset(size.width * 0.85, size.height * 0.9),
// //       size.width * 0.5,
// //       paint,
// //     );
// //   }
// //
// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) {
// //     return false;
// //   }
// // }
//
// class GradientCirclesPainter extends CustomPainter {
//   final double scrollOffset;
//
//   GradientCirclesPainter(this.scrollOffset);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..style = PaintingStyle.fill;
//
//     // First circle
//     paint.shader = RadialGradient(
//       center: Alignment(1, 1.2), // Center the gradient within the circle
//       radius: 0.65,
//       colors: [
//         Colors.white.withOpacity(0.9),
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//       ],
//       stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
//     ).createShader(
//       Rect.fromCircle(
//         center: Offset(-size.width * 0.25, -size.height * 0.75),
//         radius: size.width * 0.85,
//       ),
//     );
//
//     // Draw the first circle (partially visible on top left)
//     canvas.drawCircle(
//       Offset(-size.width * 0.25 - scrollOffset * 0.5, -size.height * 0.75 - scrollOffset * 0.5),
//       size.width * 0.85,
//       paint,
//     );
//
//     // Second circle
//     paint.shader = RadialGradient(
//       center: Alignment(-1.2, -0.5), // Center the gradient within the circle
//       radius: 0.65,
//       colors: [
//         Colors.white,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//         Colors.black,
//       ],
//       stops: [0.0, 0.6, 0.8, 0.8, 0.8, 0.99, 1.0],
//     ).createShader(
//       Rect.fromCircle(
//         center: Offset(size.width * 1.25, size.height * 1.75),
//         radius: size.width * 0.85,
//       ),
//     );
//
//     // Draw the second circle (partially visible on bottom right)
//     //   canvas.drawCircle(
//     //     Offset(size.width * 1.25 + scrollOffset * 0.5, size.height * 1.75 + scrollOffset * 0.1),
//     //     size.width * 0.5,
//     //     paint,
//     //   );
//     // }
//     // Draw the second circle (partially visible on bottom right)
//     canvas.drawCircle(
//       Offset(size.width * 0.85 + scrollOffset * 0.1, size.height * 0.9 + scrollOffset * 0.5),
//       size.width * 0.5,
//       paint,
//     );
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true; // Repaint when scrollOffset changes
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final ScrollController _scrollController = ScrollController();
//   double _scrollOffset = 0.0;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _scrollController.addListener(() {
//       setState(() {
//         _scrollOffset = _scrollController.offset;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         // title: const Text(
//         //   'Mohamed Shabeen Ahamed',
//         //   style: TextStyle(color: Colors.black),
//         // ),
//         // title: logo(child: Spacer()),
//         title: logo(
//             child: SizedBox(
//               height: 20,
//               width: 20,
//             ),
//             height: 10),
//         backgroundColor: Colors.white.withOpacity(0.8),
//         elevation: 65,
//         shadowColor: Colors.blue[800],
//         centerTitle: true,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//       body: CustomPaint(
//         painter: GradientCirclesPainter(_scrollOffset),
//         child: SingleChildScrollView(
//           controller: _scrollController,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 'FLUTTER DEVELOPER',
//                 style: GoogleFonts.poppins(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white54,
//                   letterSpacing: 2,
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               GlassMorphism(
//                 child: Card(
//                   color: Colors.transparent,
//                   elevation: 0,
//                   child: Column(
//                     children: [
//                       const ProfileSection(),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 40),
//               ProjectsSection(scrollController: _scrollController),
//               const SizedBox(height: 40),
//               const ContactSection(),
//               const SizedBox(height: 40),
//               const Text(
//                 '© 2024 Mohamed Shabeen Ahamed',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileSection extends StatelessWidget {
//   const ProfileSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Card(
//           color: Colors.transparent,
//           elevation: 0,
//           child: Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Column(
//               children: [
//                 Transform.rotate(
//                   angle: 45,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: const Color(0xFF092549),
//                     ),
//                     child: Transform.rotate(
//                       angle: 45,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: AnimatedNeumorphicContainer(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Transform.rotate(
//                                 angle: 45.1,
//                                 child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(15),
//                                       color: const Color(0xFF092549),
//                                     ),
//                                     child:
//                                     // SizedBox(
//                                     //   height: 50,
//                                     //   width: 50,
//                                     // ),
//                                     Transform.rotate(
//                                       angle: 3.15,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(15),
//                                         child: Container(
//                                           height: 50,
//                                           width: 50,
//                                           child: Image.network('https://www.w3schools.com/howto/img_avatar.png'
//                                             // src
//                                             // NetworkImage('https://www.w3schools.com/howto/img_avatar.png'),
//                                           ),
//                                         ),
//                                       ),
//                                     )),
//                               ),
//                             )
//                           // CircleAvatar(
//                           //   radius: 60,
//                           //   backgroundImage: NetworkImage('https://www.w3schools.com/howto/img_avatar.png'),
//                           // ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Mohamed Shabeen Ahamed',
//                   style: GoogleFonts.poppins(
//                     fontSize: 40,
//                     fontWeight: FontWeight.w300,
//                     color: Colors.white70,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: 10),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.0),
//           child: Text(
//             'I am a passionate Flutter developer with experience in building cross-platform mobile applications. '
//                 'I focus on creating smooth, responsive, and user-friendly interfaces.',
//             style: GoogleFonts.poppins(fontSize: 16, color: Colors.white54),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class ProjectsSection extends StatelessWidget {
//   final ScrollController scrollController;
//
//   const ProjectsSection({super.key, required this.scrollController});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Card(
//         color: const Color(0xFFE0E5EC),
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Projects',
//                 style: GoogleFonts.poppins(fontSize: 28, color: Colors.black87),
//               ),
//               const SizedBox(height: 20),
//               Wrap(
//                 spacing: 20,
//                 runSpacing: 20,
//                 children: [
//                   ProjectCard(
//                     title: 'Flutter E-commerce App',
//                     description: 'A fully-featured e-commerce application built with Flutter, providing a seamless shopping experience.',
//                     link: 'https://github.com/johndoe/flutter-ecommerce',
//                     scrollController: scrollController,
//                   ),
//                   ProjectCard(
//                     title: 'Flutter Social Media App',
//                     description: 'A social media application that allows users to connect, share updates, and communicate in real-time.',
//                     link: 'https://github.com/johndoe/flutter-social',
//                     scrollController: scrollController,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ProjectCard extends StatefulWidget {
//   final String title;
//   final String description;
//   final String link;
//   final ScrollController scrollController;
//
//   const ProjectCard({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.link,
//     required this.scrollController,
//   });
//
//   @override
//   _ProjectCardState createState() => _ProjectCardState();
// }
//
// class _ProjectCardState extends State<ProjectCard> {
//   late double scale;
//
//   @override
//   void initState() {
//     super.initState();
//     scale = 0.75;
//
//     widget.scrollController.addListener(() {
//       final scrollPosition = widget.scrollController.position.pixels;
//       final screenHeight = MediaQuery.of(context).size.height;
//       final cardPosition = context.findRenderObject()!.getTransformTo(null).getTranslation().y;
//
//       setState(() {
//         if (cardPosition < scrollPosition + screenHeight && cardPosition > scrollPosition) {
//           scale = 0.9;
//         } else {
//           scale = 1.0;
//         }
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedScale(
//       scale: scale,
//       duration: const Duration(milliseconds: 300),
//       child: AnimatedNeumorphicContainer(
//         child: Container(
//           width: 300,
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 widget.title,
//                 style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 widget.description,
//                 style: const TextStyle(fontSize: 16, color: Colors.black54),
//               ),
//               const SizedBox(height: 10),
//               GestureDetector(
//                 onTap: () => launch(widget.link),
//                 child: const Text(
//                   'View on GitHub',
//                   style: TextStyle(color: Colors.blue, fontSize: 16),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GlassMorphism(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text(
//               'Contact Me',
//               style: GoogleFonts.poppins(fontSize: 28, color: Colors.white54),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Email: johndoe@example.com',
//               style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
//             ),
//             SizedBox(height: 5),
//             Text(
//               'LinkedIn: linkedin.com/in/johndoe',
//               style: GoogleFonts.poppins(fontSize: 18, color: Colors.white54),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AnimatedNeumorphicContainer extends StatefulWidget {
//   final Widget child;
//   final double borderRadius;
//   final double depth;
//   final Duration duration;
//
//   AnimatedNeumorphicContainer({
//     super.key,
//     required this.child,
//     this.borderRadius = 15.0,
//     this.depth = 10.0,
//     this.duration = const Duration(milliseconds: 300),
//   });
//
//   @override
//   _AnimatedNeumorphicContainerState createState() => _AnimatedNeumorphicContainerState();
// }
//
// class _AnimatedNeumorphicContainerState extends State<AnimatedNeumorphicContainer> {
//   bool _isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) {
//         setState(() {
//           _isHovered = true;
//         });
//       },
//       onExit: (_) {
//         setState(() {
//           _isHovered = false;
//         });
//       },
//       child: AnimatedContainer(
//         duration: widget.duration,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(widget.borderRadius),
//           color: const Color(0xFFE0E5EC),
//           boxShadow: [
//             BoxShadow(
//               blurRadius: widget.depth,
//               offset: Offset(-widget.depth, -widget.depth),
//               color: _isHovered ? Colors.white : Colors.grey[300]!,
//             ),
//             BoxShadow(
//               blurRadius: widget.depth,
//               offset: Offset(widget.depth, widget.depth),
//               color: _isHovered ? Colors.grey[400]! : const Color(0xFFA3B1C6),
//             ),
//           ],
//         ),
//         child: widget.child,
//       ),
//     );
//   }
// }
