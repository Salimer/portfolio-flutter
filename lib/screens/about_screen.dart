import 'package:flutter/material.dart';
import '../core/widgets/custom_app_bar.dart';
import '../core/widgets/custom_drawer.dart';
import '../core/widgets/footer.dart';
import '../core/widgets/responsive_layout.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: AboutContentMobile(),
      tabletBody: AboutContentDesktop(),
      desktopBody: AboutContentDesktop(),
    );
  }
}

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: AboutContent(),
      bottomNavigationBar: const Footer(),
    );
  }
}

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: AboutContent(),
      bottomNavigationBar: const Footer(),
    );
  }
}

class AboutContent extends StatelessWidget {
  final skills = {
    'Dart & Flutter': 0.8,
    'Firebase': 0.7,
    'Supabase': 0.6,
    'Riverpod': 0.7,
  };

  AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile_picture.png'),
            ),
            const SizedBox(height: 20),
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            const Text(
              'I am Salim Bamahfoodh, a passionate mobile developer specializing in Flutter. I enjoy building applications that make a difference.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Skills',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            Column(
              children: skills.entries.map((entry) {
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(entry.key),
                    ),
                    LinearProgressIndicator(value: entry.value),
                    const SizedBox(height: 10),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}