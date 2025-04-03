import 'package:flutter/material.dart';
//import 'package:nooddev/theme/gruvbox_theme.dart'; // For colors if needed directly
import 'package:nooddev/widgets/about_section.dart';
import 'package:nooddev/widgets/contact_section.dart';
import 'package:nooddev/widgets/experience_section.dart';
import 'package:nooddev/widgets/footer_section.dart';
import 'package:nooddev/widgets/hero_section.dart';
import 'package:nooddev/widgets/projects_section.dart';
import 'package:nooddev/widgets/skills_section.dart'; // We will create these widgets

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for responsive adjustments if needed later
    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // Optional AppBar if you want one
      // appBar: AppBar(
      //   title: Text('Your Name // Developer'), // Customize
      //   centerTitle: true,
      // ),
      body: Center( // Center the content column horizontally
        child: ConstrainedBox( // Limit the maximum width for readability on large screens
           constraints: const BoxConstraints(maxWidth: 900),
           child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const HeroSection(),
                  const SizedBox(height: 40),
                  const AboutSection(),
                  const SizedBox(height: 40),
                  const ExperienceSection(),
                  const SizedBox(height: 40),
                  const SkillsSection(),
                  const SizedBox(height: 40),
                  const ProjectsSection(),
                  // Add Education Section if needed
                  // const SizedBox(height: 40),
                  // const EducationSection(),
                  const SizedBox(height: 40),
                  const ContactSection(),
                  const SizedBox(height: 50),
                  const FooterSection(),
                ],
              ),
            ),
         ),
      ),
    );
  }
}