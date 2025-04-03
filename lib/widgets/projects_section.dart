import 'package:flutter/material.dart';
import 'package:nooddev/widgets/section_title.dart';
import 'package:nooddev/theme/gruvbox_theme.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle('Projects'),
        _buildProjectItem( // <<<--- REPLACE content for each project
          context,
          title: 'Awesome Flutter App',
          description: 'A cross-platform mobile application built with Flutter demonstrating [mention key feature or technology]. Features include X, Y, and Z.',
          technologies: ['Flutter', 'Firebase Auth', 'Firestore', 'Provider'],
          url: 'https://github.com/your_username/your_repo', // Optional: Link to GitHub or live demo
        ),
        _buildProjectItem(
          context,
          title: 'Personal Portfolio Website (This one!)',
          description: 'My personal CV website built using Flutter Web and hosted on GitHub Pages. Features a custom Gruvbox Dark theme.',
          technologies: ['Flutter Web', 'Dart', 'GitHub Pages'],
          url: 'https://github.com/your_username/nooddev', // Link to this repo
        ),
         _buildProjectItem(
          context,
          title: 'Python Automation Script',
          description: 'A script to automate [describe the task]. Improves efficiency by X%.',
          technologies: ['Python', 'Pandas', 'Requests'],
          // url: null, // No link needed if it's private/local
        ),
        // Add more _buildProjectItem widgets
      ],
    );
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // Could not launch the URL (optional: show a snackbar or log error)
      print('Could not launch $urlString');
    }
  }

  Widget _buildProjectItem(BuildContext context, {
    required String title,
    required String description,
    required List<String> technologies,
    String? url,
  }) {
    return Card(
       margin: const EdgeInsets.only(bottom: 20.0),
       child: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  Flexible( // Prevents title overflow if link icon is present
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GruvboxDark.brightGreen),
                    ),
                  ),
                 if (url != null)
                   IconButton(
                     icon: const Icon(Icons.link, color: GruvboxDark.blue),
                     tooltip: 'View Project/Code',
                     onPressed: () => _launchURL(url),
                   ),
               ],
             ),
             const SizedBox(height: 8),
             Text(description, style: Theme.of(context).textTheme.bodyMedium),
             const SizedBox(height: 12),
             Wrap(
               spacing: 6.0,
               runSpacing: 4.0,
               children: technologies.map((tech) => Chip(
                 label: Text(tech),
                 backgroundColor: GruvboxDark.bg3,
                 labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: GruvboxDark.fg2),
                 padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                 visualDensity: VisualDensity.compact, // Make chips smaller
                 side: BorderSide.none,
               )).toList(),
             ),
           ],
         ),
       ),
    );
  }
}