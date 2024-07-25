import 'package:flutter/material.dart';
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
    return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: GestureDetector(
              onTap: (){
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
              child:logo(
              child: const SizedBox(
                height: 20,
                width: 20,
              ),
              height: 10,
              context: context)),
          // backgroundColor: Colors.white.withOpacity(0.8),
          backgroundColor: Theme.of(context).customGradientColors.secondaryAccentColor.withOpacity(0.8),
          elevation: 65,
          // shadowColor: Colors.blue[800],
          shadowColor: Theme.of(context).customGradientColors.accentColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                const GlassMorphism(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: ProfileSection(),
                  ),
                ),
                const SizedBox(height: 40),
                ProjectsSection(scrollController: _scrollController),
                const SizedBox(height: 40),
                const ContactSection(),
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
