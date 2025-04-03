import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart'; // For colors

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Experience'),
        _buildExperienceItem(
          context,
          role: 'Software Developer', // <<<--- REPLACE
          company: 'Tech Solutions Inc.', // <<<--- REPLACE
          period: 'Jan 2022 - Present', // <<<--- REPLACE
          description: [ // <<<--- REPLACE
            'Developed and maintained cross-platform mobile applications using Flutter.',
            'Collaborated with UI/UX designers to implement pixel-perfect interfaces.',
            'Integrated RESTful APIs and managed application state effectively.',
            'Wrote unit and integration tests to ensure code quality.',
          ],
        ),
        _buildExperienceItem(
          context,
          role: 'Junior Developer', // <<<--- REPLACE
          company: 'Startup Innovations', // <<<--- REPLACE
          period: 'Jun 2020 - Dec 2021', // <<<--- REPLACE
          description: [ // <<<--- REPLACE
            'Assisted senior developers in building web and mobile features.',
            'Participated in code reviews and agile development processes.',
            'Fixed bugs and improved application performance.',
          ],
        ),
        // Add more _buildExperienceItem widgets for other roles
      ],
    );
  }

  Widget _buildExperienceItem(BuildContext context, {
    required String role,
    required String company,
    required String period,
    required List<String> description,
  }) {
    return Card( // Use Card for better visual separation
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              role,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GruvboxDark.brightAqua),
            ),
            const SizedBox(height: 4),
            Text(
              '$company • $period',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GruvboxDark.fg3),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: description.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text('• ', style: TextStyle(color: GruvboxDark.yellow)), // Bullet point
                     Expanded(child: Text(item, style: Theme.of(context).textTheme.bodyMedium)),
                   ],
                 ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}