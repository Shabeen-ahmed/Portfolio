import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ThemeManager.dart';
import 'AnimatedNeumorphicContainer.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String link;
  final ScrollController scrollController;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.link,
    required this.scrollController,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  late double scale;

  @override
  void initState() {
    super.initState();
    scale = 0.75;

    widget.scrollController.addListener(() {
      final scrollPosition = widget.scrollController.position.pixels;
      final screenHeight = MediaQuery.of(context).size.height;
      final cardPosition = context.findRenderObject()!.getTransformTo(null).getTranslation().y;

      setState(() {
        if (cardPosition < scrollPosition + screenHeight && cardPosition > scrollPosition) {
          scale = 0.9;
        } else {
          scale = 1.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: scale,
      duration: const Duration(milliseconds: 300),
      child: AnimatedNeumorphicContainer(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 5),
              Text(
                widget.description,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => launch(widget.link),
                child: Text(
                  'View on GitHub',
                  style: TextStyle(
                      color: Provider.of<ThemeProvider>(context, listen: false).isDarkTheme
                          ? Theme.of(context).customGradientColors.accentColor
                          : Colors.blue,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
