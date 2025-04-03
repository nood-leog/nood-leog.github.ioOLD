import 'package:flutter/material.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Optional: Profile Picture
        // CircleAvatar(
        //   radius: 50,
        //   backgroundColor: GruvboxDark.bg3,
        //   // backgroundImage: AssetImage('assets/images/profile.jpg'), // Add your image to assets
        // ),
        // SizedBox(height: 20),
        Text(
          'Your Name', // <<<--- REPLACE
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: GruvboxDark.fg,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Software Developer | Flutter Enthusiast | Lifelong Learner', // <<<--- REPLACE
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: GruvboxDark.aqua, // Or another color
          ),
        ),
         const SizedBox(height: 16),
         Text(
           'Welcome to my personal corner of the web. Here you can find information about my work, projects, and how to get in touch.', // <<<--- REPLACE
           style: Theme.of(context).textTheme.bodyLarge?.copyWith(
             color: GruvboxDark.fg2,
           ),
         ),
      ],
    );
  }
}