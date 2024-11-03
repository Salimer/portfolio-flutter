import 'package:flutter/material.dart';

import '../core/models/project.dart';
import '../core/widgets/footer.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailsScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: project.title,
              child: Image.asset(project.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                project.details,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            // Add more details or links here
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}