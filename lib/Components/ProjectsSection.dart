import 'package:flutter/material.dart';
import 'package:portfolioo/GlassMorphism.dart';
import 'package:portfolioo/ThemeManager.dart';

import 'ProjectCard.dart';

class ProjectsSection extends StatelessWidget {
  final ScrollController scrollController;

  const ProjectsSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GlassMorphism(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          // shadowColor:  Theme.of(context).customGradientColors.secondaryAccentColor.computeLuminance() > 0.5
          //   ? Colors.black54
          //   : Colors.white54,
          decoration: BoxDecoration(
              color: Theme.of(context).customGradientColors.secondaryAccentColor.withOpacity(0.5),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).customGradientColors.secondaryAccentColor.computeLuminance() > 0.5 ? Colors.black54 : Colors.white54,
                ),
              ],
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Projects',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).customGradientColors.secondaryAccentColor,

                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        ProjectCard(
                          title: 'FridgeMate - A Smart Food Inventory App',
                          description: 'FridgeMate is an App, which can log product and its expiration date using AI, notify you before an item expires, has smart shopping list built-in, create recipes based on the items you have, and much more.',
                          link: 'https://ma9823k@dev.azure.com/ma9823k/FridgeMate/_git/FridgeMate',
                          scrollController: scrollController,
                        ),
                        ProjectCard(
                          title: 'Yenedify - Attendance Tracking',
                          description: 'Yenedify is a full-fledged attendance tracking system, which uses dynamic QR, serial number, location-proximity tracking, to ensure integrity of a students attendance.',
                          link: 'https://github.com/Shabeen-ahmed/yenedify.git',
                          scrollController: scrollController,
                        ),
                        ProjectCard(
                          title: 'Nymble Labs - Pet Adoption Application',
                          description: 'A pet adoption app which supports themes enabled by the use of providers. It is a simple app focusing only on UI which consists features such as searching and categorization of pets.',
                          link: 'https://github.com/Shabeen-ahmed/Pet_Adoption.git',
                          scrollController: scrollController,
                        ),
                        ProjectCard(
                          title: 'ZapChat - A Community Messaging Application',
                          description: 'A simple community messaging app which uses a random code to get into a forum.',
                          link: 'https://github.com/Shabeen-ahmed/zapchat.git',
                          scrollController: scrollController,
                        ),
                        ProjectCard(
                          title: 'Flutter Social Media App',
                          description: 'A social media application that allows users to connect, share updates, and communicate in real-time.',
                          link: 'https://github.com/Shabeen-ahmed/flutter-social.git',
                          scrollController: scrollController,
                        ),
                        ProjectCard(
                          title: 'My Portfolio',
                          description: 'Extras - You can find the code used to create this portfolio in my github.',
                          link: 'https://github.com/Shabeen-ahmed/Portfolio.git',
                          scrollController: scrollController,
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
