import 'package:flutter/material.dart';

import '../core/models/project.dart';
import '../core/widgets/custom_app_bar.dart';
import '../core/widgets/custom_drawer.dart';
import '../core/widgets/footer.dart';
import '../core/widgets/responsive_layout.dart';
import 'project_details_screen.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Yemen Delivery App',
      description: 'A Flutter delivery app with real-time tracking.',
      imageUrl: 'assets/images/project1.png',
      details:
          'A Flutter delivery app for customers in Yemen with GPS address saving and real-time driver tracking.',
    ),
    Project(
      title: 'LAX Motivation App',
      description: 'An app that sends periodic affirmations.',
      imageUrl: 'assets/images/project2.png',
      details:
          'An app that sends periodic affirmations and messages to motivate users, featuring content from Dr. Sumaya Al-Nasser.',
    ),
    Project(
      title: 'Flutter Portfolio Web App',
      description: 'A responsive portfolio built with Flutter Web.',
      imageUrl: 'assets/images/project3.png',
      details:
          'A responsive portfolio website built using Flutter Web to showcase projects and skills.',
    ),
  ];

  ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: ProjectsContentMobile(projects: projects),
      tabletBody: ProjectsContentDesktop(projects: projects),
      desktopBody: ProjectsContentDesktop(projects: projects),
    );
  }
}

class ProjectsContentMobile extends StatelessWidget {
  final List<Project> projects;

  const ProjectsContentMobile({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: ProjectsContent(projects: projects, crossAxisCount: 1),
      bottomNavigationBar: const Footer(),
    );
  }
}

class ProjectsContentDesktop extends StatelessWidget {
  final List<Project> projects;

  const ProjectsContentDesktop({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ProjectsContent(projects: projects, crossAxisCount: 3),
      bottomNavigationBar: const Footer(),
    );
  }
}

class ProjectsContent extends StatelessWidget {
  final List<Project> projects;
  final int crossAxisCount;

  const ProjectsContent({super.key, required this.projects, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 1.2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        final project = projects[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProjectDetailsScreen(project: project)),
            );
          },
          child: ProjectCard(project: project),
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: project.title,
              child: Image.asset(project.imageUrl, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              project.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}