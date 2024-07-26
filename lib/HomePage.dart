import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Components/ContactsSection.dart';
import 'Components/GradientCirclesPainter.dart';
import 'Components/ProfileSection.dart';
import 'Components/ProjectsSection.dart';
import 'Components/logo.dart';
import 'GlassMorphism.dart';
import 'ThemeManager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    // precacheImage(AssetImage('assets/images/gold.jpeg'), context);
    // precacheImage(AssetImage('assets/images/blue.jpeg'), context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: GestureDetector(
              onTap: (){
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
              child:RotatingLogo(
              child: const SizedBox(
                height: 20,
                width: 20,
              ),
              height: 10,)

          ),
          // backgroundColor: Colors.white.withOpacity(0.8),
          backgroundColor: Theme.of(context).customGradientColors.secondaryAccentColor.withOpacity(0.8),
          elevation: 65,
          // shadowColor: Colors.blue[800],
          shadowColor: Theme.of(context).customGradientColors.accentColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))),
        ),
        body: CustomPaint(
          painter: GradientCirclesPainter(_scrollOffset, context),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 GlassMorphism(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: ProfileSection(height: height, width: width,),
                  ),
                ),
                const SizedBox(height: 40),
                ProjectsSection(scrollController: _scrollController),
                const SizedBox(height: 40),
                 ContactSection(width: width,),
                const SizedBox(height: 40),
                const Text(
                  '© 2024 Mohamed Shabeen Ahamed',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
