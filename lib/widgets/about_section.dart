import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('About Me'),
        Text(
          '''Highly motivated and detail-oriented Software Developer with X years of experience in [Your Main Technology, e.g., cross-platform mobile development using Flutter]. Passionate about creating clean, efficient, and user-friendly applications.

I enjoy tackling complex problems and collaborating with teams to build innovative solutions. Always eager to learn new technologies and improve my skills. Currently exploring [mention something you are learning, e.g., backend development with Dart Frog or native Android/iOS].''', // <<<--- REPLACE with your bio
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}