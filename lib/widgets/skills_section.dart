import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  // <<<--- REPLACE with your skills
  final Map<String, List<String>> skillsByCategory = const {
    'Languages': ['Dart', 'Python', 'JavaScript', 'HTML/CSS'],
    'Frameworks/Libraries': ['Flutter', 'Provider', 'Bloc', 'GetX', 'Node.js', 'React (Basic)'],
    'Tools & Platforms': ['Git', 'Docker', 'Firebase', 'GitHub Actions', 'VS Code', 'Android Studio', 'IDX'],
    'Databases': ['SQLite', 'Firebase Firestore', 'PostgreSQL (Basic)'],
    'Concepts': ['State Management', 'REST APIs', 'Agile/Scrum', 'CI/CD', 'Testing', 'UI/UX Principles'],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Skills'),
        Wrap( // Use Wrap for responsiveness
          spacing: 10.0, // Horizontal space between chips
          runSpacing: 8.0, // Vertical space between lines of chips
          children: skillsByCategory.entries.expand((entry) {
            // Add category title chip (optional)
            // List<Widget> categoryWidgets = [
            //    Chip(
            //      label: Text(entry.key, style: TextStyle(fontWeight: FontWeight.bold, color: GruvboxDark.bg)),
            //      backgroundColor: GruvboxDark.brightYellow,
            //      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            //    )
            // ];
            List<Widget> skillChips = entry.value.map((skill) => Chip(
              label: Text(skill),
              backgroundColor: GruvboxDark.bg2,
              labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: GruvboxDark.fg),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              side: BorderSide.none,
            )).toList();
            // return categoryWidgets + skillChips; // Uncomment if using category chips
             return skillChips; // Return only skill chips
          }).toList(),
        ),
      ],
    );
  }
}